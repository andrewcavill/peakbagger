<template>
    <div>

        <b-card-group deck v-if="peaks">

            <b-card
            no-body=""
            class="border-0"
            :img-src="getImageUrl(peak)"
            :img-alt="peak.name"
            img-top
            v-for="peak in peaks"
            :key="peak.id"
            >

              <b-card-body>

                <div class="name">{{ peak.name }}</div>

                <div class="location">{{ peak.location }}, {{ peak.region.name }}</div>

                <div class="elevation">750 metres</div>

                <div class="grade">
                  <b-badge variant="success" v-if="peak.grade.code == 'Easy'">Easy</b-badge>
                  <b-badge variant="warning" v-if="peak.grade.code == 'Medium'">Medium</b-badge>
                  <b-badge variant="danger" v-if="peak.grade.code == 'Hard'">Hard</b-badge>
                </div>

                <div class="row mt-3">
                  <div class="col-sm">
                    <b-button class="button" style="width:100%" href="#" size="sm">More</b-button>
                  </div>
                  <div class="col-sm">
                    <b-button class="button" style="width:100%" href="#" size="sm">Bag It</b-button>
                  </div>
                </div>

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
    },
    getImageUrl(peak) {
      return "/images/"+peak.code+".jpg";
    }
  },
  mounted() {
    this.getPeaks();
  }
};

</script>

<style>
.name {
  font-size: 1.2em;
  font-weight: bold;
}
.button {
  background-color: #284C35;
  border-color: #284C35;
}
.button:hover {
  background-color: #46865e;
  border-color: #46865e;
}
</style>