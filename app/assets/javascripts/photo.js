$(function(){
$('#image').on('change', function(e){
  var file = e.target.files[0];
  console.log(file)
  var reader = new FileReader();
  reader.onload = (function(e){
    var ar = new Uint8Array(reader.result);  
    $(".upload_image").append($("<img>").attr("src", e.target.result));
    
})
reader.readAsDataURL(file);
console.log(file)
})

})
