# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#runs').imagesLoaded ->
    $('#runs').masonry
      itemSelector: '.box'
      isFitWidth: true
$ ->
  $('#months').imagesLoaded ->
    $('#months').masonry
      itemSelector: '.box'
      isFitWidth: true     
      gutterWidth: 40
