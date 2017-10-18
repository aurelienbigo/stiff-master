  // text and image apparition
  $(function() {

    $('[data-scrollmagic]').each(function (index, elem) {
      // Init ScrollMagic Controller
      var scrollMagicController = new ScrollMagic.Controller();

      // Create Animations
      var title = $(elem).find('h3'),
          text = $(elem).find('p'),
          img = $(elem).find('img');

      var tl = new TimelineMax({pause: true});
      tl.add("start") // add timeline label
        .fromTo(title, 0.3, { y: '200px', opacity: 0 }, { y: 0, opacity: 1, ease: Power2.EaseInOut }, "start")
        .fromTo(text, 0.3, { y: '300px', opacity: 0 }, { y: 0, opacity: 1, ease: Power2.EaseInOut }, "start")
        .fromTo(img, 0.3, { y: '500px', opacity: 0 }, { y: 0, opacity: 1, ease: Power2.EaseInOut }, "start")

      // Create the Scene and trigger when visible
      var scene = new ScrollMagic.Scene({
        triggerElement: elem,
        offset: 0,
        /* offset the trigger Npx below scene's top */
      })
      .setTween(tl)
      .addTo(scrollMagicController);

      // Add debug indicators fixed on right side
       // scene.addIndicators();
    });
  });


