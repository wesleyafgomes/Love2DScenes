local scene = {}

function scene:draw()
    love.graphics.print('Hello Worldo!', 20, 20)
end

function scene:keypressed(key, scancode, isrepeat)
    if(key == 'up') then
        SceneManager:change_scene('scene_2')
    end
end

return scene