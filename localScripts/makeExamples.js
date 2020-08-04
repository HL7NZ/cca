#!/usr/bin/env node
/**
 * make the Example page
 * */

let fs = require('fs');

                
let folderPath =  "/Users/davidhay/IG/cca/input/examples/"

//let outPath = igRoot + igName +  "/fsh/ig-data/input/examples/";

let outFile =  "/Users/davidhay/IG/cca/fsh/ig-data/input/pagecontent/examples.xml";   
let xml = "<div xmlns='http://www.w3.org/1999/xhtml'>"

if (fs.existsSync(folderPath)) {
    fs.readdirSync(folderPath).forEach(function(file) {
        
    
        let fullFileName = folderPath + file

        let contents = fs.readFileSync(fullFileName, {encoding: 'utf8'});
        let resource = JSON.parse(contents)

        let text;
        switch (resource.resourceType) {
            case 'PlanDefinition' :
                console.log(fullFileName)
                text = makePlanDefinition(resource)
                break;
        }

        if (text) {
           
            xml += text
          
/*
            text = "<div xmlns='http://www.w3.org/1999/xhtml'>" + text + "</div>"
            

            //TODO - this 'appending' of the original was doing a lot of weird stuff!
            let originalText = ""
            if (resource.text) {
                originalText = resource.text.div
                //console.log('orig',originalText)
            } else {
                resource.text = {};     //todo need to add other text stuff
                resource.text.status = "generated"
            }
            
            resource.text.div = text; //originalText + text;       //todo this replaces the text
            console.log(resource.text.div)

            let json = JSON.stringify(resource)
            fs.writeFileSync(fullFileName,json)

            //save a copy in the output file...
            let outFileName = outPath + file;
            console.log(outFileName)
            fs.writeFileSync(outFileName,json)
            */


        }
    })

    xml += "</div>"
    fs.writeFileSync(outFile,xml)

    

} else {
    console.log(folderPath + " not found")
}

