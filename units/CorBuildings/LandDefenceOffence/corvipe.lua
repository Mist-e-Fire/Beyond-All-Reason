local unitName = Spring.I18N('units.names.corvipe')

return {
	corvipe = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 14000,
		buildcostmetal = 730,
		buildpic = "CORVIPE.DDS",
		buildtime = 15035,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		corpse = "DEAD",
		damagemodifier = 0.5,
		description = Spring.I18N('units.descriptions.corvipe'),
		explodeas = "smallBuildingexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 2719,
		maxslope = 10,
		maxwaterdepth = 0,
		name = unitName,
		nochasecategory = "MOBILE",
		objectname = "Units/CORVIPE.s3o",
		script = "Units/CORVIPE.lua",
		seismicsignature = 0,
		selfdestructas = "smallBuildingExplosionGenericSelfd",
		sightdistance = 546,
		usepiececollisionvolumes = 1,
		yardmap = "ooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/corvipe_aoplane.dds",
			buildinggrounddecalsizey = 4.7,
			buildinggrounddecalsizex = 4.7,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-2.7282333374 -4.31274414048e-05 -3.87004852295",
				collisionvolumescales = "42.4275054932 38.4097137451 38.8498077393",
				collisionvolumetype = "Box",
				damage = 1631,
				description = Spring.I18N('units.dead', { name = unitName }),
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 380,
				object = "Units/corvipe_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 408,
				description = Spring.I18N('units.heap', { name = unitName }),
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 61,
				object = "Units/cor2X2F.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			cloak = "kloak2",
			uncloak = "kloak2un",
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
				[1] = "servmed1",
			},
			select = {
				[1] = "servmed1",
			},
		},
		weapondefs = {
			vipersabot = {
				areaofeffect = 24,
				avoidfeature = false,
				burnblow = true,
				cegtag = "missiletrailviper",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-medium-bomb",
				firestarter = 70,
				flighttime = 1.05,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cormissile3fast.s3o",
				name = "Heavy g2g sabot rocket launcher",
				noselfdamage = true,
				range = 730,
				reloadtime = 2,
				smoketrail = true,
				smokePeriod = 10,
				smoketime = 33,
				smokesize = 10,
				smokecolor = 0.8,
				smokeTrailCastShadow = false,
				soundhit = "SabotHit",
				soundhitwet = "splshbig",
				soundstart = "SabotFire",
				startvelocity = 570,
				targetmoveerror = 0.2,
				smokeperiod = 5,
				castshadow = true,
				texture1 = "null",
				texture2 = "railguntrail",
				tolerance = 8000,
				tracks = true,
				turnrate = 6000,
				turret = true,
				weaponacceleration = 400,
				weapontimer = 0.1,
				weapontype = "MissileLauncher",
				weaponvelocity = 950,
				customparams = {
					expl_light_color = "1 0.5 0.05",
					light_color = "1 0.4 0.15",
				},
				damage = {
					bombers = 26,
					default = 825,
					fighters = 26,
					hvyboats = 577.5,
					subs = 5,
					vtol = 26,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "VIPERSABOT",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
