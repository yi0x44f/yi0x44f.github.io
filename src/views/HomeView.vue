<script setup>
  import Accordion from '@/components/Accordion.vue';
  import Footer from '@/components/Footer.vue';

  const MyCollegeDeg = ['資訊工程學系 學士','金融科技學程 修畢'];
  const MyHighschoolDeg = ['普通科 自然組 畢業'];
  const MyClub = ['校園網路策進會 副會長','校園網路策進會 活動部長','鋼琴社 社長', '喜劇社 副社長'];
  const MyJob = ['課外活動組 靜態網頁開發','資訊處 宿網網管'];
  const MyCompetition = ['2023 全國大專院校智慧創新暨跨領域整合創新競賽 數位永續科技組 值得注目獎 (決賽入圍)', '110學年度 中正大學校內程式競賽 佳作']

  const MyFrontEndSkills = [
    {skill: 'HTML', style: 'text-bg-secondary'},
    {skill: 'CSS', style: 'text-bg-primary'},
    {skill: 'Javascript', style: 'text-bg-warning'},
    {skill: 'TypeScript', style: 'text-bg-primary'},
    {skill: 'Vue3', style: 'text-bg-success'},
    {skill: 'Bootstrap', style: 'text-bg-primary'},
    {skill: 'Tailwind', style: 'text-bg-primary'}
    ];
  const MyProgrammingSkills = [
    {skill: 'php', style: 'text-bg-warning'},
    {skill: 'Laravel', style: 'text-bg-danger'},
    {skill: 'PostgreSQL', style: 'text-bg-success'},
    {skill: 'Python', style: 'text-bg-info'},
    {skill: 'Flask', style: 'text-bg-info'},
  ];
  const MyDevOpsSkills = [
    {skill: 'Github Actions', style: 'text-bg-warning'},
    {skill: 'Docker', style: 'text-bg-info'},
  ]; 
  const MyLanguageSkills = [
    {skill: 'English', style: 'text-bg-warning'},
    {skill: '中文', style:'text-bg-primary'},
    {skill: '台語', style: 'text-bg-secondary'}  
  ];



  window.addEventListener('scroll', function() {
      const containerB = document.getElementById('skill-col');
      const titleB = document.getElementById('skill-title');
      const containerBPosition = containerB.getBoundingClientRect().top;
      const windowHeight = window.innerHeight;

      // Calculate the scroll percentage relative to container B
      const scrollProgress = Math.min(Math.max((windowHeight - containerBPosition) / windowHeight, 0), 1);

      // Smoothly adjust the title's vertical position
      // When `scrollProgress` is 0, the title is at the top, and when it is 1, the title is centered
      const startOffset = 20;  // Start 20px from the top of container B
      const centerOffset = (containerB.offsetHeight / 2) - (titleB.offsetHeight / 2);  // Calculate the center position
      const topPosition = startOffset + (centerOffset - startOffset) * scrollProgress;

      titleB.style.top = `${topPosition}px`; // Apply the calculated position
    });


</script>

