import day from 'dayjs'
import collect from 'collect.js'
import dayOOE from "../data/json_taeglich.json"
import currentOOE from "../data/json_laufend.json"
import currentNOE from "../data/noe/einsatz_aktuell.json"

export default {
    load() {
        return {
            ooe: {
                current: collect(currentOOE.einsaetze),
                day: collect(dayOOE.einsaetze).map(({ einsatz }) => ({
                    ...einsatz,
                })),
            },
            noe: {
                current: currentNOE
            }
        }
    }
}