---
title: "Einsätze OÖ"
---

<script setup>
import { data } from './einsaetze.data.js'
</script>

<div>
    <ul>
        <li
            v-for="({ einsatz }) in data.ooe.current.einsaetze"
        >
            <div>{{ einsatz }}</div>
            <h2>{{ einsatz.einsatztyp.text }}</h2>
        </li>
    </ul>
</div>
<ul>
    <li
        v-for="({ einsatz }) in data.ooe.day.einsaetze"
    >
        <div>{{ einsatz }}</div>
        <h2>{{ einsatz.einsatztyp.text }}</h2>
    </li>
</ul>