window.addEventListener('load', ->
    new FastClick(document.body)
, false)

# only executed on phonegap 
document.addEventListener('deviceready', ->
    navigator.splashscreen.hide()
, false)
   
$(document).on 'pageinit', ->
   # applyBindings has to be called after every other js
   window.model = {
      l: getLocalized()
      quiz: new Quiz()
   }
   ko.applyBindings(model)