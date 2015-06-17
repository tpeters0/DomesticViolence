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

    $('#wheel-title').hover(function() {
      // $(this).append($("<span> Turn the wheel </span>"));
    });


    $('#rotate').click(function() {
        rotation -= 120;
        duration:2000;
        $('#notitle').rotate(rotation);
    });

    $('#turn').click(function() {
        rotation -= 120;
        duration:2000;
        $('#notitle').rotate(rotation);
    });

    $(".card").flip({
      axis: 'x',
      trigger: 'hover',
      speed: 400,
    });


    // The following is my tailoring of HTML5 canvas-drawing code by William Malone (www.williammalone.com)
    // Licensed under the Apache License, Version 2.0; http://www.apache.org/licenses/LICENSE-2.0


    /**
    * Creates a canvas element, loads images, adds events, and draws the canvas for the first time.
    */
    $( document ).ready(function() {


    	var canvas;
    	var context;
    	var canvasWidth = 600;
    	var canvasHeight = 500;
      var outlineImage = new Image();
    	var padding = 10;
    	var lineWidth = 8;
    	var colorPurple = "purple";
    	var colorGreen = "#659b41";
    	var colorYellow = "#ffcf33";
    	var colorBrown = "#986928";
      var colorRed = "red";
      var colorBlack = "black";
      var colorBlue = "blue";
      var eraser = "white";
    	var clickX = new Array();
    	var clickY = new Array();
    	var clickColor = new Array();
    	var clickTool = new Array();
    	var clickSize = new Array();
    	var clickDrag = new Array();
    	var paint = false;
    	var curColor = colorGreen;
    	var curSize = "medium";
    	var mediumStartX = 18;
    	var mediumStartY = 19;
    	var mediumImageWidth = 93;
    	var mediumImageHeight = 46;
    	var drawingAreaX = 0;
    	var drawingAreaY = 0;
    	var drawingAreaWidth = 600;
    	var drawingAreaHeight = 500;
    	var toolHotspotStartY = 23;
    	var toolHotspotHeight = 38;
    	var sizeHotspotStartY = 157;
    	var sizeHotspotHeight = 36;
    	var sizeHotspotWidthObject = new Object();
    	    sizeHotspotWidthObject.huge = 39;
    	    sizeHotspotWidthObject.large = 25;
    	    sizeHotspotWidthObject.normal = 18;
    	    sizeHotspotWidthObject.small = 16;
    	var totalLoadResources = 1;
    	var curLoadResNum = 0;


    	/**
    	* Calls the redraw function after all neccessary resources are loaded.
    	*/
    	function resourceLoaded()
    	{
    		if(++curLoadResNum >= totalLoadResources){
    			redraw();
    		}
    	}

      var canvas = document.getElementById("canvas");
      var context = canvas.getContext("2d");


      // Load images
      outlineImage.onload = function() { resourceLoaded();
    	};
    	outlineImage.src = "/assets/butterfly-outline.png";

    	$('#canvas').mousedown(function(e)
    	{
    		// console.log("mousedown!")
      	var mouseX = e.pageX - this.offsetLeft;
        var mouseY = e.pageY - this.offsetTop;

        paint = true;
        addClick(e.pageX - this.offsetLeft, e.pageY - this.offsetTop);
        redraw();
    	});

    	$('#canvas').mousemove(function(e){
        if(paint){
          addClick(e.pageX - this.offsetLeft, e.pageY - this.offsetTop, true);
          redraw();
        }
      });

      $('#canvas').mouseup(function(e){
        paint = false;
      });

    	$('#canvas').mouseleave(function(e){
    	  paint = false;
    	});

      $('#choosePurple').mousedown(function(e){
        curColor = colorPurple;
      });

      $('#chooseGreen').mousedown(function(e){
        curColor = colorGreen;
      });

      $('#chooseYellow').mousedown(function(e){
        curColor = colorYellow;
      });

      $('#chooseBrown').mousedown(function(e){
      curColor = colorBrown;
      });

      $('#chooseRed').mousedown(function(e){
        curColor = colorRed;
      });

      $('#chooseBlack').mousedown(function(e){
        curColor = colorBlack;
      });

      $('#chooseBlue').mousedown(function(e){
        curColor = colorBlue;
      });

      $('#chooseEraser').mousedown(function(e){
        curColor = eraser;
      });



      $('#chooseExtraSmall').mousedown(function(e){
    		curSize = "extrasmall";
    	});
      $('#chooseSmall').mousedown(function(e){
    		curSize = "small";
    	});
    	$('#chooseMedium').mousedown(function(e){
    		curSize = "medium";
    	});
    	$('#chooseLarge').mousedown(function(e){
    		curSize = "large";
    	});
    	$('#chooseHuge').mousedown(function(e){
    		curSize = "huge";
    	});


    	var clickX = new Array();
    	var clickY = new Array();
    	var clickDrag = new Array();
    	var paint;

    	function addClick(x, y, dragging)
    	{
    	  clickX.push(x);
    	  clickY.push(y);
    	  clickDrag.push(dragging);
        clickColor.push(curColor);
        clickSize.push(curSize);
    	};

      // clearClick = function () {
      //
			// clickX = [clickX[clickX.length - 1]];
			// clickY = [clickY[clickY.length - 1]];
			// clickTool = [clickTool[clickTool.length - 1]];
			// clickColor = [clickColor[clickColor.length - 1]];
			// clickSize = [clickSize[clickSize.length - 1]];
			// clickDrag = [clickDrag[clickDrag.length - 1]];
      // };






    	function redraw(){
        context.clearRect(0, 0, context.canvas.width, context.canvas.height); // Clears the canvas
        context.lineJoin = "round";

        context.drawImage(outlineImage, drawingAreaX, drawingAreaY, drawingAreaWidth, drawingAreaHeight);

        for(var i=0; i < clickX.length; i++) {

            if (clickSize[i] == "extrasmall"){
            radius = 2;
            }else if(clickSize[i] == "small"){
              radius = 5;
            }else if(clickSize[i] == "medium"){
                radius = 10;
            }else if(clickSize[i] == "large"){
                radius = 20;
            }else if(clickSize[i] == "huge"){
                radius = 30;
            }else{
                radius = 5;
            }


            		context.beginPath();
            		if(clickDrag[i] && i){
            			context.moveTo(clickX[i-1], clickY[i-1]);
            		}else{
            			context.moveTo(clickX[i], clickY[i]);
            		}
            		context.lineTo(clickX[i], clickY[i]);
            		context.closePath();

            		if(clickTool[i] == "eraser"){
            			//context.globalCompositeOperation = "destination-out"; // To erase instead of draw over with white
            			context.strokeStyle = 'white';
            		}else{
            			//context.globalCompositeOperation = "source-over";	// To erase instead of draw over with white
            			context.strokeStyle = clickColor[i];
            		}
            		context.lineJoin = "round";
            		context.lineWidth = radius;
            		context.stroke();

            	}
            	//context.globalCompositeOperation = "source-over";// To erase instead of draw over with white
            	context.restore();

            	context.globalAlpha = 1; // No IE support

            	// Draw the outline image
            	context.drawImage(outlineImage, drawingAreaX, drawingAreaY, drawingAreaWidth, drawingAreaHeight);
            }

      //
      //   if (curTool === "bucket") {
      //
			// 	// Draw the background
			// 	context.drawImage(bucketBackgroundImage, 0, 0, canvasWidth, canvasHeight);
      //
			// 	// Draw the current state of the color layer to the canvas
			// 	contexts.drawing.putImageData(colorLayerData, 0, 0, 0, 0, drawingAreaWidth, drawingAreaHeight);
      //
			// 	// Draw the color swatches
			// 	locX = 52;
			// 	locY = 19;
			// 	drawColorSwatch(colorPurple, locX, locY);
      //
			// 	locY += 46;
			// 	drawColorSwatch(colorGreen, locX, locY);
      //
			// 	locY += 46;
			// 	drawColorSwatch(colorYellow, locX, locY);
      //
			// 	locY += 46;
			// 	drawColorSwatch(colorBrown, locX, locY);
      //
			// } else {
      //
			// 	// Draw line on ruler to indicate size
			// 	switch (curSize) {
			// 	case "small":
			// 		locX = 467;
			// 		break;
			// 	case "normal":
			// 		locX = 450;
			// 		break;
			// 	case "large":
			// 		locX = 428;
			// 		break;
			// 	case "huge":
			// 		locX = 399;
			// 		break;
			// 	default:
			// 		break;
			// 	}
			// 	locY = sizeLineStartY;
			// 	context.beginPath();
			// 	context.rect(locX, locY, 2, 12);
			// 	context.closePath();
			// 	context.fillStyle = '#333333';
			// 	context.fill();
      //
			// 	if (clickX.length) {
      //
			// 		// For each point drawn
			// 		for (i = 0; i < clickX.length; i += 1) {
      //
			// 			contexts.drawing.beginPath();
      //
			// 			// Set the drawing radius
			// 			switch (clickSize[i]) {
			// 			case "small":
			// 				radius = 2;
			// 				break;
			// 			case "normal":
			// 				radius = 5;
			// 				break;
			// 			case "large":
			// 				radius = 10;
			// 				break;
			// 			case "huge":
			// 				radius = 20;
			// 				break;
			// 			default:
			// 				break;
			// 			}
      //
			// 			// If dragging then draw a line between the two points
			// 			if (clickDrag[i] && i) {
			// 				contexts.drawing.moveTo(clickX[i - 1], clickY[i - 1]);
			// 			} else {
			// 				// The x position is moved over one pixel so a circle even if not dragging
			// 				contexts.drawing.moveTo(clickX[i] - 1, clickY[i]);
			// 			}
			// 			contexts.drawing.lineTo(clickX[i], clickY[i]);
      //
			// 			// Set the drawing color
			// 			if (curTool === "eraser") {
			// 				contexts.drawing.strokeStyle = 'white';
			// 			} else {
			// 				contexts.drawing.strokeStyle = "rgb(" + clickColor[i].r + ", " + clickColor[i].g + ", " + clickColor[i].b + ")";
			// 			}
      //
			// 			contexts.drawing.lineCap = "round";
			// 			contexts.drawing.lineJoin = "round";
			// 			contexts.drawing.lineWidth = radius;
			// 			contexts.drawing.stroke();
			// 			contexts.drawing.closePath();
			// 		}
      //
			// 		clearClick();
			// 	}
			// }




    });


    $('#btnCanvas').mousedown(function(convert)
    {
      var dataURL =  canvas.toDataURL('image/png');
      var data = dataURL.replace(/^data:image\/png;base64,/, "");
      // var dataJSON = JSON.stringify(getBase64Image(dataURL));

      $('#hiddenCanvas').val(data);

    });




});
