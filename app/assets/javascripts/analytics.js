$('#button').on('click', function() {
  ga('send', 'event', 'button', 'click', 'nav-buttons');
});



// $(document).on('page:change', function() {
//  if (window._gaq != null) {
//   return _gaq.push(['_trackPageview']);
//  } else if (window.pageTracker != null) {
//   return pageTracker._trackPageview();
//  }
// });



// //   @trackPageview: (url) ->
// //       if url
// //         window._gaq.push ["_trackPageview", url]
// //       else
// //         window._gaq.push ["_trackPageview"]
// //       window._gaq.push ["_trackPageLoadTime"]