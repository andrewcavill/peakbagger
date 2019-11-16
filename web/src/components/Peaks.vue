<template>
    <div>
        <b-card-group columns v-if="peaks">
            <b-card
            no-body
            v-for="peak in peaks"
            :key="peak.id"
            border-variant="primary"
            align="center"
            >
                <b-card-header header-bg-variant="primary" header-text-variant="white">
                    <b>{{ peak.name }}</b>
                </b-card-header>
                <b-card-body>
                    {{ peak.location }}, {{ peak.region.name }}
                </b-card-body>
            </b-card>
        </b-card-group>
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

