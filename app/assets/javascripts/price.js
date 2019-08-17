$(function(){
  $('#price_calc').on('input', function(){
    var data = $('#price_calc').val();
    console.log(data)
    var profit = Math.round(data * 0.9)
    var fee = (data - profit)
    console.log(fee)
    $('.right_bar').html(fee)
    $('.right_bar').prepend('¥')
    console.log(profit)
    $('.right_bar_2').html(profit)
    $('.right_bar_2').prepend('¥')
    $('#price').val(data)
    console.log(1)
    if(profit == '') {
      console.log(345)
    $('.right_bar_2').html('');
    $('.right_bar').html('');
    }
  })
})