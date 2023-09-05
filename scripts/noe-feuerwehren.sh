curl --etag-save ./downloads/noe_feuerwehren.etag \
    --etag-compare ./downloads/noe_feuerwehren.etag \
    https://www.feuerwehr-krems.at/codepages/wastl/wastlmain/Land_FFimEinsatz.asp -o ./downloads/noe_feuerwehren.html

pup -f ./downloads/noe_feuerwehren.html 'table tr json{}' | jq -S '. | map(.children | map(.text)[1:])' > ./data/noe/einsatz_feuerwehren.json
