// <a href="javascript:void(0);" class="up_btn btt-shrinked" id="backToTop" style="display: inline;"><i class="fa fa-arrow-up"></i></a>

jQuery(document).ready(function($) {
  "use strict";

  /* Back to Top*/
  $('#backToTop').on('click', () => {
    $("html, body").animate({scrollTop:0},'fast');
    return false;
  });

  $(window).on('scroll', () => {
     if($(this).width()>250){
        if($(document).scrollTop() > $('#skipNav').offset().top - parseFloat($('#skipNav').css('marginTop').replace(/auto/, 100))){
          $('#backToTop').fadeIn();
        }

        else{
          $('#backToTop').fadeOut();
        }
      }
   });

});
