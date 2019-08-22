$(function() {
	$('#category_drop').hover(
			function() {
        $('#category_drop').css('color', '#0099e8');
      console.log(1)
        $.ajax({
          url: 'category_drop_parent',
          type: 'GET',
          dataType: 'json',
        })
        console.log(2)
        done(function(parent){
          insertHTML = '';
          parent.forEach(function(parents){
            insertHTML += parents;
            category_drop_parent(insertHTML);
          })
        })
			},
			function() {
				$('#category_drop').css('color', '#333');
			}
	);
});