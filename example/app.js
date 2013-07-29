// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});




var mapbox = require('sc.mapbox');

var mapView = mapbox.createView({
	host: 'tiles.snowcietyapp.com/snowciety',
	minZoom: 12,
	maxZoom: 18,
	zoom: 13,
	centerLatLng: [45.467354,6.903534],
	width: Ti.UI.FILL,
	height: Ti.UI.FILL
});

win.add(mapView);
win.open();

var marker = mapView.createMarker({
	latlng: [45.467354,6.903534]
});

Ti.API.info(marker);
 
 
