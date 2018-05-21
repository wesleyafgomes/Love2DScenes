local starting_scene = 'scene_1'

SceneManager = {}
function SceneManager:load(scene_name, args)
    args = args or nil

    local scene = require('scenes.' .. scene_name)

    if(scene_name == 'scene_base') then
        return scene
    end

    setmetatable(scene, {__index = SceneManager.scene_base})
    scene:load(args)

    return scene
end

function SceneManager:change_scene(scene_name, args)
    self.current_scene = self:load(scene_name, args)
end

SceneManager.scene_base = SceneManager:load('scene_base')
SceneManager.current_scene = SceneManager:load(starting_scene)