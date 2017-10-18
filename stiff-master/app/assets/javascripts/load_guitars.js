function handle_index_guitars() {
   $( ".card-product" ).each(function( index ) {
    var body_wood_card = $(this).data("body-wood");
    var fret_wood_card = $(this).data("fret-wood");
    var pickguard_card = $(this).data("pickguard");
    var dexterity = $(this).data("dexterity");
    var pickup_card = $(this).data("pickup");

    $(this).find('#corps, #tete').attr('class', body_wood_card);
    $(this).find('#micro-1, #micro-2, #micro-3').attr('class', pickup_card);
    $(this).find('#touche').attr('class', fret_wood_card);
    $(this).find('#pickguard').attr('class', pickguard_card);
    if ($(this).data("color")) {
      var color_card = $(this).data("color");
      $(this).find('#corps').attr('class', color_card);
    }
    if (dexterity == "Gaucher") {
      $(this).find('#template_stratocaster').attr('class', "gaucher");
      }
    });
};
// function star_displayed() {
//   $('.fa-star').parent().parent().addClass("stared").css("opacity", 1);
// }

 function show_guitar() {
    var body_wood  = $(".attributs").data("body-wood");
    var fret_wood  = $(".attributs").data("fret-wood");
    var dexterity = $(".attributs").data("dexterity");
    var pickup = $(".attributs").data("pickup");
    $('#corps, #tete').attr('class', body_wood );
    $('#touche').attr('class', fret_wood );
    $('#micro-1, #micro-2, #micro-3').attr('class', pickup);
    if ($(".attributs").data("color")) {
      var color = $(".attributs").data("color");
      $('#corps').attr('class', color );
    }
    if (dexterity == "Gaucher") {
      $('#template_stratocaster').attr('class', "gaucher");
    }
 };
