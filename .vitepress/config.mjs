import { defineConfig } from 'vitepress'
import FullReload from 'vite-plugin-full-reload'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Einsätze",
  description: "A VitePress Site",
  srcDir: './site',
  vite: {
    plugins: [
      FullReload([
        // '.vitepress/theme/**/*',
        'data/**/*',
      ])
    ]
  }
})
