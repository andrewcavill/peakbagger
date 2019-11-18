// Vue
import Vue from 'vue'

// Routes - see router.js
import router from './router'

// Main app
import App from './App.vue'

// Axios for calling REST apis
import axios from 'axios'
import VueAxios from 'vue-axios'
Vue.use(VueAxios, axios)

// Bootstrap for styling & components
import BootstrapVue from 'bootstrap-vue'
import "bootstrap/dist/css/bootstrap.min.css"
import "bootstrap-vue/dist/bootstrap-vue.css"
Vue.use(BootstrapVue)

new Vue({
  render: h => h(App),
  router
}).$mount('#app')
