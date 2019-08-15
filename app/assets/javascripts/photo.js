$(function(){
$('#image').on('change', function(){
  var file = event.target.files[0];
  console.log(file)
  var reader = new FileReader();
  reader.onload = (function(file){
    var ar = new Uint8Array(reader.result);  
    $(".upload_image").empty().append($("<img>").attr("src", event.target.result));
    
})
reader.readAsDataURL(file);
})

})
