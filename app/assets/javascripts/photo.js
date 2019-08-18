$(function(){
$('#image').on('change', function(e){
  var file = e.target.files[0];

  var reader = new FileReader();
  reader.onload = (function(e){
    var ar = new Uint8Array(reader.result);  
    $(".upload_image").append($("<img>").attr("src", e.target.result));
    // $("#image").append(file);
    console.log(e.target.result)
    console.log(1)
})
reader.readAsDataURL(file);
})

})
