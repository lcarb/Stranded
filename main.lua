function love.load()

  player = {}
  player.x = 400;
  player.y = 300;

  love.keyboard.setKeyRepeat(true)
end

function love.update(dt)
  if love.keyboard.isDown("d") then
    player.x = player.x+1
  elseif love.keyboard.isDown("a") then
    player.x = player.x-1
  end
end

function love.draw()
    love.graphics.circle("fill", player.x, player.y, 5)
end
