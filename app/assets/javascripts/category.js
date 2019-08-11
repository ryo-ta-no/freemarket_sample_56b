
$(function(){
  function appendOption(category){
    var html = `<option value="${category.id}">${category.name}</option>`;
    return html;
  }
  function appendChidrenBox(insertHTML){
    var childSelectHtml = '';
      childSelectHtml = `<div class='product-select-wrapper' id= 'children_wrapper'>
                        <div class='product_category-select'>
                        <select class="category_select-box" id="child_category" name="category_id">
                        <option value="---">---</option>
                        ${insertHTML}
                        </select>
                        <i class='fa fa-chevron-down'></i>
                        </div>
                        <div class= 'product_select-grandchildren'>
                        </div>
                        </div>`;
    $('.product_select-children').append(childSelectHtml);
  }
  function appendgrandChidrenBox(insertHTML){
    var grandchildrenSelectHtml = '';
    grandchildrenSelectHtml = `<div class='product-select-wrapper' id= 'grandchildren_wrapper'>
                              <div class='product_category-select'>
                              <select class="category_select-box" id="grandchild_category" name="category_id">
                              <option value="---">---</option>
                              ${insertHTML}
                              </select>
                              <i class='fa fa-chevron-down'></i>
                              </div>
                              <div class= 'product_select-grandchildren'>
                              </div>
                              </div>`;
    $('.product_select-grandchildren').append(grandchildrenSelectHtml);
  }

  $('#category_select').on('change', function(){
    console.log(0)
    var productcategory = document.getElementById('category_select').value; 
    console.log(1)
      $.ajax({
        url: 'category_children',
        type: 'GET',
        data: { productcategory: productcategory },
        dataType: 'json'
      })
      .done(function(children){
        var insertHTML = '';
        children.forEach(function(child){
          insertHTML += appendOption(child);
        });
        appendChidrenBox(insertHTML);
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })

  });

  $(document).on('change', '#child_category', function(){
    console.log(2)
    var productcategory = document.getElementById('child_category').value;
    console.log(3)
    $.ajax ({
      url: 'category_grandchildren',
      type: 'GET',
      data: { productcategory: productcategory },
      dataType: 'json'
    })
    .done(function(grandchildren){
      console.log(4)
      var insertHTML = '';
      grandchildren.forEach(function(grandchild){
        console.log(5)
        insertHTML += appendOption(grandchild);
        });
        appendgrandChidrenBox(insertHTML);  
        })  
        .fail(function(){
          alert('カテゴリー取得に失敗しました');
        })
  });
});
