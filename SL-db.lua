-- AdiBags Bears Leatherworking - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
local addonName, addonTable = ...;

-- Get locals names
local E = addonTable.expansion;
local Expansion = E["Shadowlands"]

-- Create addon table
local db = {}

db.name = "Bears " .. Expansion .. " Leatherworking"
db.desc = "Leatherworking reagents for " .. Expansion

-- Filter info
db.Filters = {
	["Leather"] = {
		uiName = Expansion .. " Leatherworking",
		uiDesc = "Reagents for Leatherworking in " .. Expansion,
		title = "Leather",
		items = {
			[172089] = true, -- Desolate Leather
			[172092] = true, -- Pallid Bone
			[172094] = true, -- Callous Hide
			[172096] = true, -- Heavy Desolate Leather
			[172097] = true, -- Heavy Callous Hide
			[172438] = true, -- Enchanted Heavy Callous Hide
			[177279] = true -- Gaunt Sinew

		}
	},
	["Vendor_Reagents"] = {
		uiName = Expansion .. " Leather Reagents",
		uiDesc = "Leather reagents from vendors used in " .. Expansion,
		title = "leather Reagents",
		items = {
			-- ID    = true,    --Item name
			[177062] = true, -- Penumbra Thread
			[178787] = true, -- Orboreal shards
			[177061] = true, -- Twilight Bark
			[183955] = true -- Curing Salt
		}
	},
	["Crafted_Reagents"] = {
		uiName = Expansion .. " crafted reagents",
		uiDesc = "Reagents made by crafting in " .. Expansion,
		title = "Crafted Reagents",
		items = {
			-- ID    = true,    --Item name
			[173384] = true, -- Crafter's Mark of the Chained Isle
			[173383] = true, -- Crafter's Mark III
			[173382] = true, -- Crafter's Mark II
			[173381] = true, -- Crafter's Mark I
			[183942] = true, -- Novice Mark II
			[185960] = true, -- Vestige of Origins
			[359702] = true, -- Vestige of the Eternal
			[187707] = true, -- Progenitor Essentia
			[359669] = true, -- Crafter's Mark of the First Ones
			[359662] = true -- Crafter's Mark IV
		}
	},
	["Zone_Reagents"] = {
		uiName = "Special reagents",
		uiDesc = "Special reagents from zones in " .. Expansion,
		title = "Zone Reagents",
		items = {
			-- ID    = true,    --Item name
			[172331] = true, -- Sinful Leather
			[172332] = true, -- Necrotic Leather
			[172330] = true, -- Unseelie Leather
			[172333] = true, -- Purified Leather
			[187701] = true  -- Protogenic Pelt

		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Shadowlands = db
