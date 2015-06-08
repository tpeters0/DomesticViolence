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

    }

//
//     interact('.dropzone').dropzone({
//   // only accept elements matching this CSS selector
//   // accept: '#yes-drop',
//   // Require a 75% element overlap for a drop to be possible
//   overlap: 0.75,
//
//   // listen for drop related events:
//
//   ondropactivate: function (event) {
//     // add active dropzone feedback
//     event.target.classList.add('drop-active');
//   },
//   ondragenter: function (event) {
//     var draggableElement = event.relatedTarget,
//         dropzoneElement = event.target;
//
//     // feedback the possibility of a drop
//     dropzoneElement.classList.add('drop-target');
//     draggableElement.classList.add('can-drop');
//     draggableElement.textContent = 'Dragged in';
//   },
//   ondragleave: function (event) {
//     // remove the drop feedback style
//     event.target.classList.remove('drop-target');
//     event.relatedTarget.classList.remove('can-drop');
//     event.relatedTarget.textContent = 'Dragged out';
//   },
//   ondrop: function (event) {
//     event.relatedTarget.textContent = 'Dropped';
//   },
//   ondropdeactivate: function (event) {
//     // remove active dropzone feedback
//     event.target.classList.remove('drop-active');
//     event.target.classList.remove('drop-target');
//   }
// });
//




});
