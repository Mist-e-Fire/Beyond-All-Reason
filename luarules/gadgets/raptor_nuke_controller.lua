function gadget:GetInfo()
	return {
		name = "Raptor Defense Nuke Controller",
		desc = "Gives targets to raptor nuke launchers",
		author = "Damgam",
		date = "2023",
		license = "GNU GPL, v2 or later",
		layer = 0,
		enabled = true
	}
end

if not gadgetHandler:IsSyncedCode() then
    return
end

if Spring.Utilities.Gametype.IsRaptors() then
	Spring.Log(gadget:GetInfo().name, LOG.INFO, "Raptor Defense Spawner Activated!")
else
	Spring.Log(gadget:GetInfo().name, LOG.INFO, "Raptor Defense Spawner Deactivated!")
	return false
end
local nukeDefs = {
    [UnitDefNames["raptor_turretxl_meteor"].id] = true,
}
local aliveNukeLaunchers = {}

function gadget:UnitCreated(unitID, unitDefID, unitTeam)
    if nukeDefs[unitDefID] then
        aliveNukeLaunchers[unitID] = Spring.GetGameSeconds() + math.random(5,15)
    end
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID)
    if aliveNukeLaunchers[unitID] then
        aliveNukeLaunchers[unitID] = nil
    end
end

local gridSize = 500
local mapSizeX = Game.mapSizeX
local mapSizeZ = Game.mapSizeZ
local targetGridCells = {}
local numOfCellsX = math.ceil(mapSizeX/gridSize)
local numOfCellsZ = math.ceil(mapSizeZ/gridSize)
local GetGameSeconds = Spring.GetGameSeconds

for cellX = 1, numOfCellsX do
    for cellZ = 1, numOfCellsZ do
        if not targetGridCells[cellX] then targetGridCells[cellX] = {} end
        targetGridCells[cellX][cellZ] = {
            -- xmin = (cellX-1)*gridSize,
            -- zmin = (cellZ-1)*gridSize,
            -- xmax = cellX*gridSize,
            -- zmax = cellZ*gridSize,
            locked = 0,
        }
    end
end

function checkTargetCell(posx, posz, nukeID)
    local cellX = math.ceil(posx/gridSize)
    local cellZ = math.ceil(posz/gridSize)
    local cellData = targetGridCells[cellX][cellZ]
    if cellData.locked < GetGameSeconds() then
        cellData.locked = GetGameSeconds() + math.random(90,300)
        return true
    end
    aliveNukeLaunchers[nukeID] = GetGameSeconds() + math.random(5,10)
    return false
end

function gadget:GameFrame(frame)
    if frame%30 == 17 then
        local allUnits = Spring.GetAllUnits()
        for nukeID, cooldown in pairs(aliveNukeLaunchers) do
            if cooldown <= GetGameSeconds() then
                local targetID = allUnits[math.random(1,#allUnits)]
                if Spring.GetUnitTeam(targetID) ~= Spring.GetUnitTeam(nukeID) then
                    local x,y,z = Spring.GetUnitPosition(targetID)
                    x = x + math.random(-1024,1024)
                    z = z + math.random(-1024,1024)
                    y = math.max(Spring.GetGroundHeight(x,z), 0)
                    if x and z and x > 0 and x < mapSizeX and z > 0 and z < mapSizeZ and checkTargetCell(x,z,nukeID) then
                        Spring.GiveOrderToUnit(nukeID, CMD.ATTACK, {x, y, z}, {"shift"})
                        aliveNukeLaunchers[nukeID] = GetGameSeconds() + math.random(5,10)
                    end
                end
            end
        end
    end
end