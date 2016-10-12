local aspectRatio = display.pixelHeight / display.pixelWidth

--if aspectRatio  < 1.5 then
--	ancho = math.ceil(1200/aspectRatio)
--else
--	ancho= 800
--end
--			
--if aspectRatio > 1.5 then
--	largo = math.ceil(800 * aspectRatio)
--else
--	largo = 1200
--endif aspectRatio  < 1.5 then
	ancho = math.ceil(1200/aspectRatio)	largo = 1200
else
	ancho= 800	largo = math.ceil(800 * aspectRatio)
end

application = {
	content = {
		width = 800,
		height = 1200,
		scale = "zoomStretch",
		fps = 30,
	},
}