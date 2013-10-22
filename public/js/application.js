$(document).ready(function(){

  $('a').click(function(event) {
    event.preventDefault();
    $.ajax({
      url: "color",
      type: "get",
      dataType: 'json'
    }).done(function(result) {
      console.log(result);
      console.log(result.cell_number);
      $('li').eq(result.cell_number).css("background-color", result.chosen_color);
    });
  });
});
