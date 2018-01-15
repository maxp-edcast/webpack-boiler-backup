module.exports = load: ({components}) -> (->

  new VueRouter
    mode: 'history'
    routes: [
      {
        path: "/",
        component: @root
      },
      {
        path: "/monsters",
        component: @monsters
      },
      {
        path: "/export",
        component: @export
      },
      {
        path: "/import",
        component: @import
      },
      {
        path: "/levels",
        component: @levels
      },
      {
        path: "/characters",
        component: @characters
      },
      {
        path: "/items",
        component: @items
      },
      {
        path: "/monsters",
        component: @monsters
      },
      {
        path: "/skills",
        component: @skills
      },
      {
        path: "/environments",
        component: @environments
      },
    ]

).apply components