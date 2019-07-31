<template>
  <div class="home">
    <!-- <input  placeholder="insert name here" /> -->
    <sui-input v-model="inname" placeholder="Search Pokemon Name" />
    <sui-button @click="searchname(inname)">search</sui-button>
    <sui-divider />

    <table class="ui very basic table" id="box">
      <tbody>
        <tr>
          <td>Pokemon Name:</td>
          <td>{{pokename}}</td>
        </tr>
        <tr>
          <td>Pokemon ID:</td>
          <td>{{pokeid}}</td>
        </tr>
        <tr>
          <td>Ablity</td>
          <td>{{pokeablity}}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
// @ is an alias to /src
import homec from "@/components/homec.vue";

export default {
  name: "home",
  components: {
    homec
  },
  data() {
    return {
      inname: "",
      pokename: "",
      pokeid: "",
      pokeablity: ""
    };
  },
  methods: {
    searchname(pname) {
      console.log(process.env.VUE_APP_APiCON);
      console.log(pname);
      this.$http.get().then(
        response => {
          // this.someData = response.body;
          // console.log(this.someData)
        },
        response => {
          // error callback
        }
      );
    }
  }
};
</script>

<style>
#pokedata {
  /* max-width: 50%; */
  /* padding-left: 40% */
}
#box {
  background: whitesmoke;
  /* height: 10em; */
  display: flex;
  align-items: center;
  justify-content: center;
  width: 50%;
  margin: 0 auto;
}
/* .home {
  width: 50% important;
} */
</style>
