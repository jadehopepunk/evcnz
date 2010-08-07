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
    alert(community.latitude);
    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(community.latitude, community.longitude),
      map: map, 
      title:"Hello World!"
    });
  }
}
