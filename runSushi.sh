#!/bin/bash

# clear the input folders b4 the generate. Assumes that only sushi to writing to them!
rm -f input/examples/*.json
rm -f input/extensions/*.json
rm -f input/profiles/*.json
rm -f input/vocabulary/*.json



sushi fsh -s -o .

if [[ $? -eq 0 ]]
then

# create the 2 summary files extensions.xml & profiles.xml. Saves in both /input.. & /fsh/ig-data...

echo "Creating Profiles and extensions summary pages..."
../scripts/makeProfilesAndExtensions.js cca

echo "Making terminology summary"  
../scripts/makeTerminologySummary.js cca

echo "Making API summary"
../scripts/makeCapabilityStatement.js cca

# read -p "Press any key..."

# need to update to 2 levels...
# echo "Making Text"
# localScripts/makeExamples.js cca

else 
echo
echo
echo "There were errors, so the other scripts weren't run..."
fi

