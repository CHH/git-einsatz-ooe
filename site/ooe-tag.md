---
title: "Einsätze OÖ"
---

# Einsätze Oberösterreich

<script setup>
import { data } from './einsaetze.data.js'
</script>

<ul>
    <li
        v-for="(einsatz) in data.ooe.day"
        :key="einsatz.num1"
    >
        <div>{{ einsatz.einsatzort }}</div>
        <h2>{{ einsatz.einsatztyp.text }}</h2>
        <div>
            {{ $day(einsatz.startzeit).format('lll') }}
        </div>
        <div v-if="einsatz.inzeit">
            {{ $day(einsatz.inzeit).format('lll') }}
        </div>
        <div v-if="einsatz.inzeit">
            {{ $day.duration($day(einsatz.inzeit).diff($day(einsatz.startzeit))).locale('de').humanize() }}
        </div>
    </li>
</ul>

<pre><code>{{ data.ooe.day }}</code></pre>