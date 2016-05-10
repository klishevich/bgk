// фиксирование ширины меню
$(document).ready(function() {
    $('#menu2 > li').each(function(){
    var wid = $(this).width();
    $(this).css('width', wid+'px');
  });
});

// центровка подписей каталога по высоте
// исправить, так как из-за кэша браузера могут быть проблемы
$(document).ready(function() {
	var maxdivheight = 0;
    $('.homepage1-catalog > div').each(function(){
    	var height = $(this).height();
    	if (height > maxdivheight) {
    		maxdivheight = height;
    	}
    	console.log('maxdivheight', maxdivheight);
    });
    $('.homepage1-catalog > div').each(function(){
    	var height = $(this).height();
    	$(this).css('height', maxdivheight+'px');
    	if (height < maxdivheight){
    		var padding = (maxdivheight - height)/2;
    		$(this).css('padding-top', padding+'px');
    	}
    });
});