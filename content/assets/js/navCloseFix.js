// Ensure that Nav menus close when user clicks or taps outside of them
jQuery(document).ready(function($) {
  $(document).click(function (event) {
    "use strict";

    // Check what the user clicked on
    var target = $(event.target);
    
    if (! target.is("a.nav-link, button, input.paypal-btn")) {
      $('.navbar-collapse').collapse('hide');
    }
  });
});
