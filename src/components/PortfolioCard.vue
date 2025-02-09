<script setup>
import educate from '@/assets/educate.png';
import { onMounted } from 'vue';
onMounted(() => {
  const script = document.createElement("script");
  script.src = "https://buttons.github.io/buttons.js";
  script.async = true;
  script.defer = true;
  document.body.appendChild(script);
});
const props = defineProps({
    imgSrc: {
      type: String,
      default: educate
    },
    title: String,
    content: String,
    href: String,
    github: String,
});

</script>

<template>
  <!-- Place this tag in your head or just before your close body tag. -->
    <div class="col-xl-3 col-md-4 col-sm-6 col-12 mt-5 d-flex justify-content-center portfolio-card" >
        <div class="col-10">
            <div class="card flex-lg-fill  h-100 border border-2 border-black">
                <div class="image-container">
                    <img :src="imgSrc" class="card-img-top border-dark" alt="">
                </div>
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title fw-bold text-center mt-3">{{ title }}</h5>
                    <hr>
                    <p class="card-text mt-auto py-2">{{ content }}</p>
                    <div class="mt-auto d-flex justify-content-center" >
                        <a :href="href" class="btn btn-primary fw-semibold mx-1" target="_blank">查看作品</a>
                        <div class="align-items-center justify-content-center d-flex">
                          <!-- Place this tag where you want the button to render. -->
                          <a v-if="github" class="github-button mx-1" :href="github" data-color-scheme="no-preference: light; light: light; dark: dark;" data-size="large" aria-label="Follow @buttons on GitHub">Git repo</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</template>

<style scope>
.image-container {
    min-height: 200px;
    max-height: 200px;
    overflow: hidden; /* Hide the overflow */
    position: relative;
}
.image-container::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5); /* Black with 50% opacity */
  pointer-events: none; /* Prevent overlay from blocking interactions with the image */
}
.image-container img {
  object-fit: cover; /* Automatically crop the image */
  object-position: center; /* Center the image */
  filter: blur(2px);
}

</style>