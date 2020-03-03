-- Ankulua settings
-- ---------------------------------------
scriptDimension = 1440
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
    region1 = Region(1114, 593, 152, 152),
    region2 = Region(1082, 455, 152, 152),
    region3 = Region(826, 426, 152, 152),
}

imageRegionSet2 = {
	results_region = Region(884, 441, 176, 108),
	missionStart_region = Region(1144, 395, 160, 234),
	start_region = Region(1176, 607, 166, 107),
}

--Sets root folder structure(so that it runs from whatever folder your script is ran from.
ROOT = scriptPath()

--Sets a custom path for my images folder, make sure your imagename.png is in yoyr images folder
DIR_IMAGES = ROOT .. "images"
DIR_LIBS = ROOT .. "libs"
setImagePath(DIR_IMAGES)

function clickTest()
    if imageRegionSet1.region1:existsClick("1.png") then
        toast("Found image 1")
    elseif imageRegionSet1.region2:existsClick("2.png") then
        toast("Found image 2")
    elseif imageRegionSet1.region3:existsClick("3.png") then
        toast("Found image 3")
    elseif imageRegionSet2.results_region:existsClick("results.png") then
        toast("Found results image")
    elseif imageRegionSet2.missionStart_region:existsClick("missionStart.png") then
        toast("Found missionStart image")
    elseif imageRegionSet2.start_region:existsClick("start.png") then
        toast("Found start image")
    end
end --end of clickTest()

-----Main Script Start-----
while (true) do
    clickTest()
end