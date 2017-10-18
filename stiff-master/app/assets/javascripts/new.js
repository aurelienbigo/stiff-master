$(document).ready(function() {
  // set default guitar
  var body_wood_identifier = $(".guitar_body_wood_id input[type=radio]:checked").parent().find(".body-wood-name").data('body-wood');
  var fret_wood_identifier = $(".guitar_fret_wood_id input[type=radio]:checked").parent().find(".fret-wood-name").data('fret-wood');
  var pickguard_identifier = $(".guitar_pickguard_id input[type=radio]:checked").parent().find(".pickguard-name").data('pickguard');
  var pickup_identifier = $(".guitar_pickup_id input[type=radio]:checked").parent().find(".pickup-name").data('pickup');
  var color_identifier = $(".guitar_color_id input[type=radio]:checked").parent().find(".color-name").data('color');
    $('#wrapper-guitar-new #corps, #wrapper-guitar-new #tete').attr('class', body_wood_identifier);
    $('#wrapper-guitar-new #touche').attr('class', fret_wood_identifier);
    $('#wrapper-guitar-new #pickguard').attr('class', pickguard_identifier);
    $('#wrapper-guitar-new #micro-1, #wrapper-guitar-new #micro-2, #wrapper-guitar-new #micro-3').attr('class', pickup_identifier);
    $('#wrapper-guitar-new #corps').attr('class', color_identifier);

  //dexterity
  $('.guitar_dexterity_id input[type=radio]').on("change", function() {
    var dexterity = $(this).data("name");
    $('#template_stratocaster').attr('class', dexterity);
  });

  // body_wood
  var body_wood_param = $(".guitar_body_wood_id input[type=radio]:checked").val();
  $(".body_wood .choice span").hide();
  $(".body_wood .choice span[data-id=" + body_wood_param + "]").show();

  $(".guitar_body_wood_id input[type=radio]").on("change", function() {
    var chosen_one = $(this).val();
    var identifier = $(this).parent().find(".body-wood-name").data('body-wood');
    var body_wood_option_price = parseInt($(this).parent().find(".body-wood-price").text());
    $(".body_wood .choice span").hide();
    $(".body_wood .choice span[data-id=" + chosen_one + "]").show();
    $('#corps, #tete').attr('class', identifier);
    $(".body-wood-price").each(function(index, elem) {
      $(elem).text(parseInt($(elem).text()) - body_wood_option_price);
    });
  });

  // color
  var color_param = $(".guitar_color_id input[type=radio]:checked").val();
  $(".color .choice span").hide();
  $(".color .choice span[data-id=" + color_param + "]").show();

  $(".guitar_color_id input[type=radio]").on("change", function() {
    var chosen_one = $(this).val();
    var identifier = $(this).parent().find(".color-name").data('color');
    $(".color .choice span").hide();
    $(".color .choice span[data-id=" + chosen_one + "]").show();
    if (identifier == "aucune") {
      var wood = $(".guitar_body_wood_id input[type=radio]:checked").parent().find(".body-wood-name").data('body-wood');
      $('#corps').attr('class', wood);
    }
    else {
      $('#corps').attr('class', identifier);
    }
  });

  // pickup
  var pickup_param = $(".guitar_pickup_id input[type=radio]:checked").val();
  $(".pickup .choice span").hide();
  $(".pickup .choice span[data-id=" + pickup_param + "]").show();

  $(".guitar_pickup_id input[type=radio]").on("change", function() {
    var chosen_one = $(this).val();
    var identifier = $(this).parent().find(".pickup-name").data('pickup');
    var pickup_option_price = parseInt($(this).parent().find(".pickup-price").text());
    $(".pickup .choice span").hide();
    $(".pickup .choice span[data-id=" + chosen_one + "]").show();
    $('#micro-1, #micro-2, #micro-3').attr('class', identifier);
    $(".pickup-price").each(function(index, elem) {
      $(elem).text(parseInt($(elem).text()) - pickup_option_price);
    });
  });

  // fret_wood
  var fret_wood_param = $(".guitar_fret_wood_id input[type=radio]:checked").val();
  $(".fret_wood .choice span").hide();
  $(".fret_wood .choice span[data-id=" + fret_wood_param + "]").show();

  $(".guitar_fret_wood_id input[type=radio]").on("change", function() {
    var chosen_one = $(this).val();
    var identifier = $(this).parent().find(".fret-wood-name").data('fret-wood');
    var fret_wood_option_price = parseInt($(this).parent().find(".fret-wood-price").text());
    $(".fret_wood .choice span").hide();
    $(".fret_wood .choice span[data-id=" + chosen_one + "]").show();
    $('#touche').attr('class', identifier);
    $(".fret-wood-price").each(function(index, elem) {
      $(elem).text(parseInt($(elem).text()) - fret_wood_option_price);
    });
  });

  // pickguard
  var pickguard_param = $(".guitar_pickguard_id input[type=radio]:checked").val();
  $(".pickguard .choice span").hide();
  $(".pickguard .choice span[data-id=" + pickguard_param + "]").show();

  $(".guitar_pickguard_id input[type=radio]").on("change", function() {
    var chosen_one = $(this).val();
    var identifier = $(this).parent().find(".pickguard-name").data('pickguard');
    var pickguard_option_price = parseInt($(this).parent().find(".pickguard-price").text());
    $(".pickguard .choice span").hide();
    $(".pickguard .choice span[data-id=" + chosen_one + "]").show();
    $('#pickguard').attr('class', identifier);
    $(".pickguard-price").each(function(index, elem) {
      $(elem).text(parseInt($(elem).text()) - pickguard_option_price);
    });
  });

  // guitar price update

  $("#new_guitar input, .edit_guitar input").on("change", function() {
    data = $(this).parents("form").serialize();
    $.ajax({
      type: "GET",
      url: "/guitars/compute_price.js", //
      data: data,
      dataType: "script" // you want a difference between normal and ajax-calls, and json is standard
    });
  });
});
