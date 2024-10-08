-- Child_Haunted_Wasteland = OOTLocation.new("Child_Haunted_Wastelands")
-- Child_Wasteland_Near_Fortress = OOTLocation.new("Child_Wasteland_Near_Fortress")
-- Child_Wasteland_Near_Crate = OOTLocation.new("Child_Wasteland_Near_Crate")
-- Child_Wasteland_Near_Colossus = OOTLocation.new("Child_Wasteland_Near_Colossus")

-- Adult_Haunted_Wasteland = OOTLocation.new("Adult_Haunted_Wastelands")
-- Adult_Wasteland_Near_Fortress = OOTLocation.new("Adult_Wasteland_Near_Fortress")
-- Adult_Wasteland_Near_Crate = OOTLocation.new("Adult_Wasteland_Near_Crate")
-- Adult_Wasteland_Near_Colossus = OOTLocation.new("Adult_Wasteland_Near_Colossus")

Child_Wasteland_Near_Fortress:connect_one_way("Child Wasteland Crate Before Quicksand", function() return Can_break_crate("child") end)
Adult_Wasteland_Near_Fortress:connect_one_way("Adult Wasteland Crate Before Quicksand", function() return Can_break_crate("adult") end)

Child_Wasteland_Near_Fortress:connect_one_way_entrance("Child GF Outside Gate", Child_GF_Outside_Gate)
Child_Wasteland_Near_Fortress:connect_one_way_entrance("Child Haunted Wasteland", Child_Haunted_Wasteland, function() 
    return Any(
        Can_use("HoverBoots", "child"),
        Can_use("Longshot", "child"),
        Has("logic_wasteland_crossing")
    ) 
end)

Adult_Wasteland_Near_Fortress:connect_one_way_entrance("Adult GF Outside Gate", Adult_GF_Outside_Gate)
Adult_Wasteland_Near_Fortress:connect_one_way_entrance("Adult Haunted Wasteland", Adult_Haunted_Wasteland, function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Can_use("Longshot", "adult"),
        Has("logic_wasteland_crossing")
    )
end)

Child_Haunted_Wasteland:connect_one_way("Child Wasteland Chest", function() return Has_fire_source("child") end)
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Bombchu Salesman", function()
    return Any(
        Can_use("200rupees", "child"),
        Can_jumpslash("child")
    )
end)
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Near GS Pot 1")
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Near GS Pot 2")
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Near GS Pot 3")
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Crate After Quicksand 1", function() return Can_break_crate("child") end)
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Crate After Quicksand 2", function() return Can_break_crate("child") end)
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Crate After Quicksand 3", function() return Can_break_crate("child") end)
Child_Haunted_Wasteland:connect_one_way("Child Wasteland GS", function()
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Boomerang", "child")
    )
end)
Child_Haunted_Wasteland:connect_one_way("Child Fairy Pot", function() return Has_bottle() end)
Child_Haunted_Wasteland:connect_one_way("Child Nut Pot")

Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Chest", function() return Has_fire_source("adult") end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Bombchu Salesman", function()
    return Any(
        Can_use("200rupees", "adult"),
        Can_jumpslash("adult")
    )
end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Near GS Pot 1")
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Near GS Pot 2")
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Near GS Pot 3")
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Crate After Quicksand 1", function() return Can_break_crate("adult") end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Crate After Quicksand 2", function() return Can_break_crate("adult") end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Crate After Quicksand 3", function() return Can_break_crate("adult") end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland GS", function()
    return Any(
        Can_use("Hookshot", "adult"),
        Can_use("Boomerang", "adult")
    )
end)
Adult_Haunted_Wasteland:connect_one_way("Adult Fairy Pot", function() return Has_bottle() end)
Adult_Haunted_Wasteland:connect_one_way("Adult Nut Pot")

Child_Haunted_Wasteland:connect_one_way_entrance("Child Wasteland Near Crate", Child_Wasteland_Near_Crate, function()
    return Any(
        Has("logic_lens_wasteland"),
        Can_use("LensofTruth", "child")
    )
end)
Child_Haunted_Wasteland:connect_one_way_entrance("Child Wasteland Near Fortress", Child_Wasteland_Near_Fortress, function()
    return Any(
        Can_use("HoverBoots", "child"),
        Can_use("Longshot", "child"),
        Has("logic_wasteland_crossing")
    )
end)

