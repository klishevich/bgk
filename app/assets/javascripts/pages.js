// фиксирование ширины меню
$(document).ready(function() {
    $('#menu2 > li').each(function(){
    var wid = $(this).width();
    $(this).css('width', wid+'px');
  });
});

// центровка подписей каталога по высоте
// исправить, так как из-за кэша браузера могут быть проблемы
$(function() {
	var maxdivheight = 0;
    $('.homepage1-catalog > div').each(function(){
    	var height = $(this).height();
    	if (height > maxdivheight) {
    		maxdivheight = height;
    	}
    });
    console.log('maxdivheight', maxdivheight);
    $('.homepage1-catalog > div').each(function(){
        // var style = $(this).attr("style");
        // console.log('style', style);
        // if (!style){
            var height = $(this).height();
            var child = $(this).text();
            console.log('height', height);
            console.log('child', child);
            $(this).css('height', maxdivheight+'px');
            if (height < maxdivheight){
                var padding = (maxdivheight - height)/2;
                $(this).css('padding-top', padding+'px');
            }
        // }
    });
});