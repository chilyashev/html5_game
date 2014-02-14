class @World
  context = null
  clouds = [] # TODO: get rid of that
  entities = []
  constructor: (@context) ->
    @initEntities();

  update: () =>
    for cloud in clouds
      #log("delta: #{delta}")
      cloud.update(delta)
      cloud.draw()
    for entity in entities
      entity.update(delta)
      entity.draw()

  initEntities: () =>
    for i in [1..5]
      cx = Math.random() * 800
      cy = Math.random() * 300
      clouds.push(new Cloud(@context, 'assets/images/cloud.png', cx, cy, "Cloud #{i}"))
    entities.push(new Player(@context))


