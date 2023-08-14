import dayOOE from "../data/json_taeglich.json"
import currentOOE from "../data/json_laufend.json"
import currentNOE from "../data/noe/einsatz_aktuell.json"

export default {
    load() {
        return {
            ooe: {
                current: currentOOE,
                day: dayOOE,
            },
            noe: {
                current: currentNOE
            }
        }
    }
}