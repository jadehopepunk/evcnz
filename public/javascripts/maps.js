function loadCommunitiesListMap() {
  var latlng = new google.maps.LatLng(-41.14557,172.96875);
  var myOptions = {
    zoom: 5,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
}
