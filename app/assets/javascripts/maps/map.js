var mapObject;
var data;
var markers;
// data = [
//   {latLng: [-20.2, 57.5], name: 'Bluehole'}
// ]

function makeMap(){
  $.get('/worldmap.json', function(response){
  $('#world-map').vectorMap({
    onRegionOver: function(event, code){
      mapHover(event, code);
    },
    onRegionClick: function(event, code, b){
      mapZoom(event, code);
    },
    onRegionLabelShow: function(e, el, code){
      tooltip(el, code);
    },
    regionStyle: {
      initial: {
        // 'fill-opacity': '0.5'
      },
      hover: {
        // 'fill-opacity': '1'
      }
    },
    onMarkerClick: function(event, code){
      regionClick(code);
    },
    series: {
      regions: [{
        attribute: 'fill',
        normalizeFunction: 'linear',
        scale: ['#B31212', '#FF3333'],
        values: response.data
      }]
    },
    markers: response.markers
  })
  data = response.data;
  markers = response.markers;
  mapObject = $('#world-map').vectorMap('get', 'mapObject');
  // mapObject.series.regions[0].setValues(getRandomColor());
  })
}


function randomColor(){
    var letters = '0123456789ABCDEF'.split('');
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
  }

function getRandomColor() {
  palette = ['#B31212', '#FF3333', '#FB9D34', '#A8BF12', '#009B9D'];
  var colors = {}, key;
  for (key in mapObject.regions) {
    colors[key] = palette[Math.floor(Math.random() * palette.length)];
  }
  return colors;
}

function mapHover(event, code){

}

function mapZoom(event, code){
  // mapObject.setFocus(code, 0.2, 0.2)
}

function tooltip(el, code){
  el.html(el.html()+' has ' + data[code] + ' divesites');
}

function regionClick(code){
  window.location = 'countries/' + markers[code].id
}
