
window.$ = require 'jquery'
window.Vue = require('vue').default

root_template = require("html-loader!./views/index.slim")

root_selector = '#root-wrapper'

$ ->
  new Vue
    el: root_selector
    components:
      root:
        template: root_template
