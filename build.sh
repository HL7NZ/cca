
# JAVA -jar input-cache/org.hl7.fhir.publisher.jar -ig .
# https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar

# in which case, you add a parameter -publish {url] which is the URL where the IG will be published
# https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Local.20use.20vs.2E.20final.20publication
# JAVA -jar input-cache/publisher.jar -ig . -packages .   # -tx n/a

JAVA -jar ../scripts/publisher.jar -no-sushi -ig . 