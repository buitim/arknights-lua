-- Ankulua settings
-- ---------------------------------------
scriptDimension = 2340
TIMEOUT = 3
SIMILAR = 0.8
Settings:set("AutoWaitTimeout", TIMEOUT)
Settings:set("MinSimilarity", SIMILAR)
setAutoGameArea = true
setImmersiveMode(true)
Settings:setScriptDimension(true, scriptDimension)
Settings:setCompareDimension(true, scriptDimension)

--- Script ---
imageRegionSet1 = {
    region1 = Region(2160, 902, 152, 152),
    region2 = Region(1807, 701, 152, 152),
    region3 = Region(1235, 666, 152, 152),
}

--Sets root folder structure(so that it runs from whatever folder your script is ran from.
ROOT = scriptPath()

--Sets a custom path for my images folder, make sure your imagename.png is in yoyr images folder
DIR_IMAGES = ROOT .. "mi9timages"
DIR_LIBS = ROOT .. "libs"
setImagePath(DIR_IMAGES)

function clickTest()
    
    imageRegionSet1.region1:existsClick("1.png")
    
    imageRegionSet1.region2:existsClick("2.png")
    
    imageRegionSet1.region3:existsClick("3.png")

end --end of clickTest()

-----Main Script Start-----
while (true) do
    clickTest()
end