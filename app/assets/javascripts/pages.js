$(document).ready(function() {
    $('#menu2 > li').each(function(){
    var wid = $(this).width();
    $(this).css('width', wid+'px');
  });
});