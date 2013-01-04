/**
 *  Category Template Script
*/
$(function () {

    $( '#category ul' ).hide();
    $( '#category h3' ).click(function () {

        if ( !$( this ).is( '.h3_on' ) ) {
            var pos = $( this ).offset().top;
            $( 'html, body' ).animate( { scrollTop: pos }, 'fast' );
        }

        $( this ).toggleClass( 'h3_on' );
        $( this ).next().animate({
            height: 'toggle'
        }, 'fast');

    });

});
