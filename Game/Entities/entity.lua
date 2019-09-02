Entity = {}
Entity.__index = Entity

  function Entity.new(_body, _shape, _fixture)
    local instance = {
      body = _body,
      shape = _shape,
      fixture = _fixture,
    }
    setmetatable(instance, Entity)
    return instance
  end

  function Entity:ha()

  end

return Entity;
