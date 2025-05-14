<script setup>
import Footer from "@/components/Footer.vue";
</script>

<template>
  <div
    class="row flex align-content-center"
    id="contact-page"
    style="padding-top: 0.1px"
  >
    <div
      class="d-flex fw-bold col-lg-4 col-12 justify-content-center align-items-center display-1"
    >
      請聯繫我
    </div>
    <div class="d-flex row fw-bold col-lg-8 col-12 p-5 justify-content-center">
      <div class="col-lg-4 col-12">
        <p>Email - <span>yi0x44f@gmail.com</span></p>
        <p>LINE ID - <span>22531146</span></p>
        <p>Phone - <span>0909-618-043</span></p>
      </div>
      <div class="col-8"></div>
    </div>
  </div>
  <Footer></Footer>
</template>

<style scoped>
#contact-page {
  min-height: 100vh;
  /* background-color: #f3f3f3; */
  /* background-image: url('../assets/GuruPlan.png'); */
}


</style>
