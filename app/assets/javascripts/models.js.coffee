# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

$(document).ready ->
  $("[id^=model__change]").click ->
    modelID = $(this).attr("modelID") 
    userID = $(this).attr("userID") 
    projectID = $(this).attr("projectID") 
    CRUDmethod =  $(this).attr("name")
    data = {model: {id: modelID}}
    data["model"][CRUDmethod] =  $(this).val()
    $.ajax({
      url: '/users/' + userID + '/projects/' + projectID + '/models/' + modelID,
      type: 'PATCH',
      #dataType: 'js',
      data: data,
    })

