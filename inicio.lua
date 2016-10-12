-------------------------------------------------------------------------------------------------------------
--CARGA DE LIBRERíAS EXTERNAS
-------------------------------------------------------------------------------------------------------------

local storyboard = require("storyboard")
local scene = storyboard.newScene()

local TextCandy = require("lib_text_candy")

local widget = require("widget")

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

--Sonido usado
local sndBack = audio.loadSound("underwater.wav" )

--Función que carga la siguiente escena
local function start (event)
	if event.phase == "ended" then
		storyboard.gotoScene( "prejuego")
	end
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

	--Definición del título usando la librería TextCandy y la letra superMario generada con BitmapFont Creator
	TextCandy.AddCharsetFromBMF("FONT1", "superMario.fnt",  50)

	titulo = TextCandy.CreateText({
			fontName 	= "FONT1", 						
			x		= centerX-40,						
			y		= centerY-150,						
			text	 	= "EZEQUIEL|  THE FISH",	
			originX	 	= "CENTER",							
			originY	 	= "CENTER",							
			textFlow 	= "CENTER",	
			charSpacing     = -5,
			lineSpacing     = -4,
			wrapWidth	= 400, 								
			showOrigin 	= false,	
			Color =  {0.05, 0, 0.62}
			})
	titulo.width= 400
	titulo.height= 270
	group:insert(titulo)
end

------------------------------------------------------------------------------------------------------

function scene:enterScene( event )
	local group = self.view

	--Si vuelve al inicio desde la pantalla final del juego elimina dicha escena
	storyboard.removeScene("postJuego")
	
	--Comienzo de la música de la pantalla de inicio
	audio.play(sndBack, {loops=-1,channel=1} )

	--Carga del botón start que llama al a función start para iniciar el juego usando la librería widget
	local botonStart = widget.newButton{
    	label = "Start",
   	 fontSize = 50,
    	onEvent = start,
    	emboss =true, -- para que se siga viendo la letra al pinchar
    	shape="roundedRect",
    	width = 220,
    	height = 80,
    	cornerRadius = 2,
    	fillColor = { default={ 0.96, 0.78, 0}, over={ 0.66, 0.64, 0 } },
    	strokeColor = { default={ 1, 0.4, 0 }, over={ 0.8, 0.8, 1} },
    	strokeWidth = 4
	}
	botonStart.x=centerX
	botonStart.y=centerY+140
	group:insert(botonStart)
	
	--Carga de la animación del título y comienzo de la misma usando lal ibrería TextCandy
	titulo:applyAnimation({
		startNow		= true,
		restartOnChange = true,
		charWise		= true,
		frequency 		= 250,
		xRange			= 10,
		})
end

---------------------------------------------------------------------------------------------------------------

function scene:exitScene( event )
	local group = self.view

	--Eliminación de la animación del título y parada del soindo
	titulo:removeAnimation()
	audio.stop(1)
end

-------------------------------------------------------------------------------------------------------

function scene:destroyScene( event )
	local group = self.view
	--Cancelación de todos los timer	transition.cancel()		
	--Liberación de memoria de las variables
	audio.dispose(sndBack)
	sndBack = nil
end

-------------------------------------------------------------------------------------------------------------
--CARGA DE LAS FUNCIONES DEL STORYBOARD
-------------------------------------------------------------------------------------------------------------

scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )
scene:addEventListener( "exitScene", scene )
scene:addEventListener( "destroyScene", scene )

-------------------------------------------------------------------------------------------------------------

return scene