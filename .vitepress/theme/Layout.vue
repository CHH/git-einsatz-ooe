<script setup>
import { useData } from 'vitepress'

// https://vitepress.dev/reference/runtime-api#usedata
const { site, frontmatter } = useData()
</script>

<template>
  <header class="sticky top-0 z-50 flex p-3 bg-gray-100 bg-opacity-50 backdrop-blur-lg">
    <nav class="flex p-3">
      <h1 class="mr-6 font-bold">
        <a href="/index.html">{{ site.title }}</a>
      </h1>

      <ul class="flex space-x-3">
        <li><a href="/index.html">Aktuelle Einsätze</a></li>
        <li><a href="/ooe-tag.html">Tagesrückblick</a></li>
      </ul>
    </nav>
  </header>

  <Content />
</template>
