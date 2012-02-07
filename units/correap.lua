return {
	correap = {
		acceleration = 0.043999999761581,
		brakerate = 0.065999999642372,
		buildcostenergy = 9646,
		buildcostmetal = 589,
		buildpic = "CORREAP.DDS",
		buildtime = 11501,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER",
		collisionvolumeoffsets = "0 -7 0",
		collisionvolumescales = "33 35 40",
		collisionvolumetest = 1,
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Heavy Assault Tank",
		energymake = 0.80000001192093,
		energyuse = 0.80000001192093,
		explodeas = "BIG_UNITEX",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 4900,
		maxslope = 12,
		maxvelocity = 2.6159999370575,
		maxwaterdepth = 100,
		movementclass = "HTANK3",
		name = "Reaper",
		nochasecategory = "VTOL",
		objectname = "CORREAP",
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		sightdistance = 462,
		trackoffset = 8,
		trackstrength = 8,
		tracktype = "StdTank",
		trackwidth = 33,
		turnrate = 434,
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.042236328125 -0.00674871826172 -0.122863769531",
				collisionvolumescales = "37.7348022461 25.9745025635 40.3383178711",
				collisionvolumetype = "Box",
				damage = 2340,
				description = "Reaper Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 350,
				object = "CORREAP_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1170,
				description = "Reaper Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 150,
				object = "3X3C",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:MEDIUMFLARE",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
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
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			core_reap = {
				areaofeffect = 64,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH72",
				gravityaffected = "true",
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				name = "PlasmaCannon",
				noselfdamage = true,
				range = 410,
				reloadtime = 0.69999998807907,
				soundhit = "xplomed2",
				soundstart = "cannon3",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 380,
				damage = {
					bombers = 35,
					default = 109,
					fighters = 35,
					subs = 5,
					vtol = 35,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORE_REAP",
				onlytargetcategory = "NOTAIR NOTSUB",
			},
		},
	},
}
