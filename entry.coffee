
window.$ = require 'jquery'
window.Vue = require('vue').default

root_selector = '#root-wrapper'

root_template = require("html-loader!./views/index.slim")
test_template = require("html-loader!./views/test.slim")

window.obj = {foo: "bar"}

test_component =
  template: test_template
  props: ['foo']

root_component =
  data: ->
    bar: @_props.foo || {a: 1}
  template: root_template
  props: ['foo']
  components:
    test: test_component

$ ->
  new Vue
    el: root_selector
    components:
      root: root_component
