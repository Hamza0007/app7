# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
@abc=() ->
  alert "abc",
  $.ajax '/books',
  type : "POST"
  data :
    book:
      name: $("#book_name").val
  dataType: 'script'
  success  : (res, status, xhr) -> console.log res
  error    : (xhr, status, err) ->
  complete : (xhr, status) ->