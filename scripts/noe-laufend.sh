curl --etag-save ./downloads/noe_laufend.etag \
    --etag-compare ./downloads/noe_laufend.etag \
    https://www.feuerwehr-krems.at/codepages/wastl/wastlmain/Land_EinsatzAktuell.asp -o ./downloads/noe_laufend.html

pup -f ./downloads/noe_laufend.html 'table tr json{}' | jq -S '. | map(.children | map(.text)[1:])' > ./data/noe/einsatz_aktuell.json
