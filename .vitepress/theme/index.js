// https://vitepress.dev/guide/custom-theme
import Layout from './Layout.vue'
import TimeAgo from './TimeAgo.vue'
import './style.css'
import day from './day.js'
import collect from 'collect.js'

export default {
  Layout,
  TimeAgo,
  enhanceApp({ app, router, siteData }) {
    app.component("TimeAgo", TimeAgo)
    app.config.globalProperties.$day = day
    app.config.globalProperties.$collect = collect
  }
}
