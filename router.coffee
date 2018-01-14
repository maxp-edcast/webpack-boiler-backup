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
      }
    ]

).apply components