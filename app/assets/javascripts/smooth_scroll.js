$(document).ready(function() {
  $('.js-scrollTo').on('click', function() { // Au clic sur un élément
    var page = $(this).attr('href'); // Page cible
    var speed = 750; // Durée de l'animation (en ms)
    $('html, body').animate({
      scrollTop: $(page).offset().top
    }, speed); // Go
    return false;
  });
});



// ===== Icon qppear for Scroll to Top ====
$(window).scroll(function() {
  if ($(this).scrollTop() >= 150) { // If page is scrolled more than 50px
    $('#return-to-top').fadeIn(200); // Fade in the arrow
  } else {
    $('#return-to-top').fadeOut(200); // Else fade out the arrow
  }
});

// ====== Slider move on Scroll  =============
//
// $(window).scroll(function(){
//   sliderScroll();
// });
//
// function sliderScroll () {
//   var wScroll = $(window).scrollTop();
//
//   console.log(wScroll);
// }
