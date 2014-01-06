class @World
  context = null
  clouds = []
  constructor: (@context) ->
    for i in [1..15]
      cx = Math.random() * 800
      cy = Math.random() * 300
      clouds.push(new Cloud(@context, 'assets/images/cloud.png', cx, cy))

  update: () =>
    for cloud in clouds
      #log("delta: #{delta}")
      cloud.update(delta)
      cloud.draw()
