require "Game.Entities.entity"
Tile = {};
Tile.__index = Tile

  --constructor
  function Tile.new(world, x, y, width, height)
    local _body = love.physics.newBody(world, x, y)
    local  _shape = love.physics.newRectangleShape(width, height)
    local _fixture = love.physics.newFixture(_body, _shape)
    local instance = {
      body = _body,
      shape = _shape,
      fixture = _fixture,
    }
    setmetatable(instance, Tile)
    return instance
  end

  -- set up inheritance.
  setmetatable(Tile,{__index = Entity})

  --overwriteen
  function Tile:draw()
    love.graphics.setColor(0.28, 0.63, 0.05) -- set the drawing color to green for the ground
    love.graphics.polygon("fill", self.body:getWorldPoints(self.shape:getPoints())) -- draw a "filled in" polygon using the ground's coordinates
  end

return Tile;
