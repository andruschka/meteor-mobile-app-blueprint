Template.homeHeader.events
  "click #open-modal": (event, template) ->
    event.preventDefault()
    $('#home-modal').addClass('active')
