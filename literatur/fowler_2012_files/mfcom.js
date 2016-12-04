'use strict';

$(document).ready(function () {
  attachNavmenuEvents();
});

function attachNavmenuEvents() {
  // $('#top-navmenu').toggle(); //debugging toggle
  $('#bottom-navmenu').hide();
  $('#banner .navmenu-button').click(function (e) {
    e.preventDefault();
    $('#top-navmenu').toggle();
  });
  $('#footer .navmenu-button').click(function (e) {
    e.preventDefault();
    $('#bottom-navmenu').toggle();
    $('html, body').scrollTop($('#bottom-navmenu').offset().top);
  });
  $('.navmenu .close').click(function (e) {
    e.preventDefault();
    $(e.target).closest(".navmenu").parent().toggle();
  });
}

//# sourceMappingURL=mfcom.js.map