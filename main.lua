require("harmonic")

function love.load()
	width = love.graphics.getWidth()
	height = love.graphics.getHeight()

	harmonic1 = Harmonic:create(40, 0, 800, 200, 0.001, 20)
	harmonic2 = Harmonic:create(80, 0, 800, 400, 0.005, 7)
	

end

function love.draw()
	harmonic1:draw()
	harmonic2:draw()
end