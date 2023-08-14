---
title: "Einsätze OÖ Laufend"
---

<script setup>
import { data } from './einsaetze.data.js'
</script>

<ul>
    <li
        v-for="({ einsatz }) in data.ooe.current"
        :key="einsatz.num1"
    >
        <div>{{ einsatz }}</div>
        <h2>{{ einsatz.einsatztyp.text }}</h2>
    </li>
</ul>
