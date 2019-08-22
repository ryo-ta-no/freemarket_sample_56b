$(function(){
  $('#price_calc').on('input', function(){
    var data = $('#price_calc').val();
    if ((data >= 300) && (data <= 9999999))  {
    var profit = Math.round(data * 0.9)
    var fee = (data - profit)
    $('.right_bar').html(fee)
    $('.right_bar').prepend('¥')
    $('.right_bar_2').html(profit)
    $('.right_bar_2').prepend('¥')
    $('#price').val(data)
    if(profit == '') {
    $('.right_bar_2').html('');
    $('.right_bar').html('');
    }
  }
  else if ((data >= 300) && (data >= 9999999)) {
    $('.right_bar').html('');
    $('.right_bar_2').html('');
    
  }
  })
})