setTimeout(function(){
    if ($(".loading_screen_background").css('display') !== 'none') {
        $(".loading_screen_gif").fadeIn();
    }
}, 1000);
$( window ).bind('load',function() {
    $(".loading_screen").fadeOut();
    setTimeout(function(){
        $(".loading_screen").fadeOut();
    }, 1000);
    // $(document).ajaxStart(function(){
    //     $(".loading_screen-spinner").show();
    // });
    // $(document).ajaxStop(function(){
    //     $(".loading_screen-spinner").fadeOut();
    // });
});