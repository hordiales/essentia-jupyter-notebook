FILENAME=$1
JSON_OUTPUT=$2
JSON_MIR_FORMAT='json' # json basic format (plain)
#JSON_MIR_FORMAT='jsonld' # json compatible con Audio Commons Ontology

# example ./extract_features.sh dubstep.wav dubstep.json

docker run -it --rm -v $PWD:/tmp mtgupf/ac-audio-extractor:v2 -i /tmp/$FILENAME -o /tmp/$JSON_OUTPUT -smt -f $JSON_MIR_FORMAT

