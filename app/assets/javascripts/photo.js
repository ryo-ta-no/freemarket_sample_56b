$(function(){
$('#image').on('change', function(e){
  var file = e.target.files[0];
  console.log(file)
  var reader = new FileReader();
  reader.onload = (function(e){
    var ar = new Uint8Array(reader.result);  
    $(".photo_display").append($("<img class = photo>").attr("src", e.target.result));
})
reader.readAsDataURL(file);
$('#image').css({'display':'none'});
console.log(1)
$('#image2').css('display','');
console
})

$('#image2').on('change', function(e){
  var file = e.target.files[0];
  console.log(file)
  var reader = new FileReader();
  reader.onload = (function(e){
    var ar = new Uint8Array(reader.result);  
    $(".photo_display").append($("<img class = photo>").attr("src", e.target.result));
})
})
})
