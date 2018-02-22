return {
	freefusion = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 4096,
		buildcostenergy = 50,
		buildcostmetal = 40,
		buildpic = "FREEFUSION.DDS",
		buildtime = 800,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		corpse = "FREE_FUSION_DEAD",
		description = "Produces plenty of energy",
		energymake = 850,
		energystorage = 150,
		explodeas = "fusionExplosion",
		footprintx = 5,
		footprintz = 5,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 500,
		maxslope = 20,
		maxwaterdepth = 0,
		name = "Free Fusion Reactor",
		objectname = "BAR/freefusion.s3o",
		seismicsignature = 0,
		selfdestructas = "fusionExplosionSelfd",
		sightdistance = 250,
		yardmap = "ooooooooooooooooooooooooo",
		customparams = {
			faction = "none",
			techlevel = 2,
			removewait = true,
			removestop = true,
		},
		featuredefs = {
			free_fusion_dead = {
				blocking = true,
				category = "corpses",
				damage = 2500,
				description = "Free Fusion Reactor Wreckage",
				energy = 0,
				footprintx = 5,
				footprintz = 5,
				height = 20,
				hitdensity = 100,
				metal = 30,
				object = "BAR/freefusion_dead.s3o",
				reclaimable = true,
				customparams = {
					faction = "none",
				},
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1350,
				description = "Free Fusion Reactor Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 5,
				height = 5,
				hitdensity = 100,
				metal = 10,
				object = "5X5A",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceExplosionGenerators = {
				"deathceg3",
				"deathceg4",
			},
		},
	},
}
