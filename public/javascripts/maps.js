function loadCommunitiesListMap(communities) {
  var myOptions = {
    zoom: 5,
    center: new google.maps.LatLng(-41.14557,172.96875),
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    mapTypeControl: false,
    scrollwheel: false
  };
  var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
  
  for (var i = 0; i < communities.length; i++) {
    var community = communities[i].community;
    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(community.latitude, community.longitude),
      map: map, 
      title: community.name
    });
    var contentString = '<h3>' + community.name + '</h3>' + '<a href="' + community.url + '">Click for more details.</a>';
    var infowindow = new google.maps.InfoWindow({
        content: contentString
    });
    google.maps.event.addListener(marker, 'click', function() {
      infowindow.open(map,marker);
    });
  }
}
