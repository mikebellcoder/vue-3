<template>
  <div>
    <div>Capacity: {{ capacity }}</div>
    <button @click="incrementCapacity">Add One</button>
    <teleport to="#tele">
      <h1 style="align:center">App Title</h1>
    </teleport>
  </div>
</template>

<script>
import { ref } from "vue";
export default {
  setup() {
    const capacity = ref(3);

    function incrementCapacity() {
      capacity.value++;
    }
    return { capacity, incrementCapacity };
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
