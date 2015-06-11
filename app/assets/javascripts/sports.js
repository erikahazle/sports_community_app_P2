
$(document).ready(function() {
  if ($('.sport-show-communities').length == 0) {
    $('.communities-exist').append('<p>no communities have been created for this sport yet. Be the first one to add one!</p>');
  }
  if ($('.sport-single-post').length == 0) {
    $('.sport-latest-post').append('<p>we are still waiting for contributions :)</p>');
  }
})