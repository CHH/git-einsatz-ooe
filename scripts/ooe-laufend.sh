curl --fail --etag-save ../downloads/ooe_laufend.etag \
    --etag-compare ../downloads/ooe_laufend.etag \
    https://cf-intranet.ooelfv.at/webext2/rss/json_laufend.txt -o ../downloads/ooe_laufend.json

jq --from-file ../downloads/ooe_laufend.json \
    --sort-keys '.einsaetze = (.einsaetze//{} | to_entries | map(.value) | sort_by(.value.einsatz.startzeit)) | del(.pubDate)' \
    > ./data/json_laufend.json

git add -A
timestamp=$(date -u)
git commit -m "OOE/Laufend: ${timestamp}" || exit 0