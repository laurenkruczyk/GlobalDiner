var mapObject;
var data;
var palette = ["#3643B2", "#27FF9B", "#02A68D", "#00FFFF", "#007BEB"];

function makeMap(){
  $.get('/worldmap.json', function(response){
  $('#world-map').vectorMap({
    backgroundColor: '#27B0D6',
    regionsSelectable: true,

    // onRegionOut: function(event, code){
    // },
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
        },
        hover: {
             "fill-opacity": 0.8
        },
        selected: {
          fill: '#77fc8b'
        }
        // selectedHover: {
        //   fill: '#ff4500'
        // }
      },
    })
   
    data = response.data;
    regions = response.regions;
    mapObject = $('#world-map').vectorMap('get', 'mapObject');
    for(var country in mapObject.regions){
      mapObject.regions[country].element.style.initial.fill = palette[Math.floor(Math.random() * palette.length)];
    }
    })
  }


  //     data = response.data;
  //   regions = response.regions;
  //   mapObject = $('#world-map').vectorMap('get', 'mapObject');
  //   for(var country in mapObject.regions){
  //     mapObject.regions[country].element.style.hover.fill = palette[Math.floor(Math.random() * palette.length)];
  //   }
  //   })
  // }

  //  function getRandomColor(code) {
  //   palette = ['#b31212', '#ff3333', '#fb9d34', '#a8bf12', '#009b9d'];
  //   var colors = {}, key;
  //   for (key in mapObject.regions) {
  //     colors[key] = palette[Math.floor(Math.random() * palette.length)];
  //   }
  //   return colors;
  // }
 

// function mapHover(event, code){
//     mapObject.getRandomColor(code)
// }

// function mapZoom(event, code){
//   // mapObject.setFocus(code, 0.2, 0.2)
// }

function tooltip(el, code){
  el.html(el.html() + ' has ' + data[code].meals + ' delicious recipes');
}

function regionClick(code){
  window.location = 'countries/' + data[code].id //.id
}

// function getRandomColor() {
//     var letters = '0123456789ABCDEF'.split('');
//     var color = '#';
//     for (var i = 0; i < 6; i++ ) {
//         color += letters[Math.floor(Math.random() * 16)];
//     }
//     return color;
// }


