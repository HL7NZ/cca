#!/usr/bin/env node

/**
Create a logical model suitable for the IG builder

 */
let fs = require('fs');
let syncRequest = require('../../scripts/node_modules/sync-request');

let serverRoot = "http://home.clinfhir.com:8030/baseDstu3/";   //the location of the LMs
let domain = "http://hl7.org.nz/fhir/cca/"

//the models to export. 
let arModels = ['CancerRegimens'];

arModels.forEach(function(modelId){
    makeModel(modelId)
})

function makeModel(modelId) {
    console.log(modelId)
    let LMID = modelId + "LM";      //Add LM to the ID to distinguish it from the profiles...
    let outFile = "../fsh/ig-data/input/models/StructureDefinition-" + LMID + '.json'

    //the detail page for the LM than includes mappings
    let detailOutFile = "../fsh/ig-data/input/pagecontent/" + LMID + ".xml"
    let arDetail = [];
    arDetail.push("<div xmlns='http://www.w3.org/1999/xhtml'>")
    arDetail.push("<table class='table table-bordered table-hover table-sm'>")
    arDetail.push("<tr><th>Name</th><th>Card.</th><th>Type</th><th>Description</th><th>Mapping</th></tr>")

    //let outFile = "../input/models/StructureDefinition-" + LMID + '.json'

    let options = {};
    options.headers = {"content-type": "application/json+fhir"}
    options.timeout = 20000;        //20 seconds
    
    let url = serverRoot + "StructureDefinition/"+modelId;
    console.log(url)
    let response = syncRequest('GET', url, options);
    console.log(response.statusCode)
    if (response.statusCode !== 200 ) {
        console.log('  error' + response.body.toString())
    } else {
        let model = JSON.parse(response.body.toString())
        let newModel = JSON.parse(JSON.stringify(model));
        delete newModel.extension;
        delete newModel.snapshot;
        delete newModel.identifier;
        delete newModel.keyword;
        newModel.description = model.description || model.purpose;
        newModel.id = LMID;
        newModel.url = domain + "StructureDefinition/" + LMID;
        newModel.name = LMID
        newModel.title =  LMID;
        newModel.mapping = [{identity:'fhir',name:'FHIR artifacts'}]
        newModel.differential = {element:[]}
    
    
        model.snapshot.element.forEach(function(ed,inx){
            if (inx ==0) {
                delete ed.label;
            }
            delete ed.extension

            if (ed.mapping) {
                ed.mapping.forEach(function(map){
                    if (map.identity == 'fhir' && map.map) {
                        //the LM places the comment on the same line as the map due to historical fhir version support
                        let m = map.map.replace('|', " \n")

                        //let ar = map.map.split('|')
                        //replace the mappping element, splitting out the map and the comment
                        //ed.mapping = ed.mapping || []
                        ed.mapping = [{identity:'fhir',map:m}]
                    }
                })
            }

            //ed.mapping = [{identity:"fhir",map: 'this is a map'}]
            newModel.differential.element.push(ed)

            //now write the details page...
            arDetail.push("<tr>");
            arDetail.push("</tr>");


        })

        fs.writeFileSync(outFile,JSON.stringify(newModel))
        console.log("Write: " + outFile)
/*
        let detailFile =  arDetail.join('\n');
        fs.writeFileSync(detailOutFile,detailFile)
        console.log("Write: " + detailOutFile)
*/
    }
}

