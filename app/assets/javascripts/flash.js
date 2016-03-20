$(document).ready(function(){
  $('.flash__close').on('click', function(e){
    var flash = $(this).parents('.flash');
    flash.slideUp(200);
    e.preventDefault();
  });
});
