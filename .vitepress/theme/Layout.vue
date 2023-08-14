<script setup>
import { useData } from 'vitepress'

// https://vitepress.dev/reference/runtime-api#usedata
const { site, frontmatter } = useData()
</script>

<template>
  <header class="m-6 sticky top-3">
    <nav class="flex bg-white bg-opacity-50 p-3 rounded-xl shadow-lg backdrop-blur-lg ">
      <h1 class="mr-3 font-bold">
        <a href="/index.html">{{ site.title }}</a>
      </h1>

      <ul class="flex space-x-3">
        <li><a href="/ooe.html">OÖ</a></li>
        <li><a href="/noe.html">NÖ</a></li>
      </ul>
    </nav>
  </header>

  <Content />
</template>
