return {
	corfhlt = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 16384,
		buildcostenergy = 5812,
		buildcostmetal = 558,
		buildpic = "CORFHLT.DDS",
		buildtime = 12651,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER",
		collisionvolumeoffsets = "0 -15 0",
		collisionvolumescales = "46 70 46",
		collisionvolumetest = 1,
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Floating Heavy Laser Tower",
		energystorage = 200,
		energyuse = 0.10000000149012,
		explodeas = "BIG_UNITEX",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3927,
		minwaterdepth = 5,
		name = "Thunderbolt",
		nochasecategory = "MOBILE",
		objectname = "CORFHLT",
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		sightdistance = 598,
		waterline = 3,
		yardmap = "wwwwwwwww",
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "1.41945648193 0.0257352172852 3.31944274902",
				collisionvolumescales = "44.3973846436 40.5940704346 42.9052734375",
				collisionvolumetype = "Box",
				damage = 2356,
				description = "Thunderbolt Wreckage",
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 363,
				object = "CORFHLT_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			cloak = "kloak1",
			uncloak = "kloak1un",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "twractv3",
			},
			select = {
				[1] = "twractv3",
			},
		},
		weapondefs = {
			corfhlt_laser = {
				areaofeffect = 8,
				beamtime = 0.15000000596046,
				corethickness = 0.20000000298023,
				craterboost = 0,
				cratermult = 0,
				energypershot = 75,
				explosiongenerator = "custom:LARGE_GREEN_LASER_BURN",
				firestarter = 90,
				impactonly = 1,
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				laserflaresize = 10,
				name = "HighEnergyLaser",
				noselfdamage = true,
				range = 620,
				reloadtime = 1,
				rgbcolor = "0 1 0",
				soundhit = "lasrhit1",
				soundstart = "Lasrmas2",
				targetmoveerror = 0.20000000298023,
				thickness = 3,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 900,
				damage = {
					bombers = 52,
					default = 210,
					fighters = 52,
					subs = 5,
					vtol = 52,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORFHLT_LASER",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
