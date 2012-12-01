$(function(){

  setInterval(run_game, 1000);

});

function run_game()
{
  $.ajax({
    type: "GET",
    url: "/ai.json"
  }).done(function(msg) {

    display_users(msg);

  });
}

function display_users(users)
{
  $('#players').empty();

  for(var i = 0; i < users.length; i++)
    $('#players').append('<img src="' + users[i].avatar.url + '" />');
}
