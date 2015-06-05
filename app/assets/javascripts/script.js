$(document).ready(function(){
  console.log("this works!")

    $('#hm-text').click (function(event){
      event.preventDefault()
      console.log("clicked!")
      $('this').fadeOut({

      }, 100);
    })

});
