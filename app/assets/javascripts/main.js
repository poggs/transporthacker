/*
 *  JavaScript functions for the MainController
 */

function initMap() {
  map = new L.Map('map');
  var osmUrl='http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';
  var osmAttrib='Map data © <a href="http://openstreetmap.org">OpenStreetMap</a> contributors';
  var osm = new L.TileLayer(osmUrl, {minZoom: 8, maxZoom: 12, attribution: osmAttrib});		
  map.setView(new L.LatLng(51.50738, -0.127265),9);
  map.addLayer(osm);
}

$(document).ready(function() {
  initMap();
});
