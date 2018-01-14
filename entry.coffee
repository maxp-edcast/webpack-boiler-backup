require './style.sass'

window.$ = require 'jquery'
window.Vue = require('vue').default
window.VueRouter = require('vue-router').default
root_selector = '#root-wrapper'

components = require "./components.coffee"
router = require('./router.coffee').load({components})

$ ->
  new Vue
    el: root_selector
    components: components
    router: router
