# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

answerCount = 0
answerRow = '<tr><td class="answerTd"><input id="question_polls_attributes_@idx@_name" name="question[polls_attributes][@idx@][name]" type="text" value="" /></td></tr>' 
     
$ ->
  $(".answerRemove").click ->
    div = $(this)
    row = div.closest("tr")
    destroy = row.find('input[id*="_destroy"]')
    if destroy.length > 0
      destroy.val("true")
      row.hide()
    else
      row.remove()
   
  $(".answerAdd").click ->
    if answerCount == 0
      answerCount = $('#tblAnswer tr').length
    else
      answerCount++
    temp = answerRow;
    temp = temp.replace(/@idx@/g, answerCount)
    $('#tblAnswer').append(temp)
    
    
