function love.load()
    require 'scene_manager'
end

function love.draw()
    SceneManager.current_scene:draw()
end

function love.update(dt)
    SceneManager.current_scene:update(dt)
end

function love.keypressed(key, scancode, isrepeat)
    SceneManager.current_scene:keypressed(key, scancode, isrepeat)
end

function love.keyreleased(key, scancode)
    SceneManager.current_scene:keyreleased(key, scancode)
end