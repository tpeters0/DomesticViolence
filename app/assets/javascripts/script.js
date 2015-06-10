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
      location.href = "/stages/Honeymoon"
      });

    $('#hm-text').click (function(){
      location.href = "/stages/Honeymoon"
    });

    $('#tension-text').click (function(){
      location.href = "/stages/Tension-Building"
    });

    $('#tension').click (function(){
      location.href = "/stages/Tension-Building"
    });

    $('.explosive-text').click (function(){
      location.href = "/stages/Explosive"
    });

    $('#explosive').click (function(){
      location.href = "/stages/Explosive"
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


    $(".card").flip({
      axis: 'x',
      trigger: 'hover',
      speed: 400,
    });





    var form1 = $('#form1');
    var input1 = document.querySelector('#color-field');
    var bflybkrd = document.querySelector('#bfly');

    form1.on('submit', function(event){
      event.preventDefault();
      bflybkrd.style.backgroundColor = input1.value;
    });

    // var form2 = document.getElementById('form2');
    // var input2 = document.querySelector('#color-field');
    // var bfly = document.querySelector('#bfly');
    //
    //
    // form2.addEventListener('submit', function(event){
    //   event.preventDefault();
    //   color = input2.value;
    // });







});
