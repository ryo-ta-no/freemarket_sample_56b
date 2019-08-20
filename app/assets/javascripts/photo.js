$(function(){
  
  $('.file_field').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);  
      $(".photo_display").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);

  var num = $('.photo_display img').length;
  if (num == 0){
  $('#photo').css({'display':'none'});
  $('#photo2').css('display','');
  $('.remove_btn1').css('display','');
  }
  else if (num == 1){
    $('#photo2').css({'display':'none'});
    $('#photo3').css('display','');
    $('.remove_btn2').css('display','');
  }
  else if (num == 2){
    $('#photo3').css({'display':'none'});
    $('#photo4').css('display','');
    $('.remove_btn3').css('display','');
  }
  else if (num == 3){
    $('#photo4').css({'display':'none'});
    $('#photo5').css('display','');
    $('.remove_btn4').css('display','');
  }
  else if (num == 4){
    $('#photo5').css({'display':'none'});
    $('#photo6').css('display','');
    $('.remove_btn5').css('display','');
 
  }
  else if (num == 5){
    $('.image_label').css({'display':'none'});
    $('.remove_btn6').css('display','');

  }

  })





})
