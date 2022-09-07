$(document).ready(function(){

    $('.trad').hover(function(){
        $t1 = $(this).attr('id');
        $($t1).toggleClass("ev");
        $(this).toggleClass("ev");
    });

    $('#retro').click(function(){
        $('#19').toggleClass('u-hide');
        $('#19R').toggleClass('u-hide');
        $('#19R').toggleClass('u-max-full-width');
    });

    $('#change').click(function(){
        $('#p1').toggleClass('u-hide');
        $('#p2').toggleClass('u-hide');
        if($("#change").val() == 'Pagina 19'){
            $("#change").val('Pagina 20');
        } else {
            $("#change").val('Pagina 19');
        }
    });


    $('#del').click(function(){
    $("#del").toggleClass("v");
    $(".del").toggleClass( "u-hide v" );
    });

    $('#abbr').click(function(){
        $("#abbr").toggleClass("a");
        $(".abbr").toggleClass( "u-hide a" );
        $(".expan").toggleClass( "u-hide" )
    });

    $('#for').click(function(){
        $("#for").toggleClass("c");
        $(".for").toggleClass( "c" );
    });

    $('#note').click(function(){
        $("#note").toggleClass("g");
        $(".note").toggleClass( "u-hide g" );
    });

    $('#glot').click(function(){
        $('#glot').toggleClass("bl");
        $('.glot').toggleClass("bl");
    });

    $('#term').click(function(){
        $("#term").toggleClass("r");
        $(".term").toggleClass( "r" );
    });

    $(".term").hover(function(){
        $(this).toggleClass( "r" );
    });

    $(".term").click(function(){
        $t1 = $(this).attr('id');
        $($t1).addClass('r');

        setTimeout(function() {
            $($t1).removeClass('r');
        }, 6000);
    });


});
