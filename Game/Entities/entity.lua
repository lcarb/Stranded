local entity = {}

  entity.Entity =
  {
    -- Entity x and y Positions
    x = 0, y = 0,

    -- Entity bounding box positions
    bbx_left = 0, bbx_right = 0, bbx_up = 0, bbx_down = 0
  }

  function entity.Entity:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
  end

return entity
