$(document).on 'pageinit', ->
    $('[data-localize]').localize('./localization/localization')
    
window.addEventListener('load', ->
    new FastClick(document.body)
, false)

# only executed on phonegap 
document.addEventListener('deviceready', ->
    navigator.splashscreen.hide()
, false)