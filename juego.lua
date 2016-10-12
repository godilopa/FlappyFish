-------------------------------------------------------------------------------------------------------------
--CARGA DE LIBRERíAS EXTERNAS
------------------------------------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()

local objectSheet=require("pescao")

local myData = require("myData")

local physicsData = (require "coordenadasPescao").physicsData(0.5)

local physics = require("physics")
physics.start()
physics.setGravity( 0, 40 )
--physics.setDrawMode("hybrid" )

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

--Sonidos usados
local soundArray =  {"respirar.wav","grabCoin.wav","failure.wav"}
local sndRespirar = audio.loadSound(soundArray[1])
local sndCogerMoneda = audio.loadSound(soundArray[2])
local sndFailure = audio.loadSound(soundArray[3])

--Variable que controla la velocidad de desplazamiento del fondo y variable que controla el comienzo del juego
local velocidad =3
local comienzo = true

--Funciones que controlan el avance de la pantalla, son dos porque se necesitan dos imágenes de fondo de pantalla 
--concatenadas
local function avancePantalla(self,event)
	if self.x < -2*centerX+10 then
		self.x = 0
	else
		self.x=self.x-velocidad
	end
end

local function avancePantalla2(self,event)

	if self.x < screenWidth+10 then
		self.x = screenWidth*2
	else
		self.x=self.x-velocidad
	end
end

--local onSystem = function( event )
--    if event.type == "applicationSuspend" then
--        timer.pause(crearPlantasGo)
       -- timer.pause(moverPlantasGo)
--    end
   --  if event.type == "applicationResume" then
--        timer.resume(crearPlantasGo)
      --  timer.resume(moverPlantasGo)
--    end
--end

local function fishUp(event)
	if event.phase == "began" then		
		audio.stop(1)
		audio.play(sndRespirar, {channel=1} )
		pez:applyLinearImpulse(0, -250, pez.x, pez.y)
		pez:play()
	end
end

local function startGame()
	pez.bodyType="dynamic"
	movimientoInicial = transition.to(pez, {time = 2600,x = centerX - 270})
	audio.play(sndRespirar, {channel=1} )
	pez:applyLinearImpulse(0, -200, pez.x, pez.y)
	crearPlantasGo = timer.performWithDelay(1800, crearPlantas,-1)
	moverPlantasGo= timer.performWithDelay(2, moverPlantas,-1)
end

dificultad = 10

function moverPlantas()
		for i = plantas.numChildren,1,-1  do

			if(plantas[i].x > -100) then
				plantas[i].x = plantas[i].x - dificultad
			else 
				plantas:remove(plantas[i])
			end	
		end
		
		for i = monedas.numChildren,1,-1  do

			if(monedas[i].x > -100) then
				monedas[i].x = monedas[i].x - dificultad
			else 
				monedas:remove(monedas[i])
			end	
		end
end

function crearPlantas()

	altura = math.random(-200, 200)

	topPlanta = display.newImageRect("plantaA.png",100,310+altura)
	scaleY = topPlanta.height/584 --escala necesaria para crear la física 584 es la altura del png normal
	topPlanta.anchorX = 0.5
	topPlanta.anchorY = 0
	topPlanta.x = screenWidth +100
	topPlanta.y = 0
	topPlanta.id = "planta"
	local physicsData2 = (require "coordenadasPlantas").physicsData(100/117,scaleY)
	physics.addBody(topPlanta, "static", physicsData2:get("plantaA") )
	plantas:insert(topPlanta)

	plantaBaja = display.newImageRect("plantaB.png",100,310-altura)
	scaleY = plantaBaja.height/584
	plantaBaja.anchorX = 0.5
	plantaBaja.anchorY = 1
	plantaBaja.x = screenWidth +100
	plantaBaja.y =  screenHeight
	plantaBaja.id = "planta"
	local physicsData2 = (require "coordenadasPlantas").physicsData(100/117,scaleY)
	physics.addBody(plantaBaja, "static",physicsData2:get("plantaB") )
	plantas:insert(plantaBaja)
		
	alturaMoneda = math.random(180,screenHeight-170)
	moneda = display.newImageRect("goldCoin.png",100,100)
	moneda.x =topPlanta.x + 250
	moneda.y = alturaMoneda
	moneda.id = "moneda"
	physics.addBody(moneda, "static" ,{radius=50} )
	moneda.isSensor = true
	monedas:insert(moneda)
end

local control = 0
local puntuacion = 0

local function resetearControl()
	control = 0
end

local function salirJuego()
	myData.score= puntuacion
	storyboard.gotoScene( "postJuego")
end

local function choqueFinal()
	audio.play(sndFailure)
	velocidad = 0
	timer.cancel(moverPlantasGo)
	Runtime:removeEventListener("touch", fishUp)
	physics.pause()
	deadFish.x=pez.x
	deadFish.y=pez.y
	pez.alpha = 0
	muerte = transition.to(deadFish,{time= 1500,y=deadFish.y-100,alpha = 1, onComplete = salirJuego} )
