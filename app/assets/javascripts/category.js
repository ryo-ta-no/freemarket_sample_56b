$(function(){
  function appendOption(category) {
    var html = `<option value="${category.category_name}" data-category="${category.id}">${category.category_name}</option>`;
    returnhtml;
  }
  function appendChildrenBox(insertHTML) {
    var childSelectHtml = '';
    childSelectHtml = `<div class='product-select-wrapper__added' id= 'children_wrapper'>
                        <div class='product_select'>
                        <select class="select-box" id="child_category" name="category_id">
                        <option value="---" data-category="---">---</option>
                        ${insertHTML}
                        <select>
                        </div>
                        </div>`;
  
  $('.product_select-details').append(childSelectHtml);
  }

  function appendGrandchildrenBox(insertHTML) {
    var grandchildSelectHtml = '';
    grandchildSelectHtml = `<div class='product-select-wrapper__added' id= 'grandchildren_wrapper'>
                            <div class='product_select'>
                            <select class="select-box" id="child_category" name="grandcategory_id">
                            <option value="---" data-category="---">---</option>
                            ${insertHTML}
                            <select>
                            </div>
                            </div>`;
  $('.product_select-details').append(grandchildSelectHtml);
  }

  $("#parent_category").on('chang', function(){
    var parentCategory = document.getElementById('parent_category').value;
    
  })
})