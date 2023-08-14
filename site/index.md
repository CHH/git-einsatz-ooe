---
title: "Einsätze OÖ Laufend"
---

<script setup>
import { data } from './einsaetze.data.js'
</script>

<ul class="space-y-3 max-w-4xl mx-auto p-6">
    <li
        v-for="({ einsatz }) in data.ooe.current"
        :key="einsatz.num1"
    >
        <EinsatzItem :einsatz="einsatz" />
    </li>
</ul>
