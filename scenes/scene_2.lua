local scene = {}

function scene:load()
    maiq = love.graphics.newImage("images/maiq.jpeg")
    x = 50
    y = 50
 end
 function scene:draw()
    love.graphics.draw(maiq, x, y)
 end

 return scene