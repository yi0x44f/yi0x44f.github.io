<script setup>
import PortfolioCard from '@/components/PortfolioCard.vue';
import Footer from '@/components/Footer.vue';

import clubWebsite from '@/assets/club-website.png';
import mybooklist from '@/assets/mybooklist.png';
import ytDlpGUI from '@/assets/yt-dlp_GUI.png';

</script>

<template>
    <div class="row" id="portfolio-intro">
        <div class="col-7">

        </div>
        <div class="col-5 d-flex align-items-center justify-content-center">
            <h1 class="display-1 text-light fw-bold">作品集</h1>
        </div>
    </div>

    <div class="d-md-flex p-5" id="portfolio-menu">
        <div class="my-auto row justify-content-start">
        <PortfolioCard :imgSrc="clubWebsite" title="課外活動組 社團網頁" content=
            "因Covid-19，該年度學校的社團博覽會無實體舉行，故架設靜態網頁，供新生參閱。" 
            href="https://www2.cs.ccu.edu.tw/~cyh109u/"></PortfolioCard>
        <PortfolioCard :imgSrc="mybooklist" title="書籍清單" content=
            "使用Vue串接Google Sheet的練習。" 
            href="https://yi0x44f.me/BookList" github="https://github.com/yi0x44f/BookList"></PortfolioCard>
        <PortfolioCard imgSrc="" title="帳號註冊系統" content=
            "使用Laravel+inertia+Vue，可以在網站上註冊帳號。" 
            href="#" linkText="(已下架)" github="https://github.com/yi0x44f/laravel_inertia_vue_practice"></PortfolioCard>
        <PortfolioCard imgSrc="" title="Flask-Vue-JWT登入系統" linkText="(未上線)" github="https://github.com/yi0x44f/Vue-Flask-PostgreSQL" content=
            "使用前後端分離，實作JWT登入系統。"></PortfolioCard>
        <PortfolioCard :imgSrc="ytDlpGUI" title="yt-dlp_GUI" linkText="未上線" github="https://github.com/yi0x44f/yt-dlp_GUI"
            content="使用Laravel+inertia+Vue，用Docker容器化yt-dlp_GUI的Web Server，並用nginx反向代理。"></PortfolioCard>
        </div>

    </div>

    <Footer></Footer>
</template>

<style scoped>
    #portfolio-intro{
        min-height: 100vh;
        background-image: url('../assets/coding-bg.jpg');
        background-size: contain;
        background-repeat: no-repeat;
        background-color: black;
    }
    #portfolio-menu{
        min-height: 80vh;
        background-color: #eeeeee;
    }
    @media(max-width: 1200px){
        #portfolio-intro{
            min-height: 30vh;
        }
    }

</style>