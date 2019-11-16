<template>
    <div>
        <H1>Peaks</H1>
        {{ peaks }}<br>
        <ul>
            <li v-for="peak in peaks" v-bind:key="peak.id">
                {{ peak.id }}, {{ peak.name }}
            </li>
        </ul>
    </div>
</template>

<script>
import PeakService from "@/services/PeakService";

export default {
  name: "TodoLists",
  data() {
    return {
      peaks: null
    };
  },
  methods: {
    getPeaks() {
      PeakService.getPeaks()
        .then(
          peaks => this.peaks = peaks
        );
    }
  },
  mounted() {
    this.getPeaks();
  }
};

</script>

