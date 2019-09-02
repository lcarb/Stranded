require "Game.Entities.tile"
require "Game.Entities.player"
require "Game.Entities.entity"

function love.load()
  love.physics.setMeter(64)
  world = love.physics.newWorld(0, 9.81*64, true)
  player = Player.new(world, 650/2, 650/2, "Player")
  ground = Tile.new(world, 650/2, 650 - 50 /2, 650, 50)
  love.graphics.setBackgroundColor(0.41, 0.53, 0.97) --set the background color to a nice blue
  love.window.setMode(650, 650) --set the window dimensions to 650 by 650
end

function love.update(dt)
  world:update(dt)
  player:update(dt)
end

function love.draw()
    player:draw()
    ground:draw()
end
