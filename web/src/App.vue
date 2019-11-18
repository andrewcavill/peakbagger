<template>
  <div id="app">
    <b-container>
      <MenuBar/>
      <router-view/>
    </b-container>
  </div>
</template>

<script>
import MenuBar from './components/MenuBar.vue'

export default {
  name: 'app',
  components: {
    MenuBar
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
</style>