end

local function onCollision( event )
	
		if event.other.id == "barreraA" then
		end
		
		if event.other.id == "barreraB" then
			choqueFinal()
		end
		
		if event.other.id == "moneda" then
			control = control + 1
			desapareceMoneda = transition.to (event.other, {time = 100,  alpha = 0})
			if control == 1 then
				puntuacion = puntuacion +1
				marcador.text = puntuacion
				audio.play(sndCogerMoneda)
				reseteoControl = timer.performWithDelay(1000, resetearControl)
			end
		end
				
		if event.other.id == "planta" then
			choqueFinal()
		end
end	

-------------------------------------------------------------------------------------------------------------
--FUNCIONES DEL STORYBOARD
-------------------------------------------------------------------------------------------------------------

function scene:createScene( event )
	local group = self.view
	
	bg = display.newImageRect("bajoagua.png",screenWidth,screenHeight)
	bg.anchorX=0
	bg.anchorY=0
	group:insert(bg)
	
	bg2 = display.newImageRect("bajoagua.png",screenWidth,screenHeight)
	bg2.anchorX = 1
	bg2.anchorY = 0
	bg2.x=screenWidth*2
	group:insert(bg2)
	
	barreraA = display.newRect( group,0, -20, screenWidth, 1)
	barreraA.anchorX = 0
	barreraA.anchorY = 0
	barreraA.id = "barreraA"
	physics.addBody(barreraA, "static",{bounce=0 } )
	
	barreraB = display.newRect( group,0, screenHeight+20, screenWidth, 1)
	barreraB.anchorX = 0
	barreraB.anchorY = 1
	barreraB.id = "barreraB"
	physics.addBody(barreraB, "static",{bounce=0 })

	miPez = graphics.newImageSheet("pescao.png",objectSheet:getSheet())
	pez=display.newSprite(miPez,objectSheet:obtenerSecuencia())
	pez.x=centerX
	pez.y=centerY
	physics.addBody(pez, "static",physicsData:get("pescao") )
	pez.isFixedRotation = true
	pez.bounce = 0
	pez:play() -- Por defecto hace la primera secuencia
	group:insert(pez)

	plantas = display.newGroup()
	plantas.anchorChildren = true
	plantas.x = 0
	plantas.y = 0
	group:insert(plantas)
	
	monedas = display.newGroup()
	monedas.anchorChildren = true
	monedas.x = 0
	monedas.y = 0
	group:insert(monedas)
	
	deadFish = display.newImageRect("Dead_Fish.png",100,100)
	deadFish.alpha = 0
	group:insert(deadFish)
	
	marcador = display.newText(puntuacion,centerX + 110, centerY+85 , native.systemFont, 50)
	marcador.x = centerX
	marcador.y = centerY-300
	marcador:setFillColor( 0, 0, 0 )
	group:insert(marcador)
end

---------------------------------------------------------------------------------------------------

function scene:enterScene( event )
	local group = self.view

	storyboard.removeScene("prejuego")
	
	if comienzo == true then
		startGame()
		comienzo = false
	end

	--Runtime:addEventListener( "system", onSystem )

	Runtime:addEventListener("touch",fishUp)

	pez:addEventListener("collision",onCollision)
	
	bg.enterFrame = avancePantalla
	Runtime:addEventListener("enterFrame",bg)
	
	bg2.enterFrame = avancePantalla2
	Runtime:addEventListener("enterFrame",bg2)

end

-------------------------------------------------------------------------------------------------------------------

function scene:exitScene( event )
	local group = self.view

	Runtime:removeEventListener("enterFrame", bg)
	Runtime:removeEventListener("enterFrame", bg2)
	--Runtime:removeEventListener( "system", onSystem )

	pez:removeEventListener("collision", onCollision)

	timer.cancel(crearPlantasGo)
	timer.cancel(moverPlantasGo)
	transition.cancel(movimientoInicial)
	transition.cancel(muerte)
	transition.cancel(desapareceMoneda)
end

------------------------------------------------------------------------------------------------------------------

function scene:destroyScene( event )
	local group = self.view
		audio.stop(1)
		audio.stop(2)
		audio.dispose(cogerMoneda)
		cogerMoneda = nil
		audio.dispose(sndRespirar)
		sndRespirar = nil
		audio.dispose(sndFailure)
		sndFailure = nil
end


-------------------------------------------------------------------------------------------------------------
--CARGA DE LAS FUNCIONES DEL STORYBOARD
-------------------------------------------------------------------------------------------------------------

scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )
scene:addEventListener( "exitScene", scene )
scene:addEventListener( "destroyScene", scene )

-------------------------------------------------------------------------------------------------

return scene