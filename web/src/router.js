import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

import Peaks from './components/Peaks.vue'
import Peak from './components/Peak.vue'

export default new VueRouter({
    routes: [
        { path: '/', name: 'Peaks', component: Peaks },
        { path: '/peaks/:peakId', name: 'Peak', component: Peak }
    ]
})