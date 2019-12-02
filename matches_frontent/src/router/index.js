import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import matches from '@/components/matches.vue'
import matchesedit from '@/components/matchesedit.vue'
import matchesdelete from '@/components/matchesdelete.vue'
import matchessearch from '@/components/matchessearch.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/matches/:id',
    name: 'matches',
    component: matches
  },
  {
    path: '/matches/:id/edit',
    name: 'matchesedit',
    component: matchesedit
  },
  {
    path: '/matches/:id/delete',
    name: 'matchesdelete',
    component: matchesdelete
  },
  {
    path: '/matches/search/:team1',
    name: 'matchessearch',
    component: matchessearch
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
