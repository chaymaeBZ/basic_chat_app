# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

messages_appender = (content) ->
  $('#messages-table').append content

$(document).on 'turbolinks:load', ->
  #messages_appender("hello, world!")
