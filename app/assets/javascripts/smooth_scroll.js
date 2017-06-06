$(document).ready(function() {
  $('.js-scrollTo').on('click', function() { // Au clic sur un élément
    var page = $(this).attr('href'); // Page cible
    var speed = 750; // Durée de l'animation (en ms)
    $('html, body').animate({
      scrollTop: $(page).offset().top - 70
    }, speed); // Go
    return false;
  });
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
