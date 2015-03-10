Template.login.events
  "click #sign-in": (event, template) ->
    event.preventDefault()
    email = $('#email-tf').val().trim()
    pass = $('#pass-tf').val()
    if email? and email.length > 0 and pass? and pass.length > 0
      Meteor.loginWithPassword email, pass, (err)->
        if err
          swal("#{err.reason}")
        else
          Router.go("home")
    else
      swal("Please type in an email and password!")
  'click #sign-up': (event, template) ->
    event.preventDefault()
    email = $('#email-tf').val().trim()
    pass = $('#pass-tf').val()
    if email? and email.length > 0 and pass? and pass.length > 0
      Accounts.createUser
        email: email
        password: pass
      , (err)->
        swal("#{err.reason}") if err
    else
      swal("Please type in an email and password!")
