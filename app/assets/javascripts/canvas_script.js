
    // The following is my tailoring of HTML5 canvas-drawing code by William Malone (www.williammalone.com)
    // Licensed under the Apache License, Version 2.0; http://www.apache.org/licenses/LICENSE-2.0


    /**
    * Creates a canvas element, loads images, adds events, and draws the canvas for the first time.
    */
    $( document ).ready(function() {
    	var canvas;
    	var context;
    	var canvasWidth = 500;
    	var canvasHeight = 500;
    	var padding = 25;
    	var lineWidth = 8;
    	var colorPurple = "#cb3594";
    	var colorGreen = "#659b41";
    	var colorYellow = "#ffcf33";
    	var colorBrown = "#986928";
    	var clickX = new Array();
    	var clickY = new Array();
    	var clickColor = new Array();
    	var clickTool = new Array();
    	var clickSize = new Array();
    	var clickDrag = new Array();
    	var paint = false;
    	var curColor = colorPurple;
    	var curTool = "crayon";
    	var curSize = "normal";
    	var mediumStartX = 18;
    	var mediumStartY = 19;
    	var mediumImageWidth = 93;
    	var mediumImageHeight = 46;
    	var drawingAreaX = 111;
    	var drawingAreaY = 11;
    	var drawingAreaWidth = 267;
    	var drawingAreaHeight = 200;
    	var toolHotspotStartY = 23;
    	var toolHotspotHeight = 38;
    	var sizeHotspotStartY = 157;
    	var sizeHotspotHeight = 36;
    	var sizeHotspotWidthObject = new Object();
    	sizeHotspotWidthObject.huge = 39;
    	sizeHotspotWidthObject.large = 25;
    	sizeHotspotWidthObject.normal = 18;
    	sizeHotspotWidthObject.small = 16;
    	var totalLoadResources = 8;
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
      // console.log("canvas rendering context");

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

    	function clearCanvas()
    	{
    		context.clearRect(0, 0, canvasWidth, canvasHeight);
    	}

    	var clickX = new Array();
    	var clickY = new Array();
    	var clickDrag = new Array();
    	var paint;

    	function addClick(x, y, dragging)
    	{
    	  clickX.push(x);
    	  clickY.push(y);
    	  clickDrag.push(dragging);
    	}

    	function redraw(){
        context.clearRect(0, 0, context.canvas.width, context.canvas.height); // Clears the canvas

        context.strokeStyle = "#df4b26";
        context.lineJoin = "round";
        context.lineWidth = 5;

        for(var i=0; i < clickX.length; i++) {
          context.beginPath();
          if(clickDrag[i] && i){
            context.moveTo(clickX[i-1], clickY[i-1]);
          }else{
            context.moveTo(clickX[i]-1, clickY[i]);
          }
         context.lineTo(clickX[i], clickY[i]);
         context.closePath();
         context.stroke();
        }
      }

    	$('#clearCanvas').mousedown(function(e)
    	{
    		clickX = new Array();
    		clickY = new Array();
    		clickDrag = new Array();
    		clearCanvas();
    	});



    });
