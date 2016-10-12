-------------------------------------------------------------------------------------------------------------
--Módulo con funciones útiles para la carga y escritura de datos
-------------------------------------------------------------------------------------------------------------

--Usa el módulo myData para coger la puntuación (myData.score) que se ha conseguido durante la partida
local myData = require("myData")

local M = {}

--Función que guarda en nombreArchivo el texto dado  y en el directorio base o DocumentsDirectory por defecto
function M.guardarTexto(nombreArchivo,texto,base)
	local base = base or system.DocumentsDirectory
	local path = system.pathForFile(nombreArchivo,base)
	local file = io.open(path,"a+")
	file:write(texto .. "\n")
	io.close(file)
	return true
end

--Función que devuelve la última línea del nombreArchvio del directorio base o DocumentsDirectory por defecto
function M.cogerUltimaLinea(nombreArchivo,base)
	local base = base or system.DocumentsDirectory
	local path = system.pathForFile(nombreArchivo,base)
	local lineas = {} 
	local txtData
	local file = io.open(path,"r")
	for line in file:lines() do
		lineas[#lineas + 1] = line
	end
			txtData = lineas[#lineas]
			if #lineas == 0 then
				txtData = 0
			end
			io.close(file)
	return txtData
end

--Función que lee el contenido de nombreArchivo del directorio base o DocumentsDirectory por defecto
function M.leerTexto(nombreArchivo,base)
	local base = base or system.DocumentsDirectory
	local path = system.pathForFile(nombreArchivo,base)
	local contents= ""
	local file = io.open(path,"r")
	 if file then
       contents = file:read( "*a" )
       io.close( file ) 
    end
    return contents
end

--Función específica para el juego que haciendo uso de las anteriores devuelve y guarda en marcador.txt el número más alto
--primero guarda un 0 en marcador.txt si es la primera vez que accede para poder comparar
function M.bestScore()
	if M.leerTexto("marcador.txt")== "" then
		M.guardarTexto("marcador.txt","0")
	end
	if  myData.score > tonumber(M.cogerUltimaLinea("marcador.txt"))then 
		M.guardarTexto("marcador.txt",myData.score)
		return tostring(myData.score)
	else
		return M.cogerUltimaLinea("marcador.txt")
	end
end

return M
