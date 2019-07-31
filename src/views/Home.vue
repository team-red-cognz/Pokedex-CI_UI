<template>
  <div class="home">
    <input v-model="inname" placeholder="insert name here" />
    <button @click="searchname(inname)">search</button>
    <p>pokemon name : {{pokename}}</p>
    <p>id : {{pokeid}}</p>
    <p>ablity : {{pokeablity}}</p>
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
      iname: "",
      pokename: "",
      pokeid: "",
      pokeablity: ""
    };
  },
  methods: {
    searchname(pname) {
      console.log(process.env.VUE_APP_APiCON)
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
