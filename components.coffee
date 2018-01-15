module.exports = (->

  # I wish this file could be more DRY, but it's not possible
  # to use interpolation in webpack load paths

  @AppForm =
    template: require("html-loader!./views/helpers/app_form.slim")

  @AppButton =
    template: require("html-loader!./views/helpers/app_button.slim")
    props: ['text', 'callback']
    methods:
      on_click: -> @$emit 'clicked'

  @export =
    template: require("html-loader!./views/pages/export.slim")
    components: {}

  @import =
    template: require("html-loader!./views/pages/import.slim")
    components: {}

  @levels =
    template: require("html-loader!./views/pages/levels.slim")
    components: {}

  @characters =
    template: require("html-loader!./views/pages/characters.slim")
    components: {}

  @items =
    template: require("html-loader!./views/pages/items.slim")
    components: {}

  @monsters =
    methods:
      open_create_form: ->
        console.log "thing"
    template: require("html-loader!./views/pages/monsters.slim")
    components:
      AppButton: @AppButton

  @skills =
    template: require("html-loader!./views/pages/skills.slim")
    components: {}

  @environments =
    template: require("html-loader!./views/pages/environments.slim")
    components: {}

  @navigation =
    template: require("html-loader!./views/pages/navigation.slim")
    components: {}

  @root =
    template: require("html-loader!./views/pages/root.slim")

  this

).apply {}


