console.log('Connected')

// GOOGLE MAPS
var infowindow = null;
var map

function initialize() {
  var myLatlng = new google.maps.LatLng(51.5085300,-0.1257400);
  var mapOptions = {
    zoom: 10,
    center: myLatlng
  }
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}

$(document).ready(function() {
  
  if($('#map-canvas').length > 0) {
    google.maps.event.addDomListener(window, 'load', initialize);

    sport_id = $('h2').attr('data-id');
    console.log("sport_id is: " + sport_id);
    $.ajax({
      type: 'GET',
      url: '/sports/' + sport_id,
      dataType: 'json'
    }).done(function(data) {
      $.each(data, function(index, data) {
        var latLng = new google.maps.LatLng(data.latitude, data.longitude);
        var marker = new google.maps.Marker({
            position: latLng,
            map: map
        });
        var contentString = '<div>' + data.name + '</div>' +
        '<a href="/sports/' + data.sport_id + '/communities/' + data.id + '">Join the community</a>'
        var infowindow = new google.maps.InfoWindow({
          content: contentString
        });
        google.maps.event.addListener(marker, 'click', function() {
          infowindow.open(map,marker);
        });
      })
    })
  }
})


