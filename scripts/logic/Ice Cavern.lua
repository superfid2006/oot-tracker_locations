-- Child_Ice_Cavern_Beginning = OOTLocation.new("Child_Ice_Cavern_Beginning")
-- Child_Ice_Cavern_Spinning_Blades = OOTLocation.new("Child_Ice_Cavern_Spinning_Blades")
-- Child_Ice_Cavern_Map_Room = OOTLocation.new("Child_Ice_Cavern_Map_Room")
-- Child_Ice_Cavern_Behind_Ice_Walls = OOTLocation.new("Child_Ice_Cavern_Behind_Ice_Walls")

-- Adult_Ice_Cavern_Beginning = OOTLocation.new("Adult_Ice_Cavern_Beginning")
-- Adult_Ice_Cavern_Spinning_Blades = OOTLocation.new("Adult_Ice_Cavern_Spinning_Blades")
-- Adult_Ice_Cavern_Map_Room = OOTLocation.new("Adult_Ice_Cavern_Map_Room")
-- Adult_Ice_Cavern_Behind_Ice_Walls = OOTLocation.new("Adult_Ice_Cavern_Behind_Ice_Walls")

Child_Ice_Cavern_Beginning:connect_one_way("Child Ice Cavern Frozen Blue Rupee", function() return Blue_Fire("child") end)
Adult_Ice_Cavern_Beginning:connect_one_way("Adult Ice Cavern Frozen Blue Rupee", function() return Blue_Fire("adult") end)

Child_Ice_Cavern_Beginning:connect_one_way_entrance("Child ZF Ice Ledge", Child_ZF_Ice_Ledge)
Child_Ice_Cavern_Beginning:connect_one_way_entrance("Child Ice Cavern Spinning Blades", Child_Ice_Cavern_Spinning_Blades, function() 
    return Any(
        false,
        Has_explosives(),
        Can_use("DinsFire", "child")
    ) 
end)

Adult_Ice_Cavern_Beginning:connect_one_way_entrance("Adult ZF Ice Ledge", Adult_ZF_Ice_Ledge)
Adult_Ice_Cavern_Beginning:connect_one_way_entrance("Adult Ice Cavern Spinning Blades", Adult_Ice_Cavern_Spinning_Blades, function() 
    return Any(
        true,
        Has_explosives(),
        Can_use("DinsFire", "adult")
    ) 
end)


Child_Ice_Cavern_Spinning_Blades:connect_one_way("Child Ice Cavern Hall Pot 1")
Child_Ice_Cavern_Spinning_Blades:connect_one_way("Child Ice Cavern Hall Pot 2")
Child_Ice_Cavern_Spinning_Blades:connect_one_way("Child Ice Cavern Spinning Blade Pot 1")
Child_Ice_Cavern_Spinning_Blades:connect_one_way("Child Ice Cavern Spinning Blade Pot 2")
Child_Ice_Cavern_Spinning_Blades:connect_one_way("Child Ice Cavern Spinning Blade Pot 3")
Child_Ice_Cavern_Spinning_Blades:connect_one_way("Child Ice Cavern Spinning Blade Flying Pot")
Child_Ice_Cavern_Spinning_Blades:connect_one_way("Child Ice Cavern GS Spinning Scythe Room", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Boomerang", "child")
    )
end)

Adult_Ice_Cavern_Spinning_Blades:connect_one_way("Adult Ice Cavern Hall Pot 1")
Adult_Ice_Cavern_Spinning_Blades:connect_one_way("Adult Ice Cavern Hall Pot 2")
Adult_Ice_Cavern_Spinning_Blades:connect_one_way("Adult Ice Cavern Spinning Blade Pot 1")
Adult_Ice_Cavern_Spinning_Blades:connect_one_way("Adult Ice Cavern Spinning Blade Pot 2")
Adult_Ice_Cavern_Spinning_Blades:connect_one_way("Adult Ice Cavern Spinning Blade Pot 3")
Adult_Ice_Cavern_Spinning_Blades:connect_one_way("Adult Ice Cavern Spinning Blade Flying Pot")
Adult_Ice_Cavern_Spinning_Blades:connect_one_way("Adult Ice Cavern GS Spinning Scythe Room", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        Can_use("Boomerang", "adult")
    )
end)


