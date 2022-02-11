$(document).ready(function (){
    
    $.ajax({
        type: "POST",
        url: "js/init_classes.php",
        success: function(response){
            var array = JSON.parse(response);
            var txt = "";
            array.forEach(a => {
                if(a.id_school==1){
                  txt +=  `<div class="box">
                  <img src="images/bio.png" alt="">`
                }
                if(a.id_school==2){
                  txt +=  `<div class="box">
                  <img src="images/fis.png" alt="">`
                }
                if(a.id_school==3){
                  txt +=  `<div class="box">
                  <img src="images/geo.png" alt="">`
                }
                if(a.id_school==4){
                  txt +=  `<div class="box">
                  <img src="images/mate.png" alt="">`
                }
                if(a.id_school==5){
                  txt +=  `<div class="box">
                  <img src="images/quim.png" alt="">`
                }

                txt +=  `   <h3>${a.name}</h3>
                            <a href="#" class="btn">Consigue tutoría</a>
                        </div>`;
                        
            });
            $("#assignments").html(txt);
        }
    });

});

$(document).ready(function (){
  $.ajax({
    type: "POST",
    url: "js/init_tutors.php",
    success: function(response){
        var array = JSON.parse(response);
        var txt = "";
        array.forEach(a => {
            txt +=  `<div class="swiper-slide box">
                     <a href="#" class="btn">Conócelo</a>
                     <div class="image">
                         <img src="images/${a.id_tutor}.jpeg" alt="">
                     </div>
                     <div class="content">
                         <h3>${a.name}</h3>
                         <div class="stars">
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star-half-alt"></i>
                         </div>
                         <div class="rating">${a.rating} <span>(${a.nreviews} reviews)</span></div>
                     </div>
                    </div>`;
                    
        });
        $("#tutores").html(txt);
      }
  });
});

$(document).ready(function(){
  $.ajax({
    type: "POST",
    url: "js/init_reviews.php",
    success: function (response) {  
      var array = JSON.parse(response);
      var txt = "";
      array.forEach(a => {
          txt +=  `<div class="swiper-slide box">
                    <img src="images/quote-img.png" alt="" class="quote">
                    <p>${a.text}</p>
                    <img src="images/pic-1.png" class="user" alt="">
                    <h3>j${a.name}</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                  </div>`;
                  
      });
      $("#reviews").html(txt);
    }
});
})

let navbar = document.querySelector('.navbar');

document.querySelector('#menu-btn').onclick = () =>{
    navbar.classList.toggle('active');
    searchForm.classList.remove('active');
    cartItem.classList.remove('active');
}

let searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () =>{
    searchForm.classList.toggle('active');
    navbar.classList.remove('active');
    cartItem.classList.remove('active');
}

let cartItem = document.querySelector('.cart-items-container');

document.querySelector('#cart-btn').onclick = () =>{
    cartItem.classList.toggle('active');
    navbar.classList.remove('active');
    searchForm.classList.remove('active');
}

window.onscroll = () =>{
    navbar.classList.remove('active');
    searchForm.classList.remove('active');
    cartItem.classList.remove('active');
}

var swiper = new Swiper(".box-container", {
    grabCursor: true,
    centeredSlides: true,  
    spaceBetween: 20,
    loop:true,
    autoplay: {
      delay: 9500,
      disableOnInteraction: false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable:true,
    },
    breakpoints: {
      0: {
        slidesPerView: 1,
      },
      768: {
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
    },
  });


  