<template>
  <div class="row align-items-center" id="self-intro" style="align-content: center;">
    <div class="col-lg-6 col-sm-12 d-flex justify-content-center">
      <span class="d-flex align-items-center">
        <img class="circle-img img-fluid"  src="../assets/portrait.jpg" alt="" style="height: auto;">
      </span>
    </div>

    <div class="col-lg-6 col-sm-12 d-flex">
      <div class="container">
        <h1 class="fw-bold d-none d-lg-block col display-1">陳 義鏵</h1>
        <p class="fw-semibold lead">
          <span class="d-lg-none">陳義鏵 </span>
          Web Developer</p>
        <p>應屆畢業生，正在持續精進web開發能力，享受開發樂趣。<br>
          
        </p>
      </div>
    </div>
    
  </div>

  <!-- timeline -->
  <div class="row justify-content-center" id="timeline">
    <!-- Education -->
    <div class="col-lg-5 col-12 p-5" id="education">
      <span class="d-flex justify-content-center">
        <img src="../assets/educate.png" alt="" style="max-width: 60px;">
      </span>
      <h2 class="text-center mb-5">Education</h2>
      <Accordion title="國立中正大學(2020~2024)" :content="MyCollegeDeg" id="CCU"></Accordion>
      <Accordion title="國立屏東高級中學(2017~2020)" :content="MyHighschoolDeg" id="PTHS"></Accordion>
    </div>

    <!-- Experience -->
    <div class="col-lg-5 col-sm-12 p-5" id="experience" >
      <span class="d-flex justify-content-center">
        <img src="../assets/experience.png" alt="" style="max-width: 60px;">
      </span>
      <h2 class="text-center mb-5">Experience</h2>
      <Accordion title="社團活動" :content="MyClub" id="CLUB"></Accordion>
      <!-- <Accordion title="校內工讀" :content="MyJob" id="JOB"></Accordion> -->
       <!-- 校內工讀 -->
       <div class="accordion accordion-flush" >
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button
                    class="accordion-button collapsed"
                    type="button"
                    data-bs-toggle="collapse"
                    :data-bs-target="'#'+'flush-collapse-'+id"
                    aria-expanded="true"
                    :aria-controls="'flush-collapse-'+id"  
                >
                    <span class="fs-2">
                        校內工讀
                    </span>
                </button>
            </h2>
            <div
                :id="'flush-collapse-'+id"
                class="accordion-collapse collapse"
                
            >
                <div class="accordion-body">
                    <ul>
                        <li class="fw-bold">
                          課外活動組 <a class="text-black " href="#portfolio">靜態網頁撰寫</a>
                        </li>
                    </ul>
                    <ul>
                        <li class="fw-bold">
                          資訊處 宿網網管
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
      </div>
      <Accordion title="競賽" :content="MyCompetition" id="COMPETITION"></Accordion>

    </div>

  </div>

  <!-- skill -->
  <div class="row justify-content-center align-items-center bg-light" id="skill">

    <div class="col-lg-4 col-sm-12 d-none d-lg-flex" id="skill-col" style="min-height: 100vh; position: relative;">
      <h2 class="p-5 text-center display-2" id="skill-title">Skills</h2>
    </div>

    <h2 class="p-5 text-center display-2 d-lg-none">Skills</h2>

    <div class="row col-lg-6 col-sm-10 text-light justify-content-center bg-light">

      <div class="card my-5 p-2">
        <div class="card-body">
          <h4 class="card-title">網頁前端</h4>
          <p class="card-text">
            <span class="badge me-1" :class="skill.style"  v-for="(skill, idx) in MyFrontEndSkills" :key="idx">{{ skill.skill }}</span>
          </p>
        </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">能使用 <span class="badge text-bg-warning">Javascript</span> 串接後端API，完成CRUD。</li>
            <li class="list-group-item">能根據需求調整 <span class="badge bg-primary">CSS</span> <span class="badge bg-primary">Bootstraps</span> 外觀。 </li>
            <li class="list-group-item">能使用 <span class="badge bg-success">Vue3</span> 撰寫元件，並開發SPA(Single Page Application)。 </li>
            <li class="list-group-item">能利用 <span class="badge bg-primary">Bootstraps</span> 進行響應式(RWD)網頁設計。</li>
            <li class="list-group-item">能利用 <span class="badge bg-primary">Tailwindcss</span> 設計樣式。</li>
          </ul>
      </div>


      
      

      <div class="card my-5 p-2">
        <div class="card-body">
          <h4 class="card-title">網站後端/資料庫</h4>
          <p class="card-text">
            <span class="badge me-1" :class="skill.style"  v-for="(skill, idx) in MyProgrammingSkills" :key="idx">{{ skill.skill }}</span>
          </p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">能使用 <span class="badge text-bg-danger">Laravel</span> 開發全端Web app。</li>
          <li class="list-group-item">實作 <span class="badge text-bg-success">PostgreSQL</span> 於後端 </li>
          <li class="list-group-item">能使用 <span class="badge text-bg-info">Flask</span>構出MVC框架的小型專案  </li>
        </ul>
      </div>

      <div class="card my-5 p-2">
        <div class="card-body">
          <h4 class="card-title">CI/CD</h4>
          <p class="card-text">
            <span class="badge me-1" :class="skill.style"  v-for="(skill, idx) in MyDevOpsSkills" :key="idx">{{ skill.skill }}</span>
          </p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">能使用 Github Actions 自動部屬 Github Pages</li>
          <li class="list-group-item">能使用 Docker 部屬 Web App</li>
        </ul>
      </div>

      <div class="card my-5 p-2">
        <div class="card-body">
          <h4 class="card-title">語言技能</h4>
          <p class="card-text">
            <span class="badge me-1" :class="skill.style"  v-for="(skill, idx) in MyLanguageSkills" :key="idx">{{ skill.skill }}</span>
          </p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><span class="badge text-bg-warning">English</span>  TOEIC 810 scores.</li>
          <li class="list-group-item">能使用 <span class="badge text-bg-primary">中文</span> 進行流暢溝通、進行簡報。</li>
          <li class="list-group-item">能使用 <span class="badge text-bg-secondary">台語</span> 進行日常對話。</li>
        </ul>
      </div>
    </div>
  </div>


  <Footer></Footer>
</template>

<style scoped>
  #self-intro{
    min-height: 100vh;
    width: inherit;
    background-color: #F3F3F3;
  }
  #timeline{
    min-height: 40vh;
    /* background-color: #004FA0; */
  }
  #skill{
    min-height: 100vh;
  }
  .circle-img{
    width: 480px; /* Define the width */
    height: 480px; /* Define the height */
    border-radius: 50%; /* Make the image circular */
  }

  #skill-title{
    position: absolute;
    left: 50%;
    transform: translateX(-50%); /* Center horizontally */
    transition: top 0.3s ease-out; /* Smooth transition for the position */
  }

  @media(max-width: 992px){
    .circle-img{
      width: 300px;
      height: 300px;
    }
  }


  .accordion{
        --bs-accordion-active-bg: inherit;
    }
    .accordion-button:focus{
        box-shadow: none;       
    }
    .accordion-button:not(.collapsed){
        box-shadow: none;
        color: inherit;
    }


</style>