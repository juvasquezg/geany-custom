-- my löve game

function love.load()
  image = love.graphics.newImage("cake.jpg")
  local f = love.graphics.newFont(12)
  love.graphics.setFont(f)
  love.graphics.setColor(0,0,0,255)
  love.graphics.setBackgroundColor(255,255,255)
end

function love.update(dt)
  if love.keyboard.isDown("up") then
    num = num + 100 * dt -- this would increment num by 100 per second
  end
end

function love.draw()
  love.graphics.draw(image, imgx, imgy)
  love.graphics.print("Click and drag the cake around or use the arrow keys", 10, 10)
end


function love.mousepressed(x, y, button)
  if button == 'l' then
    imgx = x -- move image to where mouse clicked
    imgy = y
  end
end

function love.mousereleased(x, y, button)
  if button == 'l' then
    fireSlingshot(x,y) -- this totally awesome custom function is defined elsewhere
  end
end

function love.keypressed(key, unicode)
  if key == 'b' then
    text = "The B key was pressed."
  elseif key == 'a' then
    a_down = true
  end
end

function love.keyreleased(key, unicode)
   if key == 'b' then
      text = "The B key was released."
   elseif key == 'a' then
      a_down = false
   end
end
