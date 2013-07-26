// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
var label = Ti.UI.createLabel();
win.add(label);
win.open();

// TODO: write your module tests here
var Mapbox = require('sc.mapbox');
Ti.API.info("module is => " + Mapbox);

var map = Mapbox.createView({
	host: 'tiles.snowciety.com/snowciety',
	minZoom: 12,
	maxZoom: 18,
	zoom: 12,
	center: {lat: 47.05992, lon: 11.66954},
	width: Ti.UI.FILL,
	height: Ti.UI.FILL
});
 
win.add(map);

