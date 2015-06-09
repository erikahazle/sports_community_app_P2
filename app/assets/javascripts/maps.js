console.log('Connected')

// GOOGLE MAPS

var markerCount = 0;
var map;
 
//Initializes the map…
function initialize() {
    var myLatlng = new google.maps.LatLng(46.855141, -96.8372664);
    var map_canvas = document.getElementById('map_canvas');
    var map_options = {
        center: myLatlng,
        zoom: 5,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    map = new google.maps.Map(map_canvas, map_options);
}   
 
 
//This function will add a marker to the map each time it
//is called.  It takes latitude, longitude, and html markup
//for the content you want to appear in the info window
//for the marker.
function addMarkerToMap(lat, long){
    debugger;
    var infowindow = new google.maps.InfoWindow();
    var myLatLng = new google.maps.LatLng(lat, long);
    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        animation: google.maps.Animation.DROP,
    });  
}

$(document).ready(function() {
  
  if($('#map-canvas').length > 0) {
    initialize();
    sport_id = $('h2').attr('data-id');
    console.log("sport_id is: " + sport_id);
    $.ajax({
      type: 'GET',
      url: '/sports/' + sport_id,
      dataType: 'json'
    }).done(function(data) {
      $.each(data, function(index, data) {
        // addMarkerToMap(data.latitude, data.longitude);
      })
    })
  }
})


