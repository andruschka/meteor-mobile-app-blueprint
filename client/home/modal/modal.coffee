Template.modal.events
  "click #close-modal": (event, template) ->
    event.preventDefault()
    $('#home-modal').removeClass('active')