function makePlanDefinition(pd) {

    let xml = "<div>"
    
    xml += "<a name='title'> </a>"
    xml += "<h3>" + pd.title + "</h3>"



    //a row to allow the link to the example to be shown to the right
    xml += "<div class='row'>"
    xml += "<div class='col-sm-10'>"
    xml += "<p>" + pd.description + "</p>"
    xml += "</div>"
    xml += "<div class='col-sm-2'>"
    xml += "<a href='PlanDefinition-"+pd.id+".html'>Link to example</a>"
    xml += "</div>"
    xml += "</div>"


    //regimen type
    let arRT = getExtensions(pd,"http://clinfhir.com/fhir/StructureDefinition/regimen-type")
    if (arRT.length > 0) {      //should only be one...


        console.log(arRT)
        xml += "<div><strong>Regimen type </strong>" + createCCSummary(arRT[0].valueCodeableConcept) + "</div>"
    }

    xml += "<div class='container'>"
    xml += "<div class='row'>"
    xml += "<div class='col-sm-6'>"

    //context of use
    if (pd.useContext) {
        //xml += "<a name='ctx'> </a>"
        //xml += "<h4>Use Context</h4>"
        pd.useContext.forEach(function(uc){
            let lne = "<strong>" + uc.code.code + "</strong>"
            lne += "  " + createCCSummary(uc.valueCodeableConcept)
            xml += "<div>" + lne + "</div>"
        })
        xml += "<br/>";
    }


    //support factors

    let arSF = getExtensions(pd,"http://clinfhir.com/fhir/StructureDefinition/support-factor")
    if (arSF) {
        xml += "<a name='sf'> </a>"
        xml += "<h4>Support factors</h4>"
        xml += "<table class='table'>"
        xml += "<tr><th>Factor</th><th>Value</th></tr>"
        arSF.forEach(function(sf){
            let factor = getChildExtension(sf,"factor","cc")
            let value = getChildExtension(sf,"value","cc")
            //xml += "<div>" + getCCText(factor) + ":  " + getCCText(value) + "</div>"
            xml += "<tr>";
            xml += "<td>" +  getCCText(factor) + "</td>"
            xml += "<td>" +  getCCText(value) + "</td>"
            xml += "</tr>";
        })
        xml += "</table>"
        xml += "<br/>";
    }

    
    //related artifacts
    if (pd.relatedArtifact) {
        xml += "<a name='rel'> </a>"
        xml += "<h4>Related artifacts</h4>"
        xml += "<table class='table'>"
        xml += "<tr><th>Type</th><th>Display</th><th>Url</th></tr>"

        pd.relatedArtifact.forEach(function(ra){

        xml += "<tr>";
            xml += "<td>" +  ra.type + "</td>"
            xml += "<td>" +  ra.display + "</td>"

            let link = "<a href='" + ra.url + "' target='_blank'>" + ra.url + "</a>"
            xml += "<td>" + link  + "</td>"
            xml += "</tr>";
        })
        
        xml += "</table>"
        xml += "<br/>";
    }


    //make daily schedule



    xml += "</div>";
    xml += "<div class='col-sm-6'>"


    xml += "<a name='regimen'> </a>"
    xml += "<h4>Regimen details</h4>"
    try {
        let arRegimenOptions = pd.action;     //Optional regimens
        arRegimenOptions.forEach(function(regimen){
            //this is a single regimen in this spec
            let arParts = regimen.action;       //the parts of this regimen
            arParts.forEach(function(part){
                // a single part only
                let arCycles = part.action;     //the cycles in this part
                arCycles.forEach(function(cycle,inxCycle){
                    //this is a single cycle
                    xml += "<div class='alert alert-dark'>"
                    xml += "Cycle " + (inxCycle +1)
                    xml += "  " + cycle.description
                    xml += "</div>"

                    if (cycle.timingTiming && cycle.timingTiming.repeat){

                        xml += "<div>Cycle length: " + cycle.timingTiming.repeat.duration + " " + cycle.timingTiming.repeat.durationUnit
                        xml += " Repeat:"
                        if (cycle.timingTiming.repeat.count == 1) {
                            xml += "None"
                        } else {
                            xml += cycle.timingTiming.repeat.count + " times"
                        }
                        xml += "</div>"

                    }

                    xml += "<br/>"

                    let hashDay = {};    //combined actions by day

                    let arCycleActions = cycle.action;    //the individual actions within this cycle

                    arCycleActions.forEach(function(action,inxAction){
                        //a single action within the cycle

                        //look for 'timing of days
                        xml += "<div style='padding-left:8px'>Action " + (inxAction+1); // + "</div>"
                        xml += "  " + action.description
                        xml += "</div>"

                        let arTOD = getExtensions(action,"http://clinfhir.com/fhir/StructureDefinition/timing-of-days")
                        if (arTOD){
                            arTOD.forEach(function(admin){
                                let day = getChildExtension(admin,"day","integer")
                                let instructions = getChildExtension(admin,"instructions","string")
                                xml += "<div style='padding-left:16px'>Day " + day +  "  <em>" +instructions+ "</em></div>"
                                hashDay[day] = hashDay[day] || []
                                hashDay[day].push({description : action.description,instructions:instructions,day:day})

                            })
                        }
                        xml += "<br/>"                        
                    })

                    //render the day summary
                    //conver to array

                    let arDaySummary = []
                    Object.keys(hashDay).forEach(function(key) {                       
                        arDaySummary.push(hashDay[key]);
                    });
                    //and sort
                    arDaySummary.sort(function(a,b){
                        if (a.day > b.day) {
                            return 1
                        } else {
                            return -1
                        }
                    })

                    //and render
                    //xml += "<a name='daysum'> </a>"
                    xml += "<strong>Summary of administration by day</strong>"
                    arDaySummary.forEach(function(arItem){


                        xml += "<div>Day " + arItem[0].day + "</div>";

                        arItem.forEach(function(item){
                            xml += "<div style='padding-left:8px'>";
                            xml += item.description;
                            xml += "</div>";

                            xml += "<div style='padding-left:16px'>";
                            xml += "<em>" + item.instructions + "</em>";
                            xml += "</div>";

                        })
                    })


                })
            })
        })
    } catch (ex) {
        console.log(ex);
        process.exit();
    }

    xml += "</div>" //the col
    xml += "</div>" //the row
    xml += "</div>"     //the container
    xml += "</div>"
    return xml;


}


//get all the extensions with this url in this element. Returns an array of extensions
function getExtensions(element,url) {
    let ar = []
    if (element.extension) {
        
        element.extension.forEach(function(ext){
            if (ext.url == url) {
                ar.push(ext)
            }
        })
        return ar
    }
}

//return the child value in a complex extension 
function getChildExtension(ext,key,type) {
    let value;
    if (ext.extension) {
        ext.extension.forEach(function(child){
            if (child.url == key) {
                switch (type) {
                    case "integer" :
                        value = child.valueInteger;
                        break;
                    
                    case "string" :
                        value = child.valueString;
                        break;
                    case "cc" :
                        value = child.valueCodeableConcept;
                        
                    break;
                }
            }
        })
    }
    return value;
}


//create a 1 line display of CC. If there is text, then just retrun that - otherwise make up samething from the coded elements
function createCCSummary(cc) {
    let display = ""
    if (cc) {
        if (cc.text) {
            return cc.text;
            //display = cc.text + " "
        }
        if (cc.coding && cc.coding.length >= 0) {
            display += cc.coding[0].display + " " + cc.coding[0].system + " " + cc.coding[0].code 
        }
    }
    return display
}

function getCCText(cc) {
    
    if (cc) {
        if (cc.text) {
            return cc.text
        }
        if (cc.coding && cc.coding.length >= 0) {
           return cc.coding[0].display 
        }
    }
    return display
}

//let outFile = "fsh/ig-data/input/pagecontent/terminology.xml";

function createDisplay(title,text,tag) {
    rtn = "";
    if (text) {
        if (tag) {
            
        }
    }
     
}
