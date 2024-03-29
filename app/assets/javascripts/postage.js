$(function(){
function appendOption(postage){
  var html = `<option value="${postage.id}">${postage.name}</option>`;
  return html;
}
function appendChildrenBox(insertHTML){
  var text1 = '発送の方法'
  var text2 = '必須'
  var childSelectHtml = '';
  childSelectHtml = `<div class='postage-select-wrapper' id='children_wrapper'>
                      <div class='product_postage-group'>
                      <div class='product_header'>
                        ${text1}
                      </div>  
                      <div class='product_require'>
                        ${text2}   
                      </div>
                      </div>
                      <div class='product_postage-select'>
                      <select class='postage_select-box', id='child_postage' name='item[postage_id]'>
                      <option value='---'>---</option>
                      ${insertHTML}
                      </select>
                      <i class='fa fa-chevron-down'></i>
                      </div>
                      </div>`;
  $('.product_select-postage_children').append(childSelectHtml);
}


  $(document).on('change', '#postage_select', function(){
    var postageitem = document.getElementById('postage_select').value; 
    if (postageitem != ''){
      $.ajax({
        url: 'postage_children',
        type: 'GET',
        data: {postageitem: postageitem},
        dataType: 'json',
      })
      .done(function(children){
        var insertHTML = '';
        children.forEach(function(child) {
          insertHTML += appendOption(child);
        });
        appendChildrenBox(insertHTML);
        $(document).on('change', '#postage_select', function(){
          $('#children_wrapper').remove();
        })
      })
      .fail(function(){
        alert('配送方法の提示に失敗しました');
      })
    }
  })
})