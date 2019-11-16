<template>
  <div id="app">
    <Peaks/>
  </div>
</template>

<script>
import Peaks from './components/Peaks.vue'

export default {
  name: 'app',
  components: {
    Peaks
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
