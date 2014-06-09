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
//= require jquery.ui.all
//= require turbolinks
//= require_tree .

function MenuEvents() {
  
  var menu_width = $('#menu_bar').width()/parseFloat($("header").css("font-size"));
  collapse_offset = menu_width - 0.8;
  collapse_offset = "-" + collapse_offset + 'em';

  $('#menu_bar').css('margin-left', collapse_offset);
  $('#circleBox').css('margin-left', '-1.6em')

  $('#menu-icon').click(function(){

    if($('#menu_bar').hasClass('collapsed'))
    {
      $('#menu_bar').css('margin-left', '0em');
      $('#circleBox').css('margin-left', '-'+ menu_width + 'em')
    }
    else
    {
      $('#menu_bar').css('margin-left', collapse_offset);
      $('#circleBox').css('margin-left', '-1.6em')
    }

    $("#menu_bar").toggleClass('collapsed');
    $("#menu_bar").toggleClass('expanded');
    
    return false;
  });
}


$(document).ready(function(){ MenuEvents().delay(800); });
$(document).on('page:load', function(){ MenuEvents().delay(800); });