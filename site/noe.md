---
---

<script setup>
import { data } from './einsaetze.data.js'
</script>

<div>
    <ul>
        <li
            v-for="(einsatz, index) in data.noe.current"
            :key="index"
        >
            {{ einsatz }}
        </li>
    </ul>
</div>