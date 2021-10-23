Harmonic = {}
Harmonic.__index = Harmonic

function Harmonic:create(A, x_begining, x_end, y, angleVel, step)
	local harmonic = {}
	setmetatable(harmonic, Harmonic)
	harmonic.A = A
	harmonic.angleVel = angleVel
	harmonic.step = step
	harmonic.x_begining = x_begining
	harmonic.x_end = x_end
	harmonic.y = y
	harmonic.angle = 0.1
	
	width = love.graphics.getWidth()
	height = love.graphics.getHeight()

	return harmonic
end

function Harmonic:draw()
	for x = self.x_begining, self.x_end, self.step do
		y = self.A * math.sin((self.angle + x/200)*4)
		love.graphics.setColor(255, 255, 255)
		love.graphics.circle("line", x, self.y+y, 10)
		local color_x = x / (self.x_end-self.x_begining) 
		local color_y = y / self.A
		love.graphics.setColor(color_x, color_y, color_x*2)
		love.graphics.circle("fill", x, self.y+y, 10)
	end
	self.angle = self.angle + self.angleVel
end