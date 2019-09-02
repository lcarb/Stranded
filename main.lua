local em = require("Game/Entities/entity")

function love.load()

  player = em.Entity:new()

end

function love.update(dt)
  right = 0
  left = 0
  down = 0
  up = 0

  speed = 5

  if love.keyboard.isDown("d") then right = 1 else right = 0 end
  if love.keyboard.isDown("a") then left = 1 else left = 0 end
  if love.keyboard.isDown("s") then down = 1 else down = 0 end
  if love.keyboard.isDown("w") then up = 1 else up = 0 end

  player.x = player.x + (right - left)*speed
  player.y = player.y + (down - up)*speed

end

function love.draw()
    love.graphics.circle("fill", player.x, player.y, 5)
end