Adult_Haunted_Wasteland:connect_one_way_entrance("Adult Wasteland Near Crate", Adult_Wasteland_Near_Crate, function()
    return Any(
        Has("logic_lens_wasteland"),
        Can_use("LensofTruth", "adult")
    )
end)
Adult_Haunted_Wasteland:connect_one_way_entrance("Adult Wasteland Near Fortress", Adult_Wasteland_Near_Fortress, function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Can_use("Longshot", "adult"),
        Has("logic_wasteland_crossing")
    )
end)

Child_Wasteland_Near_Crate:connect_one_way("Child Wasteland Crate Near Colossus", function() return Can_break_crate("child") end)

Adult_Wasteland_Near_Crate:connect_one_way("Adult Wasteland Crate Near Colossus", function() return Can_break_crate("adult") end)

Child_Wasteland_Near_Crate:connect_one_way_entrance("Child Haunted Wasteland", Child_Haunted_Wasteland)
Child_Wasteland_Near_Crate:connect_one_way_entrance("Child Wasteland Near Colossus", Child_Wasteland_Near_Colossus)

Adult_Wasteland_Near_Crate:connect_one_way_entrance("Adult Haunted Wasteland", Adult_Haunted_Wasteland)
Adult_Wasteland_Near_Crate:connect_one_way_entrance("Adult Wasteland Near Colossus", Adult_Wasteland_Near_Colossus)


Child_Wasteland_Near_Colossus:connect_one_way_entrance("Child Desert Colossus", Child_Desert_Colossus)
Child_Wasteland_Near_Colossus:connect_one_way_entrance("Child Wasteland Near Crate", Child_Wasteland_Near_Crate, function() return Has("logic_reverse_wasteland") end)

Adult_Wasteland_Near_Colossus:connect_one_way_entrance("Adult Desert Colossus", Adult_Desert_Colossus)
Adult_Wasteland_Near_Colossus:connect_one_way_entrance("Adult Wasteland Near Crate", Adult_Wasteland_Near_Crate, function() return Has("logic_reverse_wasteland") end)

-- -- {
--     "region_name": "Wasteland Near Fortress",
--     "scene": "Haunted Wasteland",
--     "hint": "HAUNTED_WASTELAND",
--     "locations": {
--         "Wasteland Crate Before Quicksand": "can_break_crate"
--     },
--     "exits": {
--         "GF Outside Gate": "True",
--         "Haunted Wasteland": "
--             logic_wasteland_crossing or can_use(Hover_Boots) or can_use(Longshot)"
--     }
-- },
-- {
--     "region_name": "Haunted Wasteland",
--     "scene": "Haunted Wasteland",
--     "hint": "HAUNTED_WASTELAND",
--     "locations": {
--         "Wasteland Chest": "has_fire_source",
--         "Wasteland Bombchu Salesman": "Progressive_Wallet and can_jumpslash",
--         "Wasteland Near GS Pot 1": "True",
--         "Wasteland Near GS Pot 2": "True",
--         "Wasteland Near GS Pot 3": "True",
--         "Wasteland Crate After Quicksand 1": "can_break_crate",
--         "Wasteland Crate After Quicksand 2": "can_break_crate",
--         "Wasteland Crate After Quicksand 3": "can_break_crate",
--         "Wasteland GS": "can_use(Hookshot) or can_use(Boomerang)",
--         "Fairy Pot": "has_bottle",
--         "Nut Pot": "True"
--     },
--     "exits": {
--         "Wasteland Near Crate": "logic_lens_wasteland or can_use(Lens_of_Truth)",
--         "Wasteland Near Fortress": "
--             logic_wasteland_crossing or can_use(Hover_Boots) or can_use(Longshot)"
--     }
-- },
-- {
--     "region_name": "Wasteland Near Crate",
--     "scene": "Haunted Wasteland",
--     "hint": "HAUNTED_WASTELAND",
--     "locations": {
--         "Wasteland Crate Near Colossus": "can_break_crate"
--     },
--     "exits": {
--         "Haunted Wasteland": "True",
--         "Wasteland Near Colossus": "True"
--     }
-- },
-- {
--     "region_name": "Wasteland Near Colossus",
--     "scene": "Haunted Wasteland",
--     "hint": "HAUNTED_WASTELAND",
--     "exits": {
--         "Desert Colossus": "True",
--         "Wasteland Near Crate": "logic_reverse_wasteland"
--     }
-- },