$(document).ready(function(){console.log("this works!"),$("#hm-text").mouseenter(function(){$("#honeymoon").fadeOut(50)}),$("#hm-text").mouseleave(function(){$("#honeymoon").fadeIn(50)}),$("#tension-text").mouseenter(function(){$("#tension").fadeOut(50)}),$("#tension-text").mouseleave(function(){$("#tension").fadeIn(50)}),$(".explosive-text").mouseenter(function(){$("#explosive").fadeOut(50)}),$(".explosive-text").mouseleave(function(){$("#explosive").fadeIn(50)}),$("#honeymoon").click(function(){location.href="/stages/Honeymoon"}),$("#hm-text").click(function(){location.href="/stages/Honeymoon"}),$("#tension-text").click(function(){location.href="/stages/Tension-Building"}),$("#tension").click(function(){location.href="/stages/Tension-Building"}),$(".explosive-text").click(function(){location.href="/stages/Explosive"}),$("#explosive").click(function(){location.href="/stages/Explosive"});var e=0;jQuery.fn.rotate=function(e){return $(this).css({"-webkit-transform":"rotate("+e+"deg)","-moz-transform":"rotate("+e+"deg)","-ms-transform":"rotate("+e+"deg)",transform:"rotate("+e+"deg)"}),$(this)},$("#wheel-title").click(function(){e-=120,$("#notitle").rotate(e)}),$("#rotate").click(function(){e-=120,$("#notitle").rotate(e)}),$(".card").flip({axis:"x",trigger:"hover",speed:400}),$(document).ready(function(){function e(){++L>=B&&t()}function n(){s.clearRect(0,0,i,c)}function o(e,n,o){v.push(e),g.push(n),p.push(o),w.push(x)}function t(){s.clearRect(0,0,s.canvas.width,s.canvas.height),s.lineJoin="round",s.lineWidth=5,s.drawImage(r,k,A,T,b);for(var e=0;e<v.length;e++)s.beginPath(),p[e]&&e?s.moveTo(v[e-1],g[e-1]):s.moveTo(v[e]-1,g[e]),s.lineTo(v[e],g[e]),s.closePath(),s.strokeStyle=w[e],s.stroke()}var a,s,i=600,c=500,r=new Image,f="#cb3594",u="#659b41",l="#ffcf33",m="#986928",h="red",d="black",v=new Array,g=new Array,w=new Array,p=(new Array,new Array,new Array),y=!1,x=f,k=0,A=0,T=600,b=500,I=new Object;I.huge=39,I.large=25,I.normal=18,I.small=16;var B=1,L=0,a=document.getElementById("canvas"),s=a.getContext("2d");r.onload=function(){e()},r.src="/assets/butterfly-white.png",$("#canvas").mousedown(function(e){e.pageX-this.offsetLeft,e.pageY-this.offsetTop;y=!0,o(e.pageX-this.offsetLeft,e.pageY-this.offsetTop),t()}),$("#canvas").mousemove(function(e){y&&(o(e.pageX-this.offsetLeft,e.pageY-this.offsetTop,!0),t())}),$("#canvas").mouseup(function(){y=!1}),$("#canvas").mouseleave(function(){y=!1}),$("#choosePurple").mousedown(function(){x=f}),$("#chooseGreen").mousedown(function(){x=u}),$("#chooseYellow").mousedown(function(){x=l}),$("#chooseBrown").mousedown(function(){x=m}),$("#chooseRed").mousedown(function(){x=h}),$("#chooseBlack").mousedown(function(){x=d});var y,v=new Array,g=new Array,p=new Array;$("#clearCanvas").mousedown(function(){v=new Array,g=new Array,p=new Array,n()})}),$("#convertCanvas").mousedown(function(){var e=canvas.toDataURL("image/png");$("#canvascontent").val(e),console.log(e)})});