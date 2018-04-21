# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('div[id=\'comment-count\']').find('a').each ->
    url = $(this).attr('href')
    $(this).attr 'href', url + '/#disqus_thread'
  return
return
