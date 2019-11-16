<template>
  <div id="app">
    <b-container>
      <MenuBar/>
      <Peaks/>
    </b-container>
  </div>
</template>

<script>
import Peaks from './components/Peaks.vue'
import MenuBar from './components/MenuBar.vue'

export default {
  name: 'app',
  components: {
    Peaks,
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
