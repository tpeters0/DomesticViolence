$(document).ready(function(){
  console.log("this works!")

    $('#hm-text').mouseenter (function(){
      // event.preventDefault();
      console.log("over!");
      $('#honeymoon').fadeOut(50);
      });

    $('#hm-text').mouseleave (function(){
      $('#honeymoon').fadeIn(50);

    });

    $('#wheel-title').click (function(){
      console.log('clicked');
      $('.cycle-view').animate

    });

    // $(this).rotate({
    //      duration:1300,
    //      angle:180,
    //      animateTo:0
    //  });


});