Child_Ice_Cavern_Spinning_Blades:connect_one_way_entrance("Child Ice Cavern Map Room", Child_Ice_Cavern_Map_Room, function() return false end)
Child_Ice_Cavern_Spinning_Blades:connect_one_way_entrance("Child Ice Cavern Behind Ice Walls", Child_Ice_Cavern_Behind_Ice_Walls, function() return Blue_Fire("child") end)

Adult_Ice_Cavern_Spinning_Blades:connect_one_way_entrance("Adult Ice Cavern Map Room", Adult_Ice_Cavern_Map_Room, function() return true end)
Adult_Ice_Cavern_Spinning_Blades:connect_one_way_entrance("Adult Ice Cavern Behind Ice Walls", Adult_Ice_Cavern_Behind_Ice_Walls, function() return Blue_Fire("adult") end)


Child_Ice_Cavern_Map_Room:connect_one_way("Child Ice Cavern Map Chest", function() return Blue_Fire("child") end)
Child_Ice_Cavern_Map_Room:connect_one_way("Child Ice Cavern Map Room Recovery Heart 1")
Child_Ice_Cavern_Map_Room:connect_one_way("Child Ice Cavern Map Room Recovery Heart 2")
Child_Ice_Cavern_Map_Room:connect_one_way("Child Ice Cavern Map Room Recovery Heart 3")
Child_Ice_Cavern_Map_Room:connect_one_way("Child Ice Cavern Frozen Pot", function() return Blue_Fire("child") end)
Child_Ice_Cavern_Map_Room:connect_one_way("Child Blue Fire", function() return Has_bottle() end)

Adult_Ice_Cavern_Map_Room:connect_one_way("Adult Ice Cavern Map Chest", function() return Blue_Fire("adult") end)
Adult_Ice_Cavern_Map_Room:connect_one_way("Adult Ice Cavern Map Room Recovery Heart 1")
Adult_Ice_Cavern_Map_Room:connect_one_way("Adult Ice Cavern Map Room Recovery Heart 2")
Adult_Ice_Cavern_Map_Room:connect_one_way("Adult Ice Cavern Map Room Recovery Heart 3")
Adult_Ice_Cavern_Map_Room:connect_one_way("Adult Ice Cavern Frozen Pot", function() return Blue_Fire("adult") end)
Adult_Ice_Cavern_Map_Room:connect_one_way("Adult Blue Fire", function() return Has_bottle() end)


-- Child_Ice_Cavern_Map_Room:connect_one_way_entrance()
-- Adult_Ice_Cavern_Map_Room:connect_one_way_entrance()

Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern Compass Chest")
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern Freestanding PoH")
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern Iron Boots Chest", function() 
    return Any(
        false,
        Can_use("Slingshot", "child"),
        Can_use("DekuStick", "child"),
        Can_use("KokiriSword", "child"),
        Can_use("DinsFire", "child")
    ) 
end)
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Sheik in Ice Cavern", function() 
    return Any(
        false,
        Can_use("Slingshot", "child"),
        Can_use("DekuStick", "child"),
        Can_use("KokiriSword", "child"),
        Can_use("DinsFire", "child")
    ) 
end)
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern Block Room Red Rupee 1", function() 
    return Any(
        Can_play("SongofTime"),
        Can_use("Boomerang", "child")
    ) 
end)
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern Block Room Red Rupee 2", function() 
    return Any(
        Can_play("SongofTime"),
        Can_use("Boomerang", "child")
    ) 
end)
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern Block Room Red Rupee 3", function() 
    return Any(
        Can_play("SongofTime"),
        Can_use("Boomerang", "child")
    ) 
end)
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern Near End Pot 1")
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern Near End Pot 2")
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern GS Heart Piece Room", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Boomerang", "child")
    ) 
end)
Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Child Ice Cavern GS Push Block Room")

Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern Compass Chest")
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern Freestanding PoH")
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern Iron Boots Chest", function() 
    return Any(
        true,
        Can_use("Slingshot", "child"),
        Can_use("DekuStick", "child"),
        Can_use("KokiriSword", "adult"),
        Can_use("DinsFire", "adult")
    ) 
end)
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Sheik in Ice Cavern", function() 
    return Any(
        true,
        Can_use("Slingshot", "adult"),
        Can_use("DekuStick", "adult"),
        Can_use("KokiriSword", "adult"),
        Can_use("DinsFire", "adult")
    ) 
