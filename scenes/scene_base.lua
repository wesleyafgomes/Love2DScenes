local SceneBase = {}

function SceneBase:load(args)
    args = args or nil
    self.args = args
end

function SceneBase:draw()
end

function SceneBase:update(dt)
end

function SceneBase:keypressed(key, scancode, isrepeat)
end

function SceneBase:keyreleased(key, scancode)
end

return SceneBase