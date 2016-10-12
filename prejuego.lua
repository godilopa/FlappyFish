-------------------------------------------------------------------------------------------------------------
--CARGA DE LIBRERíAS EXTERNAS
-------------------------------------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()

-------------------------------------------------------------------------------------------------------------
--FUNCIONES Y VARIABLES
-------------------------------------------------------------------------------------------------------------

--Coordenadas más usadas
local screenWidth = display.contentWidth 
local screenHeight = display.contentHeight 
local centerX = display.contentCenterX
local centerY = display.contentCenterY
local screenLeft = display.screenOriginX 
local screenRight = screenLeft + screenWidth
local screenTop = display.screenOriginY 
local screenBottom = screenTop + screenHeight

--Función que empieza el juego al realizar un evento tap sobre la pantalla
function onTap(event)
	storyboard.gotoScene( "juego" )
end

-------------------------------------------------------------------------------------------------------------
--FUNCIONES DEL STORYBOARD
-------------------------------------------------------------------------------------------------------------

function scene:createScene( event )
	local group = self.view
	
	--Definición del fondo de pantalla
	bg = display.newImageRect("bajoagua.png",screenWidth,screenHeight)
	bg.anchorX=0
	bg.anchorY=0
	group:insert(bg)

	--Definición del la imagen que explica como se mueve el pez
	instructions = display.newImageRect(group,"instrucciones.png",288/2,473/2)
	instructions.x= centerX
	instructions.y=centerY-50
	group:insert(instructions)
	
	--Definición del la imagen que señala que el pez se mueve al pulsar en la pantalla
	tap = display.newImageRect("tap.png",100,100)
	tap.x= centerX
	tap.y=centerY+180
	group:insert(tap)
	TextCandy.AddCharsetFromBMF("FONT1", "superMario.fnt",  50)

	collect = TextCandy.CreateText({
			fontName 	= "FONT1", 						
			x		= centerX,						
			y		= centerY-240,						
			text	 	= "Collect the coins",	
			originX	 	= "CENTER",							
			originY	 	= "CENTER",							
			textFlow 	= "CENTER",	
			charSpacing     = -2,
			lineSpacing     = 5,
			wrapWidth	= 700, 								
			showOrigin 	= false,	
			Color =  {0.71, 1, 0.21}
			})
	collect.height= 80
	group:insert(collect)
end

-------------------------------------------------------------------------------------------------------------------------

function scene:enterScene( event )
	local group = self.view
	
	--Eliminación de la escena anterior
	storyboard.removeScene("inicio")
	
	--Definición del evento tap sobre la pantalla
	Runtime:addEventListener("tap",onTap)
end

--------------------------------------------------------------------------------------------------------------------------

function scene:exitScene( event )
	local group = self.view
	
	--Eliminación del evento tap
	Runtime:removeEventListener("tap",onTap)
end

-------------------------------------------------------------------------------------------------------------
--CARGA DE LAS FUNCIONES DEL STORYBOARD
-------------------------------------------------------------------------------------------------------------

scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )
scene:addEventListener( "exitScene", scene )

---------------------------------------------------------------------------------

return scene