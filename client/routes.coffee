Router.configure
  layoutTemplate: "AppLayout"

Router.onBeforeAction ()->
  unless Meteor.userId()
    Router.go('login')
    this.next()
  else
    Router.go('home')
    this.next()

Router.map ->
  this.route '/',
    template: 'home'
    name: 'home'
    action: ->
      this.render('homeHeader', {to: 'AppHeader'})
      this.render('modal', {to: 'AppFooter'})
      this.render()
  this.route '/login',
    template: 'login'
    action: ->
      this.render('loginHeader', {to: 'AppHeader'})
      this.render()
