module.exports = (->

  # I wish this file could be more DRY, but it's not possible
  # to use interpolation in webpack load paths

  @export =
    template: require("html-loader!./views/export.slim")
    components: {}

  @import =
    template: require("html-loader!./views/import.slim")
    components: {}

  @levels =
    template: require("html-loader!./views/levels.slim")
    components: {}

  @characters =
    template: require("html-loader!./views/characters.slim")
    components: {}

  @items =
    template: require("html-loader!./views/items.slim")
    components: {}

  @monsters =
    template: require("html-loader!./views/monsters.slim")
    components: {}

  @skills =
    template: require("html-loader!./views/skills.slim")
    components: {}

  @environments =
    template: require("html-loader!./views/environments.slim")
    components: {}

  @navigation =
    template: require("html-loader!./views/navigation.slim")
    components: {}

  @root =
    template: require("html-loader!./views/root.slim")
    components:
      {@navigation}


  this

).apply {}