end)
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern Block Room Red Rupee 1", function() 
    return Any(
        Can_play("SongofTime"),
        Can_use("Boomerang", "adult")
    ) 
end)
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern Block Room Red Rupee 2", function() 
    return Any(
        Can_play("SongofTime"),
        Can_use("Boomerang", "adult")
    ) 
end)
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern Block Room Red Rupee 3", function() 
    return Any(
        Can_play("SongofTime"),
        Can_use("Boomerang", "adult")
    ) 
end)
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern Near End Pot 1")
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern Near End Pot 2")
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern GS Heart Piece Room", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        Can_use("Boomerang", "adult")
    ) 
end)
Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way("Adult Ice Cavern GS Push Block Room")


-- Child_Ice_Cavern_Behind_Ice_Walls:connect_one_way_entrance()
-- Adult_Ice_Cavern_Behind_Ice_Walls:connect_one_way_entrance()






-- {
--     "region_name": "Ice Cavern Beginning",
--     "dungeon": "Ice Cavern",
--     "locations":{
--         "Ice Cavern Frozen Blue Rupee": "Blue_Fire"
--     },
--     "exits": {
--         "ZF Ice Ledge": "True",
--         # Freezards are immune to Kokiri Sword. It would take a lot of sticks.
--         "Ice Cavern Spinning Blades": "here(is_adult or has_explosives or can_use(Dins_Fire))"
--     }
-- },
-- {
--     "region_name": "Ice Cavern Spinning Blades",
--     "dungeon": "Ice Cavern",
--     "locations": {
--         "Ice Cavern Hall Pot 1": "True",
--         "Ice Cavern Hall Pot 2": "True",
--         "Ice Cavern Spinning Blade Pot 1": "True",
--         "Ice Cavern Spinning Blade Pot 2": "True",
--         "Ice Cavern Spinning Blade Pot 3": "True",
--         "Ice Cavern Spinning Blade Flying Pot":  "True",
--         "Ice Cavern GS Spinning Scythe Room": "can_use(Hookshot) or can_use(Boomerang)"
--     },
--     "exits": {
--         "Ice Cavern Map Room": "is_adult",
--         "Ice Cavern Behind Ice Walls": "here(Blue_Fire)"
--     }
-- },
-- {
--     "region_name": "Ice Cavern Map Room",
--     "dungeon": "Ice Cavern",
--     "locations": {
--         "Ice Cavern Map Chest": "Blue_Fire",
--         "Ice Cavern Map Room Recovery Heart 1": "True",
--         "Ice Cavern Map Room Recovery Heart 2": "True",
--         "Ice Cavern Map Room Recovery Heart 3": "True",
--         "Ice Cavern Frozen Pot": "Blue_Fire",
--         "Blue Fire": "has_bottle"
--     }
-- },
-- {
--     "region_name": "Ice Cavern Behind Ice Walls",
--     "dungeon": "Ice Cavern",
--     "locations": {
--         "Ice Cavern Compass Chest": "True",
--         "Ice Cavern Freestanding PoH": "True",
--         "Ice Cavern Iron Boots Chest": "
--             is_adult or Slingshot or Sticks or Kokiri_Sword or can_use(Dins_Fire)",
--         "Sheik in Ice Cavern": "
--             is_adult or Slingshot or Sticks or Kokiri_Sword or can_use(Dins_Fire)",
--         "Ice Cavern Block Room Red Rupee 1": "can_play(Song_of_Time) or can_use(Boomerang)",
--         "Ice Cavern Block Room Red Rupee 2": "can_play(Song_of_Time) or can_use(Boomerang)",
--         "Ice Cavern Block Room Red Rupee 3": "can_play(Song_of_Time) or can_use(Boomerang)",
--         "Ice Cavern Near End Pot 1": "True",
--         "Ice Cavern Near End Pot 2": "True",
--         "Ice Cavern GS Heart Piece Room": "can_use(Hookshot) or can_use(Boomerang)",
--         "Ice Cavern GS Push Block Room": "
--             can_use(Hookshot) or can_use(Boomerang) or
--             (logic_ice_block_gs and can_use(Hover_Boots))"
--     }
-- }
