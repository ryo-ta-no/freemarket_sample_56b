$(function(){
  
  $('.file_field1').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);  
      $(".img_box1").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
})

  $('.file_field2').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);  
      $(".img_box2").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })
  
  $('.file_field3').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);  
      $(".img_box3").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })
  
  $('.file_field4').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);  
      $(".img_box4").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })
  
  $('.file_field5').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);  
      $(".img_box5").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })
  
  $('.file_field6').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);  
      $(".img_box6").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })
  
  $('.remove_btn1').on('click', function(){
    console.log(1)
    $('#image').val('');
    console.log(2)
    $('.img_box1').html('');
    console.log(3)
  })

  $('.remove_btn2').on('click', function(){
    console.log(1)
    $('#image2').val('');
    console.log(2)
    $('.img_box2').html('');
    console.log(3)
  })

  $('.remove_btn3').on('click', function(){
    console.log(1)
    $('#image3').val('');
    console.log(2)
    $('.img_box3').html('');
    console.log(3)
  })

  $('.remove_btn4').on('click', function(){
    console.log(1)
    $('#image4').val('');
    console.log(2)
    $('.img_box4').html('');
    console.log(3)
  })

  $('.remove_btn5').on('click', function(){
    console.log(1)
    $('#image5').val('');
    console.log(2)
    $('.img_box5').html('');
    console.log(3)
  })

  $('.remove_btn6').on('click', function(){
    console.log(1)
    $('#image6').val('');
    console.log(2)
    $('.img_box6').html('');
    console.log(3)
  })

})