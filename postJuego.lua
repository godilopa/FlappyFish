-------------------------------------------------------------------------------------------------------------
--CARGA DE LIBRERíAS EXTERNAS
-------------------------------------------------------------------------------------------------------------

local storyboard = require("storyboard")
local scene = storyboard.newScene()

local myData = require("myData")

local funcionesIO = require("funcionesIO")

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

--Variables que guardan el marcador actual y el global más alto usando los módulos funcionesIO y myData
local aS = myData.score
local bS = funcionesIO.bestScore()

--Función que empieza de nuevo la partida
local function restartGame ()
		storyboard.gotoScene( "inicio")
end

--Función que hace que aparezcan los números en el marcador
function showScore()
	transition.to(actualScore,{time=2000, alpha=1})
	transition.to(bestScore,{time=2000, alpha=1,onComplete = restartGame})
end

--Función que hace que aparezca el cuadro con los marcadores
local function showFrame()
	transition.to(scoreBg,{time=500, y=centerY,onComplete = showScore})
end

--Función que hace que aparezca el texto GameOver
local function GameOver()
	transition.to(gameOver,{time=300, alpha=1,onComplete=showFrame})
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
	
	--Definición del la imagen GameOver
	gameOver = display.newImageRect("gameOver.png",500,100)
	gameOver.anchorX = 0.5
	gameOver.anchorY = 0.5
	gameOver.x = centerX 
	gameOver.y = centerY -300
	gameOver.alpha = 0
	group:insert(gameOver)
	
	--Definición del cuadro que contendrá los marcadores
	scoreBg = display.newImageRect("menuBg.png",480,393)
	scoreBg.anchorX = 0.5
	scoreBg.anchorY = 0.5
    scoreBg.x = centerX
    scoreBg.y =  centerY+700
    group:insert(scoreBg)

	--Definición del  texto que contendrá el resultado de la partida actual
    actualScore = display.newText(aS,centerX + 110, centerY - 55, native.systemFont, 50)
	actualScore :setFillColor(0,0,0)
	actualScore .alpha = 0
	group:insert(actualScore )

	--Definición del  texto que contendrá el resultado global más alto
	bestScore = display.newText(bS,centerX + 110, centerY+85 , native.systemFont, 50)
	bestScore:setFillColor(0,0,0)
	bestScore .alpha = 0
	group:insert(bestScore)
end

--------------------------------------------------------------------------------------------------

function scene:enterScene( event )
	local group = self.view
	
	--Eliminación de la escena anterior
	storyboard.removeScene("juego")

	--Llamada la función GameOver
	GameOver()
end

---------------------------------------------------------------------------------------------------------------

function scene:exitScene( event )
	local group = self.view
	
	--Eliminación de todos los transitions
	transition.cancel()
end

-------------------------------------------------------------------------------------------------------------
--CARGA DE LAS FUNCIONES DEL STORYBOARD
-------------------------------------------------------------------------------------------------------------

scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )
scene:addEventListener( "exitScene", scene )

--------------------------------------------------------------------------------------------------------

return scene