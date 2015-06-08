$(document).ready(function(){
  console.log("this works!")

    $('#hm-text').mouseenter (function(){
      $('#honeymoon').fadeOut(50);
      });

    $('#hm-text').mouseleave (function(){
      $('#honeymoon').fadeIn(50);
    });

    $('#tension-text').mouseenter (function(){
      $('#tension').fadeOut(50);
    });

    $('#tension-text').mouseleave (function(){
      $('#tension').fadeIn(50);
    });

    $('.explosive-text').mouseenter (function(){
      $('#explosive').fadeOut(50);
    });

    $('.explosive-text').mouseleave (function(){
      $('#explosive').fadeIn(50);
    });

    $('#honeymoon').click (function(){
      location.href = "/stages/1"
      });

    $('#hm-text').click (function(){
      location.href = "/stages/1"
    });

    $('#tension-text').click (function(){
      location.href = "/stages/2"
    });

    $('#tension').click (function(){
      location.href = "/stages/2"
    });

    $('.explosive-text').click (function(){
      location.href = "/stages/3"
    });

    $('#explosive').click (function(){
      location.href = "/stages/3"
    });


    var rotation = 0;

    jQuery.fn.rotate = function(degrees) {
        $(this).css({'-webkit-transform' : 'rotate('+ degrees +'deg)',
                     '-moz-transform' : 'rotate('+ degrees +'deg)',
                     '-ms-transform' : 'rotate('+ degrees +'deg)',
                     'transform' : 'rotate('+ degrees +'deg)'});
        return $(this);
    };

    $('#wheel-title').click(function() {
        rotation -= 120;
        duration:1000;
        $('#notitle').rotate(rotation);
    });


// This works, but breaks the wheel js
    // var form = document.getElementById('form');
    // var input1 = document.querySelector('#color-field');
    // var bflybkrd = document.querySelector('#bfly');
    //
    // form.addEventListener('submit', function(event){
    //   event.preventDefault();
    //   bflybkrd.style.backgroundColor = input1.value;
    // });

    // var form2 = document.getElementById('form2');
    // var input2 = document.querySelector('#color-field');
    // // var bfly = document.querySelector('#bfly');
    // var color = style0.fill
    //
    // form2.addEventListener('submit', function(event){
    //   event.preventDefault();
    //   color = input2.value;
    // });







});
