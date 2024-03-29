curl --fail --etag-save ./downloads/ooe_laufend.etag \
    --etag-compare ./downloads/ooe_laufend.etag \
    https://cf-einsaetze.ooelfv.at/webext2/rss/json_laufend.txt -o ./downloads/ooe_laufend.json

test -f ./downloads/ooe_laufend.etag && cat ./downloads/ooe_laufend.json | jq --sort-keys '.einsaetze = (.einsaetze//{} | to_entries | map(.value) | sort_by(.value.einsatz.startzeit)) | del(.pubDate)' \
    > ./data/json_laufend.json
