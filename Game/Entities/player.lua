require "Game.Entities.entity"
Player = {};
Player.__index = Player

--constructor
function Player.new(world, x, y, _name)
  local _body = love.physics.newBody(world, x, y, "dynamic")
  local  _shape = love.physics.newCircleShape(20)
  local _fixture = love.physics.newFixture(_body, _shape, 1) -- Attach fixture to body and give it a density of 1.-
  local instance = {
    body = _body,
    shape = _shape,
    fixture = _fixture,
    name = _name,
  }
  setmetatable(instance, Player)
  return instance
end

-- set up inheritance.
setmetatable(Player, {__index = Entity})

function Player:update(dt)
    --here we are going to create some keyboard events
    if love.keyboard.isDown("right") then --press the right arrow key to push the ball to the right
      self.body:applyForce(400, 0)
    elseif love.keyboard.isDown("left") then --press the left arrow key to push the ball to the left
      self.body:applyForce(-400, 0)
    elseif love.keyboard.isDown("up") then --press the up arrow key to set the ball in the air
      self.body:applyForce(0, -1000)
    end
end

function Player:draw()
  love.graphics.setColor(0.76, 0.18, 0.05) --set the drawing color to red for the ball
  love.graphics.circle("fill", self.body:getX(), self.body:getY(), self.shape:getRadius())
end

return Player;
