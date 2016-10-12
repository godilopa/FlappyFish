module(...)


-- This file is for use with Corona Game Edition
--
-- The function getSpriteSheetData() returns a table suitable for importing using sprite.newSpriteSheetFromData()
--
-- Usage example:
--			local zwoptexData = require "ThisFile.lua"
-- 			local data = zwoptexData.getSpriteSheetData()
--			local spriteSheet = sprite.newSpriteSheetFromData( "Untitled.png", data )
--
-- For more details, see http://developer.anscamobile.com/content/game-edition-sprite-sheets

function getSpriteSheetData()

	local sheet = {
		frames = {
		
			{
				name = "0.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 55 }, 
				textureRect = { x = 374, y = 175, width = 46, height = 55 }, 
				spriteSourceSize = { width = 46, height = 55 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "1.png",
				spriteColorRect = { x = 0, y = 0, width = 36, height = 57 }, 
				textureRect = { x = 50, y = 91, width = 36, height = 57 }, 
				spriteSourceSize = { width = 36, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "2.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 57 }, 
				textureRect = { x = 2, y = 230, width = 48, height = 57 }, 
				spriteSourceSize = { width = 48, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "3.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 56 }, 
				textureRect = { x = 52, y = 289, width = 48, height = 56 }, 
				spriteSourceSize = { width = 48, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "4.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 56 }, 
				textureRect = { x = 2, y = 289, width = 48, height = 56 }, 
				spriteSourceSize = { width = 48, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "5.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 57 }, 
				textureRect = { x = 296, y = 2, width = 47, height = 57 }, 
				spriteSourceSize = { width = 47, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "6.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 57 }, 
				textureRect = { x = 182, y = 240, width = 47, height = 57 }, 
				spriteSourceSize = { width = 47, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "7.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 57 }, 
				textureRect = { x = 227, y = 62, width = 48, height = 57 }, 
				spriteSourceSize = { width = 48, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "8.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 57 }, 
				textureRect = { x = 238, y = 179, width = 46, height = 57 }, 
				spriteSourceSize = { width = 46, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "9.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 57 }, 
				textureRect = { x = 326, y = 61, width = 46, height = 57 }, 
				spriteSourceSize = { width = 46, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "A.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 326, y = 120, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "Ä.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 66 }, 
				textureRect = { x = 50, y = 2, width = 47, height = 66 }, 
				spriteSourceSize = { width = 47, height = 66 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "B.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 58 }, 
				textureRect = { x = 138, y = 130, width = 48, height = 58 }, 
				spriteSourceSize = { width = 48, height = 58 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "C.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 280, y = 296, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "D.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 50, y = 347, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "E.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 198, y = 299, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "F.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 150, y = 335, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "G.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 58 }, 
				textureRect = { x = 88, y = 130, width = 48, height = 58 }, 
				spriteSourceSize = { width = 48, height = 58 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "H.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 374, y = 60, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "I.png",
				spriteColorRect = { x = 0, y = 0, width = 33, height = 56 }, 
				textureRect = { x = 50, y = 150, width = 33, height = 56 }, 
				spriteSourceSize = { width = 33, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "J.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 393, y = 2, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "K.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 57 }, 
				textureRect = { x = 188, y = 181, width = 48, height = 57 }, 
				spriteSourceSize = { width = 48, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "L.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 57 }, 
				textureRect = { x = 277, y = 120, width = 47, height = 57 }, 
				spriteSourceSize = { width = 47, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "M.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 2, y = 347, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "N.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 57 }, 
				textureRect = { x = 231, y = 240, width = 47, height = 57 }, 
				spriteSourceSize = { width = 47, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "O.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 57 }, 
				textureRect = { x = 102, y = 276, width = 47, height = 57 }, 
				spriteSourceSize = { width = 47, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "Ö.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 66 }, 
				textureRect = { x = 99, y = 2, width = 46, height = 66 }, 
				spriteSourceSize = { width = 46, height = 66 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "P.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 57 }, 
				textureRect = { x = 277, y = 61, width = 47, height = 57 }, 
				spriteSourceSize = { width = 47, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "Q.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 58 }, 
				textureRect = { x = 93, y = 70, width = 48, height = 58 }, 
				spriteSourceSize = { width = 48, height = 58 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "R.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 57 }, 
				textureRect = { x = 52, y = 230, width = 48, height = 57 }, 
				spriteSourceSize = { width = 48, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "S.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 57 }, 
				textureRect = { x = 102, y = 217, width = 48, height = 57 }, 
				spriteSourceSize = { width = 48, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "T.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 326, y = 178, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "U.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 56 }, 
				textureRect = { x = 280, y = 238, width = 47, height = 56 }, 
				spriteSourceSize = { width = 47, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "Ü.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 67 }, 
				textureRect = { x = 2, y = 2, width = 46, height = 67 }, 
				spriteSourceSize = { width = 46, height = 67 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "V.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 329, y = 236, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "W.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 58 }, 
				textureRect = { x = 197, y = 2, width = 47, height = 58 }, 
				spriteSourceSize = { width = 47, height = 58 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "X.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 57 }, 
				textureRect = { x = 246, y = 2, width = 48, height = 57 }, 
				spriteSourceSize = { width = 48, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "Y.png",
				spriteColorRect = { x = 0, y = 0, width = 47, height = 58 }, 
				textureRect = { x = 147, y = 62, width = 47, height = 58 }, 
				spriteSourceSize = { width = 47, height = 58 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "Z.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 57 }, 
				textureRect = { x = 188, y = 122, width = 48, height = 57 }, 
				spriteSourceSize = { width = 48, height = 57 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "apostroph.png",
				spriteColorRect = { x = 0, y = 0, width = 21, height = 20 }, 
				textureRect = { x = 110, y = 190, width = 21, height = 20 }, 
				spriteSourceSize = { width = 21, height = 20 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "asterisk.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 44 }, 
				textureRect = { x = 2, y = 117, width = 46, height = 44 }, 
				spriteSourceSize = { width = 46, height = 44 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "at.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 102, y = 335, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "bracket_left.png",
				spriteColorRect = { x = 0, y = 0, width = 29, height = 58 }, 
				textureRect = { x = 196, y = 62, width = 29, height = 58 }, 
				spriteSourceSize = { width = 29, height = 58 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "bracket_right.png",
				spriteColorRect = { x = 0, y = 0, width = 28, height = 56 }, 
				textureRect = { x = 152, y = 190, width = 28, height = 56 }, 
				spriteSourceSize = { width = 28, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "colon.png",
				spriteColorRect = { x = 0, y = 0, width = 27, height = 44 }, 
				textureRect = { x = 151, y = 276, width = 27, height = 44 }, 
				spriteSourceSize = { width = 27, height = 44 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "comma.png",
				spriteColorRect = { x = 0, y = 0, width = 23, height = 25 }, 
				textureRect = { x = 85, y = 190, width = 23, height = 25 }, 
				spriteSourceSize = { width = 23, height = 25 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "dollar.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 345, y = 2, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "dot.png",
				spriteColorRect = { x = 0, y = 0, width = 22, height = 20 }, 
				textureRect = { x = 60, y = 208, width = 22, height = 20 }, 
				spriteSourceSize = { width = 22, height = 20 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "exclam.png",
				spriteColorRect = { x = 0, y = 0, width = 21, height = 56 }, 
				textureRect = { x = 238, y = 121, width = 21, height = 56 }, 
				spriteSourceSize = { width = 21, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "minus.png",
				spriteColorRect = { x = 0, y = 0, width = 41, height = 19 }, 
				textureRect = { x = 50, y = 70, width = 41, height = 19 }, 
				spriteSourceSize = { width = 41, height = 19 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "percent.png",
				spriteColorRect = { x = 0, y = 0, width = 48, height = 58 }, 
				textureRect = { x = 147, y = 2, width = 48, height = 58 }, 
				spriteSourceSize = { width = 48, height = 58 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "plus.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 44 }, 
				textureRect = { x = 2, y = 71, width = 46, height = 44 }, 
				spriteSourceSize = { width = 46, height = 44 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "question.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 55 }, 
				textureRect = { x = 374, y = 118, width = 46, height = 55 }, 
				spriteSourceSize = { width = 46, height = 55 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "semicolon.png",
				spriteColorRect = { x = 0, y = 0, width = 26, height = 50 }, 
				textureRect = { x = 286, y = 179, width = 26, height = 50 }, 
				spriteSourceSize = { width = 26, height = 50 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "sharp.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 43 }, 
				textureRect = { x = 2, y = 163, width = 46, height = 43 }, 
				spriteSourceSize = { width = 46, height = 43 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "slash.png",
				spriteColorRect = { x = 0, y = 0, width = 46, height = 56 }, 
				textureRect = { x = 328, y = 296, width = 46, height = 56 }, 
				spriteSourceSize = { width = 46, height = 56 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
			{
				name = "underscore.png",
				spriteColorRect = { x = 0, y = 0, width = 56, height = 20 }, 
				textureRect = { x = 2, y = 208, width = 56, height = 20 }, 
				spriteSourceSize = { width = 56, height = 20 }, 
				spriteTrimmed = true,
				textureRotated = false
			},
		
		}
	}

	return sheet
end