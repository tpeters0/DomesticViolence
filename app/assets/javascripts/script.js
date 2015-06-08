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




    function allowDrop(ev) {
        ev.preventDefault();
    }

    function drag(ev) {
        ev.dataTransfer.setData("text", ev.target.id);
    }

    function drop(ev) {
        ev.preventDefault();
        var data = ev.dataTransfer.getData("text");
        ev.target.appendChild(document.getElementById(data));
    }















    interact('.draggable')
      .draggable({
        // enable inertial throwing
        inertia: true,
        // keep the element within the area of it's parent
        restrict: {
          restriction: "parent",
          endOnly: true,
          elementRect: { top: 0, left: 0, bottom: 1, right: 1 }
        },

    // call this function on every dragmove event
    onmove: dragMoveListener,
    // call this function on every dragend event
    onend: function (event) {
      var textEl = event.target.querySelector('p');

      textEl && (textEl.textContent =
        'moved a distance of '
        + (Math.sqrt(event.dx * event.dx +
                     event.dy * event.dy)|0) + 'px');
    }
  });


    function dragMoveListener (event) {
      var target = event.target,
          // keep the dragged position in the data-x/data-y attributes
          x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx,
          y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy;

      // translate the element
      target.style.webkitTransform =
      target.style.transform =
        'translate(' + x + 'px, ' + y + 'px)';

      // update the position attributes
      target.setAttribute('data-x', x);
      target.setAttribute('data-y', y);

      console.log(target);
    }

    // this is used later in the resizing demo
    window.dragMoveListener = dragMoveListener;














    // function draw_1() {
    //   var canvas1 = document.getElementById("drawing1");
    //   var context = canvas1.getContext("2d");
    //
    //   // Create the yellow face
    //   context.strokeStyle = "#000000";
    //   context.fillStyle = "#FFFF00";
    //   context.beginPath();
    //   context.arc(100,100,20,0,Math.PI*2,true);
    //   context.closePath();
    //   context.stroke();
    //   context.fill();



      // canvas1.mousedown(function(e){
      //   var mouseX = e.pageX - this.offsetLeft;
      //   var mouseY = e.pageY - this.offsetTop;
      //
      //   paint = true;
      //   addClick(e.pageX - this.offsetLeft, e.pageY - this.offsetTop);
      //   console.log("downed!")
      //   redraw();
      // });
      //


      // context.strokeStyle = "black";
      // context.stroke();
      //
      // context.beginPath();
      // context.moveTo(0, 40);
      // context.lineTo(240, 40);
      // context.moveTo(260, 40);
      // context.lineTo(500, 40);
      // context.moveTo(495, 35);
      // context.lineTo(500, 40);
      // context.lineTo(495, 45);



      // context.fillRect(50, 25, 30, 15);
    // }
    //
    // $("#click").click(function(){
    //   location.href = "#";
    //   draw_1();
    //   return false;
    //
    // })


});
