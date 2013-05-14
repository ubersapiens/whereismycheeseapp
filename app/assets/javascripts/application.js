//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(function(){
  
  // This function is called by the ajax:success event handler
  // It replaces the content of the #pagebody div with the HTML
  // sent by the server (see site#rating action) 
  function rating_success(e, data) {
    // e is the event object
    // data is the returned html
    $("#pagebody").html(data);
    setRatingAjax();
  }
  
  // This function is called by the ajax:error event handler
  // It appends a paragraph with ERROR in it to the #pagebody div
  function rating_error(event, xhr, status, error) {
    $("#pagebody").append("<p>#{error}</p>");
  }
  
  // Adds the ajax:success and ajax:error event handlers
  // On success, the rating_success function is called
  // On error, the rating_error function is called
  function setRatingAjax() {
    $("#new_rating").on("ajax:success", rating_success)
      .on("ajax:error", rating_error);
  }

  // Calls the setRatingAjax function above to add the
  // ajax:success and ajax:error event handlers
  setRatingAjax();
  
  // Removes success flash messages after 5 seconds
  $('.alert-success').delay(5000).slideUp();
  
  function get_cheese_list(qry_string) {
    qry_string = qry_string || 'name';
    $.ajax({
      url: '/cheeses?order=' + qry_string,
      method: 'GET',
      dataType: 'html',
      success: function(data) {
        $('#cheese_list').html(data);
        $('#cheese_selector').on('change', function(){
          get_cheese_list($(this).val());
        });
      }
    });
  }
  
  if ($('#cheese_list').length > 0) {
    get_cheese_list();
  }
});
