var mapObject;
var data;


function makeMap(){
  $.get('/worldmap.json', function(response){
  $('#world-map').vectorMap({
    backgroundColor: '#0A3C7D',
    regionsSelectable: true,

    onRegionOver: function(event, code){
      getRandomColor(code);
    },
    onRegionClick: function(event, code){
      // mapZoom(event, code);
      regionClick(code);
    },
    onRegionLabelShow: function(e, el, code){
      tooltip(el, code);
    },
    regionStyle: {
        initial:  {
          fill: '#9CEBC7'
        }
        // hover: {
          // fill: '#F2F2F2'
        // }
      },
    })
   
    data = response.data;
    regions = response.regions;
    mapObject = $('#world-map').vectorMap('get', 'mapObject');
    mapObject.series.regions[0].setValues(getRandomColor());
    
    })
  }

   function getRandomColor(code) {
    palette = ['#b31212', '#ff3333', '#fb9d34', '#a8bf12', '#009b9d'];
    var colors = {}, key;
    for (key in mapObject.regions) {
      colors[key] = palette[Math.floor(Math.random() * palette.length)];
    }
    return colors;
  }
 

// function mapHover(event, code){
//     mapObject.getRandomColor(code)
// }

// function mapZoom(event, code){
//   // mapObject.setFocus(code, 0.2, 0.2)
// }

function tooltip(el, code){
  el.html(el.html());
}

function regionClick(code){
  window.location = 'countries/' + data[code] //.id
}


