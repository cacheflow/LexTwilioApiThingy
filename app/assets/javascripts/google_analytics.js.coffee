$(document).on 'page:change', ->
 if window._gaq?
  _gaq.push (['_trackEvent', "Messages", "Sent"]
 else if window.pageTracker?
  pageTracker._trackEvent()


  