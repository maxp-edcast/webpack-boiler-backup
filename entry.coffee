
window.$ = require 'jquery'

window.Vue = require('vue').default

template = require("html-loader!./views/index.slim")

window.Root = new Vue
  el: '#root-wrapper',
  template: template