<template>
<div>
<v-container class="grey lighten-5">
      <!-- Stack the columns on mobile by making one full-width and the other half-width -->
      <v-row v-for="record in info.data" :key="record.id">
        <v-col
          cols="12"
          md="8"
        >
            <a :href="'/matches/'+record.id">{{record.team1}} vs {{record.team2}} at {{record.venue}} on {{record.date}}</a>

        </v-col>
        <v-col
          cols="6"
          md="2"
        >
            <v-btn  small color="primary" :to="'/matches/'+record.id+'/edit'">Edit</v-btn>

        </v-col>
        <v-col
          cols="6"
          md="2"
        >
          
            <v-btn small color="error" :to="'/matches/'+record.id+'/delete'">Delete</v-btn>

        </v-col>
      </v-row>
    </v-container>
</div>
</template>
<script>
import axios from 'axios'
export default {
  name: 'matches',
  data: () => ({
    info:null
  }),
  mounted(){
		axios.post("http://localhost:3000/matches/search?user_email=xseed@codingchallenge.com&user_token=W59hTDGHVysjgajyoK_5",{
      "team1":this.$route.params.team1
    })
		.then(response => (this.info = response))
	}
};
</script>