import Vue from 'vue'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', () => {
	const el = "#hello"

  const props = JSON.parse($("#hello")[0].getAttribute('data'))
  const app = new Vue({
    el: el,
    render: h => h(App, { props })
  })
})
