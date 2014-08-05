var mapObject;
var data;
var palette = ["#3643B2", "#27FF9B", "#02A68D", "#00FFFF", "#007BEB"];

function makeMap(){
  $.get('/worldmap.json', function(response){
  $('#world-map').vectorMap({
    backgroundColor: '#27B0D6',
    regionsSelectable: true,

    onRegionClick: function(event, code){
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



function tooltip(el, code){
  if (data[code].meals){
    description = ' has ' + data[code].meals + ' delicious recipes'
  } else {
    description = ' has no delicious recipes ... yet'
  }
  el.html(el.html() + description);
}

function regionClick(code){
  window.location = 'countries/' + data[code].id 
}




