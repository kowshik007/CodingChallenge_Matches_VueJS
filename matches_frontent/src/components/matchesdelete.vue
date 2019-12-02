<template>
	<h1>Record deleted successfully</h1>
</template>
<script>
import axios from 'axios'
export default {
  name: 'matchesdelete',
  data: () => ({
    info:null
  }),
  mounted(){
		axios.delete("http://localhost:3000/matches/"+this.$route.params.id+"?user_email=xseed@codingchallenge.com&user_token=W59hTDGHVysjgajyoK_5")
		.then(response => (this.info = response))
	}
};
</script>