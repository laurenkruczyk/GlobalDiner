// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require vendor/jquery-jvectormap-1.2.2.min
//= require maps/world-map 
//= require chosen-jquery
//= require maps/map
//= require_tree .

$(function(){
  $(".my_select_box").chosen({
    allow_single_deselect: true,
    placeholder_text_single: "Select a country",
  });
})
