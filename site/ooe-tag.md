---
title: "Einsätze OÖ"
---

<script setup>
import { data } from './einsaetze.data.js'
import { computed, ref, watch } from 'vue'

const url = new URL(document.location.href)

const bezirk = ref(url.searchParams.get('bezirk'))

watch(bezirk, (value) => {
    url.searchParams.set('bezirk', value)
    history.replaceState({}, `Bezirk ${value}`, url)
})

const einsaetze = computed(() => {
    const items = data.ooe.day

    if (bezirk.value) {
        return items.filter((item) => item.einsatzort.startsWith(bezirk.value))
    }

    return items
})
</script>

<div class="mx-auto max-w-4xl p-6">
    <div class="flex items-center py-2 space-x-6">
        <span>Filter:</span>
        <div class="flex items-center space-x-1 border rounded-xl px-3 py-2">
            <span>Bezirk:</span>
            <select v-model="bezirk">
                <option value="">Alle Bezirke</option>
                <option value="BR">Braunau</option>
                <option value="EF">Eferding</option>
                <option value="FR">Freistadt</option>
                <option value="GM">Gmunden</option>
                <option value="GR">Grieskirchen</option>
                <option value="KI">Kirchdorf</option>
                <option value="L">Linz</option>
                <option value="LL">Linz-Land</option>
                <option value="PE">Perg</option>
                <option value="RI">Ried</option>
                <option value="RO">Rohrbach</option>
                <option value="SD">Schärding</option>
                <option value="SR">Steyr</option>
                <option value="SE">Steyr-Land</option>
                <option value="UU">Urfahr-Umgebung</option>
                <option value="VB">Vöcklabruck</option>
                <option value="WE">Wels</option>
                <option value="WL">Wels-Land</option>
            </select>
        </div>
    </div>
    <ul class="space-y-3">
        <li
            v-for="(einsatz) in einsaetze"
            :key="einsatz.num1"
        >
            <EinsatzItem :einsatz="einsatz"/>
        </li>
    </ul>
</div>
