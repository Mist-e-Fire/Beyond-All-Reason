local unitName = Spring.I18N('units.names.cordrag')

return {
	cordrag = {
		acceleration = 0,
		autoheal = 4,
		blocking = true,
		brakerate = 0,
		buildcostenergy = 160,
		buildcostmetal = 11,
		buildpic = "CORDRAG.DDS",
		buildtime = 255,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "32 22 32",
		collisionvolumetype = "CylY",
		corpse = "ROCKTEETH",
		crushresistance = 250,
		description = Spring.I18N('units.descriptions.cordrag'),
		explodeas = "WallExplosionConcrete",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
		idleautoheal = 0,
		levelground = false,
		maxdamage = 2500,
		maxslope = 64,
		maxwaterdepth = 0,
		name = unitName,
		objectname = "Units/cordrag.s3o",
		repairable = false,
		script = "Units/cordrag.cob",
		seismicsignature = 0,
		selfdestructas = "WallExplosionConcrete",
		selfdestructcountdown = 1,
		sightdistance = 1,
		yardmap = "ffff",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/cordrag_aoplane.dds",
			buildinggrounddecalsizey = 4,
			buildinggrounddecalsizex = 4,
			buildinggrounddecaldecayspeed = 30,
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			objectify = true,
			paralyzemultiplier = 0,
			removestop = true,
			removewait = true,
			subfolder = "corbuildings/landutil",
		},
		featuredefs = {
			rockteeth = {
				animating = 0,
				animtrans = 0,
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				crushresistance = 0,
				damage = 500,
				description = "Rubble",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 2,
				object = "Units/cor1X1A.s3o",
				reclaimable = true,
				resurrectable = 0,
				shadtrans = 1,
				world = "greenworld",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {},
		},
	},
}
