// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application"
import '@fortawesome/fontawesome-free/js/all'
import Swiper from 'swiper/swiper-bundle'




Rails.start()
Turbolinks.start()
ActiveStorage.start()


  $(document).ready(function () {
    $(".openbtn").click(function () { //ボタンがクリックされたら
    	$(this).toggleClass('active'); //ボタン自身に activeクラスを付与し
      $("#g-nav").toggleClass('panelactive'); //ナビゲーションにpanelactiveクラスを付与
    });

    $("#g-nav a").click(function () { //ナビゲーションのリンクがクリックされたら
      $(".openbtn").removeClass('active'); //ボタンの activeクラスを除去し
      $("#g-nav").removeClass('panelactive'); //ナビゲーションのpanelactiveクラスも除去
    });
    
    var swiper = new Swiper('.swiper', {
    loop: true,
    autoplay: {
      delay: 5000,
      disableOnInteraction: false
    },
    speed: 1500,
    // 新たなオプションを追加
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });

    
  });
