--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:1a10dc0375ac88ba223967bab68390ed:09e00e5b46f64e9b373fd3cfb5dc942e:1dec6c3faa36976af72a67a3688c9cbd$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- 1
            x=2,
            y=2,
            width=128,
            height=128,

        },
        {
            -- 2
            x=2,
            y=132,
            width=128,
            height=128,

        },
        {
            -- 3
            x=2,
            y=262,
            width=128,
            height=128,

        },
        {
            -- 4
            x=132,
            y=2,
            width=128,
            height=128,

        },
        {
            -- 5
            x=2,
            y=262,
            width=128,
            height=128,

        },
        {
            -- 6
            x=2,
            y=132,
            width=128,
            height=128,

        },
        {
            -- Sw (1)
            x=262,
            y=2,
            width=128,
            height=128,

        },
        {
            -- Sw (2)
            x=132,
            y=132,
            width=128,
            height=128,

        },
        {
            -- Sw (3)
            x=262,
            y=2,
            width=128,
            height=128,

        },
        {
            -- Sw (4)
            x=132,
            y=262,
            width=128,
            height=128,

        },
        {
            -- Sw (5)
            x=262,
            y=132,
            width=128,
            height=128,

        },
        {
            -- Sw (6)
            x=132,
            y=262,
            width=128,
            height=128,

        },
    },
    
    sheetContentWidth = 392,
    sheetContentHeight = 392
}

SheetInfo.frameIndex =
{

    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
    ["5"] = 5,
    ["6"] = 6,
    ["Sw (1)"] = 7,
    ["Sw (2)"] = 8,
    ["Sw (3)"] = 9,
    ["Sw (4)"] = 10,
    ["Sw (5)"] = 11,
    ["Sw (6)"] = 12,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:obtenerSecuencia()
	local secuencia =
		{
	    	{name="Swim", start=7, count=6, time=800,loopDirection = "bounce"},

		}
		return secuencia
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
