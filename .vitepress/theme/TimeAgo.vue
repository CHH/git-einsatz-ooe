<script>
import day from './day.js'

export default {
    props: ['date'],
    computed: {
        formatted() {
            return day(this.date).fromNow()
        }
    }
}
</script>

<template>
    <span>{{ formatted }}</span>
</template>