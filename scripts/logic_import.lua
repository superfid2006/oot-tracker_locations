ScriptHost:LoadScript("scripts/logic/Bosses.lua")
ScriptHost:LoadScript("scripts/logic/LH.lua")
ScriptHost:LoadScript("scripts/logic/Hideout.lua")
ScriptHost:LoadScript("scripts/logic/Wasteland.lua")
ScriptHost:LoadScript("scripts/logic/HC.lua")
ScriptHost:LoadScript("scripts/logic/SFM.lua")
ScriptHost:LoadScript("scripts/logic/ZD.lua")
ScriptHost:LoadScript("scripts/logic/DMC.lua")
ScriptHost:LoadScript("scripts/logic/KV.lua")
ScriptHost:LoadScript("scripts/logic/GC.lua")
ScriptHost:LoadScript("scripts/logic/ZR.lua")
ScriptHost:LoadScript("scripts/logic/DMT.lua")
ScriptHost:LoadScript("scripts/logic/Market.lua")
ScriptHost:LoadScript("scripts/logic/Graveyard.lua")
ScriptHost:LoadScript("scripts/logic/ZF.lua")
ScriptHost:LoadScript("scripts/logic/HF.lua")
ScriptHost:LoadScript("scripts/logic/Colossus.lua")
ScriptHost:LoadScript("scripts/logic/LW.lua")
ScriptHost:LoadScript("scripts/logic/GV.lua")
ScriptHost:LoadScript("scripts/logic/GF.lua")
ScriptHost:LoadScript("scripts/logic/Kak.lua")
ScriptHost:LoadScript("scripts/logic/LLR.lua")
ScriptHost:LoadScript("scripts/logic/ToT.lua")
ScriptHost:LoadScript("scripts/logic/Gift from Sages.lua")
ScriptHost:LoadScript("scripts/logic/KF.lua")
-- ScriptHost:LoadScript("locations/Overworld.lua")

ScriptHost:LoadScript("scripts/logic/Shadow Temple.lua")
ScriptHost:LoadScript("scripts/logic/Dodongos Cavern.lua")
ScriptHost:LoadScript("scripts/logic/Bottom of the Well.lua")
ScriptHost:LoadScript("scripts/logic/Ganons Castle.lua")
ScriptHost:LoadScript("scripts/logic/Ice Cavern.lua")
ScriptHost:LoadScript("scripts/logic/Spirit Temple.lua")
ScriptHost:LoadScript("scripts/logic/Ganons Tower.lua")
ScriptHost:LoadScript("scripts/logic/Fire Temple.lua")
ScriptHost:LoadScript("scripts/logic/Jabu Jabus Belly.lua")
ScriptHost:LoadScript("scripts/logic/Gerudo Training Ground.lua")
ScriptHost:LoadScript("scripts/logic/Forest Temple.lua")
ScriptHost:LoadScript("scripts/logic/Deku Tree.lua")
ScriptHost:LoadScript("scripts/logic/Water Temple.lua")

-- ScriptHost:LoadScript("scripts/logic/MQ Shadow Temple.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Dodongos Cavern.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Bottom of the Well.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Ganons Castle.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Ice Cavern.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Spirit Temple.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Ganons Tower.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Fire Temple.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Jabu Jabus Belly.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Gerudo Training Ground.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Forest Temple.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Deku Tree.lua")
-- ScriptHost:LoadScript("scripts/logic/MQ Water Temple.lua")

-- print("test")
StaleState()
StateChange()
-- Entry_point:discover(AccessibilityLevel.None, 0)
for index, location in pairs(NamedLocations) do
    location.accessibility_level = 0
end
StaleState()
StateChange()