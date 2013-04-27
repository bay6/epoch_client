$(function(){
	var opts = {
    itemSelector: '.item',
    colMinWidth: 300,
    defaultContainerWidth: $('.container').width(),
    colClass: null,
    autoresize: true
};

	$('.items-container').waterfall(opts);
});