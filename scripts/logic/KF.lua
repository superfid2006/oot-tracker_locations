-- Child_Kokiri_Forest = OOTLocation.new("Child_Kokiri_Forest")
-- Child_Links_House = OOTLocation.new("Child_Links_House")
-- Child_Midos_House = OOTLocation.new("Child_Midos_House")
-- Child_Sarias_House = OOTLocation.new("Child_Sarias_House")
-- Child_House_Of_Twins = OOTLocation.new("Child_House_Of_Twins")
-- Child_Know_It_All_House = OOTLocation.new("Child_Know_It_All_House")
-- Child_Kokiri_Shop = OOTLocation.new("Child_Kokiri_Shop")
-- Child_KF_Outside_Deku_Tree = OOTLocation.new("Child_KF_Outside_Deku_Tree")
-- Child_KF_Storms_Grotto = OOTLocation.new("Child_KF_Storms_Grotto")

-- Adult_Kokiri_Forest = OOTLocation.new("Adult_Kokiri_Forest")
-- Adult_Links_House = OOTLocation.new("Adult_Links_House")
-- Adult_Midos_House = OOTLocation.new("Adult_Midos_House")
-- Adult_Sarias_House = OOTLocation.new("Adult_Sarias_House")
-- Adult_House_Of_Twins = OOTLocation.new("Adult_House_Of_Twins")
-- Adult_Know_It_All_House = OOTLocation.new("Adult_Know_It_All_House")
-- Adult_Kokiri_Shop = OOTLocation.new("Adult_Kokiri_Shop")
-- Adult_KF_Outside_Deku_Tree = OOTLocation.new("Adult_KF_Outside_Deku_Tree")
-- Adult_KF_Storms_Grotto = OOTLocation.new("Adult_KF_Storms_Grotto")

Child_Kokiri_Forest:connect_one_way_entrance("Child Links House", Child_Links_House)
Child_Kokiri_Forest:connect_one_way_entrance("Child Midos House", Child_Midos_House)
Child_Kokiri_Forest:connect_one_way_entrance("Child Sarias House", Child_Sarias_House)
Child_Kokiri_Forest:connect_one_way_entrance("Child House of Twins", Child_House_Of_Twins)
Child_Kokiri_Forest:connect_one_way_entrance("Child Know it all House", Child_Know_It_All_House)
Child_Kokiri_Forest:connect_one_way_entrance("Child Kokiri Shop", Child_Kokiri_Shop)
Child_Kokiri_Forest:connect_one_way_entrance("Child Kokiri Storms Grotto", Child_KF_Storms_Grotto, function() return Can_open_storm_grotto("child") end)
Child_Kokiri_Forest:connect_one_way_entrance("Child Lost Woods", Child_Lost_Woods)
Child_Kokiri_Forest:connect_one_way_entrance("Child Outside Deku Tree", Child_KF_Outside_Deku_Tree, function()
    return Any(
        Tracker:FindObjectForCode("open_forest").CurrentStage == 0,
        All(
            Can_use("KokiriSword", "child"),
            Can_use("DekuShield", "child")
        )
    )
end)
Child_Kokiri_Forest:connect_one_way_entrance("Child LW Bridge From Forest" , Child_LW_Bridge_From_Forest, function() return Can_leave_forest("child") end)
-- Child_Kokiri_Forest:connect_one_way_entrance("Child Sacret Forest Meadow" , Child_Sacret_Forest_Meadow, function()
--     return Any(
--         All(
--             Can_use("KokiriSword", "child"),
--             Can_use("DekuShield", "child")
--         ),
--         Tracker:FindObjectForCode("open_forest").CurrentStage == 0
--     )
-- end)


Child_Kokiri_Forest:connect_one_way("Child KF Grass Near Ramp Green Rupee 1")
Child_Kokiri_Forest:connect_one_way("Child KF Grass Near Ramp Green Rupee 2")
Child_Kokiri_Forest:connect_one_way("Child KF Grass Near Midos Green Rupee 1")
Child_Kokiri_Forest:connect_one_way("Child KF Grass Near Midos Green Rupee 2")
Child_Kokiri_Forest:connect_one_way("Child KF Behind Midos Blue Rupee")
Child_Kokiri_Forest:connect_one_way("Child KF Top of Sarias Recovery Heart 1")
Child_Kokiri_Forest:connect_one_way("Child KF Top of Sarias Recovery Heart 2")
Child_Kokiri_Forest:connect_one_way("Child KF Top of Sarias Recovery Heart 3")
Child_Kokiri_Forest:connect_one_way("Child KF End of Bridge Blue Rupee")
Child_Kokiri_Forest:connect_one_way("Child KF Boulder Maze Blue Rupee 1")
Child_Kokiri_Forest:connect_one_way("Child KF Boulder Maze Blue Rupee 2")
Child_Kokiri_Forest:connect_one_way("Child KF Kokiri Sword Chest")
Child_Kokiri_Forest:connect_one_way("Child Bean Plant Fairy")
Child_Kokiri_Forest:connect_one_way("Child KF GS Know It All House", function()
    return All(
        true, --child
        -- at_night,
        Can_child_attack("child"),
        Any(
            -- had_night_start,
            Can_leave_forest("child"),
            Can_play("SunsSong")
        )
    )
end)
Child_Kokiri_Forest:connect_one_way("Child KF GS Bean Patch", function()
    return All(
        Has_bottle(),--Can_plant_bugs
        Can_child_attack("child")
    )
end)
-- Child_Kokiri_Forest:connect_one_way("Child KF GS House of Twins", function() 
--     return All(
--         false,
--         -- at_night and
--         Any(
--             Can_use("Hookshot", "child"),
--             All(
--                 Has("logic_adult_kokiri_gs"),
--                 Can_use("HoverBoots", "child")
--             )
--         )
--     )
-- end)
Child_Kokiri_Forest:connect_one_way("Child KF Bean Platform Green Rupee 1", function()
    return Any(
        Can_use("HoverBoots", "child"),
        Has("MagicBean")
    )
end)
Child_Kokiri_Forest:connect_one_way("Child KF Bean Platform Green Rupee 2", function()
    return Any(
        Can_use("HoverBoots", "child"),
        Has("MagicBean")
    )
end)
Child_Kokiri_Forest:connect_one_way("Child KF Bean Platform Green Rupee 3", function()
    return Any(
        Can_use("HoverBoots", "child"),
        Has("MagicBean")
    )
end)
Child_Kokiri_Forest:connect_one_way("Child KF Bean Platform Green Rupee 4", function()
    return Any(
        Can_use("HoverBoots", "child"),
        Has("MagicBean")
    )
end)
Child_Kokiri_Forest:connect_one_way("Child KF Bean Platform Green Rupee 5", function()
    return Any(
        Can_use("HoverBoots", "child"),
        Has("MagicBean")
    )
end)
Child_Kokiri_Forest:connect_one_way("Child KF Bean Platform Green Rupee 6", function()
    return Any(
        Can_use("HoverBoots", "child"),
        Has("MagicBean")
    )
end)
Child_Kokiri_Forest:connect_one_way("Child KF Bean Platform Red Rupee", function()
    return Any(
        Can_use("HoverBoots", "child"),
        Has("MagicBean")
    )
end)
Child_Kokiri_Forest:connect_one_way("Child KF GS House of Twins", function()
    return All(
        -- at_night,
        false,
        Any(
            Can_use("Hookshot", "child"),
            All(
                Has("logic_adult_kokiri_gs"),
                Can_use("HoverBoots", "child")
            )
        )
    )
end)
-- Child_Kokiri_Forest:connect_one_way()

Adult_Kokiri_Forest:connect_one_way_entrance("Adult Links House", Adult_Links_House)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Midos House", Adult_Midos_House)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Sarias House", Adult_Sarias_House)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult House of Twins", Adult_House_Of_Twins)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Know it all House", Adult_Know_It_All_House)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Kokiri Shop", Adult_Kokiri_Shop)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Kokiri Storms Grotto", Adult_KF_Storms_Grotto, function() return Can_open_storm_grotto("adult") end)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Lost Woods", Adult_Lost_Woods)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Outside Deku Tree", Adult_KF_Outside_Deku_Tree)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult LW Bridge From Forest", Adult_LW_Bridge_From_Forest, function() return Can_leave_forest("adult") end)
-- Adult_Kokiri_Forest:connect_one_way_entrance("Adult Sacret Forest Meadow", Adult_Sacret_Forest_Meadow)

Adult_Kokiri_Forest:connect_one_way("Adult KF Grass Near Ramp Green Rupee 1", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Grass Near Ramp Green Rupee 2", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Grass Near Midos Green Rupee 1", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Grass Near Midos Green Rupee 2", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Behind Midos Blue Rupee", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Top of Sarias Recovery Heart 1", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Top of Sarias Recovery Heart 2", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Top of Sarias Recovery Heart 3", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF End of Bridge Blue Rupee", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Boulder Maze Blue Rupee 1", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Boulder Maze Blue Rupee 2", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Kokiri Sword Chest", function() return false end)
Adult_Kokiri_Forest:connect_one_way("Adult Bean Plant Fairy")
Adult_Kokiri_Forest:connect_one_way("Adult KF GS Know It All House", function()
    return All(
        -- at_night,
        false,
        Can_child_attack("adult"),
        Any(
            -- had_night_start,
            Can_leave_forest("adult"),
            Can_play("SunsSong")
        )
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF GS Bean Patch", function()
    return All(
        Has_bottle(),--Can_plant_bugs
        Can_child_attack("adult")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF GS House of Twins", function() 
    return All(
        true,
        -- at_night and
        Any(
            Can_use("Hookshot", "adult"),
            All(
                Has("logic_adult_kokiri_gs"),
                Can_use("HoverBoots", "adult")
            )
        )
    )
end)

Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 1", function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 2", function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 3", function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 4", function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 5", function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 6", function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Red Rupee", function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("MagicBean")
    )
end)
-- Adult_Kokiri_Forest:connect_one_way("Adult KF GS House of Twins", function()
--     return All(
--         -- at_night,
--         Any(
--             Can_use("Hookshot", "adult"),
--             All(
--                 Has("logic_Adult_Kokiri_gs"),
--                 Can_use("HoverBoots", "adult")
--             )
--         )
--     )
-- end)
-- Adult_Kokiri_Forest:connect_one_way()

Child_KF_Outside_Deku_Tree:connect_one_way_entrance("Child Deku Tree Loby", Child_Deku_Tree_Lobby)
Child_KF_Outside_Deku_Tree:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest, function()
    return Any(
        Tracker:FindObjectForCode("open_forest").CurrentStage == 0,
        All(
            Can_use("KokiriSword", "child"),
            Can_use("DekuShield", "child")
        )
    )
end)

Adult_KF_Outside_Deku_Tree:connect_one_way_entrance("Adult Deku Tree Loby", Adult_Deku_Tree_Lobby, function()
    return All(
        Any(
            Tracker:FindObjectForCode("open_forest").CurrentStage == 0,
            All(
                Can_use("KokiriSword", "adult"),
                Can_use("DekuShield", "adult")
            )
        ),
        Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage ~= 0 
    )
end) -- dungeon shuffle
Adult_KF_Outside_Deku_Tree:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)

Child_Links_House:connect_one_way("Child KF Links House Pot")
Child_Links_House:connect_one_way("Child KF Links House Cow", function()
    return All(
        Can_play("EponasSong"),
        All(
            Adult_Lon_Lon_Ranch.accessibility_level > 3,
            Can_play("EponasSong"),
            false -- adult
        ),
        false -- adult
    )
end)

Adult_Links_House:connect_one_way("Adult KF Links House Pot")
Adult_Links_House:connect_one_way("Adult KF Links House Cow", function()
    return All(
        Can_play("EponasSong"),
        All(
            Adult_Lon_Lon_Ranch.accessibility_level > 3,
            Can_play("EponasSong"),
            true -- adult
        )
    )
end)


Child_Midos_House:connect_one_way("Child KF Midos Top Left Chest")
Child_Midos_House:connect_one_way("Child KF Midos Top Right Chest")
Child_Midos_House:connect_one_way("Child KF Midos Bottom Left Chest")
Child_Midos_House:connect_one_way("Child KF Midos Bottom Right Chest")

Adult_Midos_House:connect_one_way("Adult KF Midos Top Left Chest")
Adult_Midos_House:connect_one_way("Adult KF Midos Top Right Chest")
Adult_Midos_House:connect_one_way("Adult KF Midos Bottom Left Chest")
Adult_Midos_House:connect_one_way("Adult KF Midos Bottom Right Chest")


Child_Sarias_House:connect_one_way("Child KF Sarias House Recovery Heart 1")
Child_Sarias_House:connect_one_way("Child KF Sarias House Recovery Heart 2")
Child_Sarias_House:connect_one_way("Child KF Sarias House Recovery Heart 3")
Child_Sarias_House:connect_one_way("Child KF Sarias House Recovery Heart 4")

Adult_Sarias_House:connect_one_way("Adult KF Sarias House Recovery Heart 1")
Adult_Sarias_House:connect_one_way("Adult KF Sarias House Recovery Heart 2")
Adult_Sarias_House:connect_one_way("Adult KF Sarias House Recovery Heart 3")
Adult_Sarias_House:connect_one_way("Adult KF Sarias House Recovery Heart 4")

Child_House_Of_Twins:connect_one_way("Child KF House of Twins Pot 1")
Child_House_Of_Twins:connect_one_way("Child KF House of Twins Pot 2")

Adult_House_Of_Twins:connect_one_way("Adult KF House of Twins Pot 1")
Adult_House_Of_Twins:connect_one_way("Adult KF House of Twins Pot 2")

Child_Know_It_All_House:connect_one_way("Child KF Know it All House Pot 1")
Child_Know_It_All_House:connect_one_way("Child KF Know it All House Pot 2")

Adult_Know_It_All_House:connect_one_way("Adult KF Know it All House Pot 1")
Adult_Know_It_All_House:connect_one_way("Adult KF Know it All House Pot 2")

Child_Kokiri_Shop:connect_one_way("Child KF Shop Blue Rupee")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 1")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 2")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 3")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 4")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 5")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 6")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 7")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 8")

Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Blue Rupee")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 1")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 2")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 3")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 4")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 5")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 6")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 7")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 8")

Child_KF_Storms_Grotto:connect_one_way("Child KF Storms Grotto Chest")
Child_KF_Storms_Grotto:connect_one_way("Child KF Storms Grotto Beehive 1", function() return Can_break_lower_beehive("child") end)
Child_KF_Storms_Grotto:connect_one_way("Child KF Storms Grotto Beehive 2", function() return Can_break_lower_beehive("child") end)
Child_KF_Storms_Grotto:connect_one_way("Child KF Storms Grotto Gossip Stone")

Adult_KF_Storms_Grotto:connect_one_way("Adult KF Storms Grotto Chest")
Adult_KF_Storms_Grotto:connect_one_way("Adult KF Storms Grotto Beehive 1", function() return Can_break_lower_beehive("adult") end)
Adult_KF_Storms_Grotto:connect_one_way("Adult KF Storms Grotto Beehive 2", function() return Can_break_lower_beehive("adult") end)
Adult_KF_Storms_Grotto:connect_one_way("Adult KF Storms Grotto Gossip Stone")

Child_Links_House:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)
Child_Midos_House:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)
Child_Sarias_House:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)
Child_House_Of_Twins:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)
Child_Know_It_All_House:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)
Child_Kokiri_Shop:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)
Child_KF_Storms_Grotto:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)


Adult_Links_House:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)
Adult_Midos_House:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)
Adult_Sarias_House:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)
Adult_House_Of_Twins:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)
Adult_Know_It_All_House:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)
Adult_Kokiri_Shop:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)
Adult_KF_Storms_Grotto:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)

-- -- {
--     "region_name": "Kokiri Forest",
--     "scene": "Kokiri Forest",
--     "hint": "KOKIRI_FOREST",
--     "events": {
--         "Showed Mido Sword & Shield": "is_child and Kokiri_Sword and Deku_Shield"
--     },
--     "locations": {
--         "KF Kokiri Sword Chest": "is_child",
--         "KF Grass Near Ramp Green Rupee 1": "is_child",
--         "KF Grass Near Ramp Green Rupee 2": "is_child",
--         "KF Grass Near Midos Green Rupee 1": "is_child",
--         "KF Grass Near Midos Green Rupee 2": "is_child",
--         "KF Behind Midos Blue Rupee": "is_child",
--         "KF Top of Sarias Recovery Heart 1": "is_child",
--         "KF Top of Sarias Recovery Heart 2": "is_child",
--         "KF Top of Sarias Recovery Heart 3": "is_child",
--         "KF End of Bridge Blue Rupee": "is_child",
--         "KF Boulder Maze Blue Rupee 1": "is_child",
--         "KF Boulder Maze Blue Rupee 2": "is_child",
--         "KF Bean Platform Green Rupee 1": "is_adult and (here(can_plant_bean) or Hover_Boots)",
--         "KF Bean Platform Green Rupee 2": "is_adult and (here(can_plant_bean) or Hover_Boots)",
--         "KF Bean Platform Green Rupee 3": "is_adult and (here(can_plant_bean) or Hover_Boots)",
--         "KF Bean Platform Green Rupee 4": "is_adult and (here(can_plant_bean) or Hover_Boots)",
--         "KF Bean Platform Green Rupee 5": "is_adult and (here(can_plant_bean) or Hover_Boots)",
--         "KF Bean Platform Green Rupee 6": "is_adult and (here(can_plant_bean) or Hover_Boots)",
--         "KF Bean Platform Red Rupee": "is_adult and (here(can_plant_bean) or Hover_Boots)",
--         "KF GS Know It All House": "
--             is_child and can_child_attack and at_night and
--             (had_night_start or can_leave_forest or can_play(Suns_Song))",
--         "KF GS Bean Patch": "
--             can_plant_bugs and can_child_attack",
--         "KF GS House of Twins": "
--             is_adult and at_night and
--             (Hookshot or (logic_adult_kokiri_gs and Hover_Boots))",
--         "KF Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy_without_suns and has_bottle",
--         "Bean Plant Fairy": "is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle"
--     },
--     "exits": {
--         "KF Links House": "True",
--         "KF Midos House": "True",
--         "KF Sarias House": "True",
--         "KF House of Twins": "True",
--         "KF Know It All House": "True",
--         "KF Kokiri Shop": "True",
--         "KF Outside Deku Tree": "is_adult or open_forest == 'open' or 'Showed Mido Sword & Shield'",
--         "Lost Woods": "True",
--         "LW Bridge From Forest": "can_leave_forest",
--         "KF Storms Grotto": "can_open_storm_grotto"
--     }
-- },
-- {
--     "region_name": "KF Outside Deku Tree",
--     "scene": "Kokiri Forest",
--     "hint": "KOKIRI_FOREST",
--     "events": {
--         "Showed Mido Sword & Shield": "is_child and Kokiri_Sword and Deku_Shield"
--     },
--     "locations": {
--         # The Babas despawn for Adult on forest temple completion. For vanilla forest temple
--         # placement this is not an issue as Adult can go back to forest for the Baba's there.
--         # Entrance rando cannot rely on this for the case forest completion was done on non
--         # repeatable access.
--         "Deku Baba Sticks": "(is_adult and not entrance_shuffle) or can_use(Kokiri_Sword) or can_use(Boomerang)",
--         "Deku Baba Nuts": "is_adult and not entrance_shuffle",
--         "KF Deku Tree Gossip Stone (Left)": "True",
--         "KF Deku Tree Gossip Stone (Right)": "True"
--     },
--     "exits": {
--         "Deku Tree Lobby": "
--             is_child or
--             (shuffle_dungeon_entrances and (open_forest == 'open' or 'Showed Mido Sword & Shield'))",
--         "Kokiri Forest": "is_adult or open_forest == 'open' or 'Showed Mido Sword & Shield'"
--     }
-- },
-- {
--     "region_name": "KF Links House",
--     "scene": "KF Links House",
--     "locations": {
--         "KF Links House Cow": "is_adult and can_play(Eponas_Song) and 'Links Cow'",
--         "KF Links House Pot": "True"
--     },
--     "exits": {
--         "Kokiri Forest": "True"
--     }
-- },
-- {
--     "region_name": "KF Midos House",
--     "scene": "KF Midos House",
--     "locations": {
--         "KF Midos Top Left Chest": "True",
--         "KF Midos Top Right Chest": "True",
--         "KF Midos Bottom Left Chest": "True",
--         "KF Midos Bottom Right Chest": "True"
--     },
--     "exits": {
--         "Kokiri Forest": "True"
--     }
-- },
-- {
--     "region_name": "KF Sarias House",
--     "scene": "KF Sarias House",
--     "locations": {
--         "KF Sarias House Recovery Heart 1": "True",
--         "KF Sarias House Recovery Heart 2": "True",
--         "KF Sarias House Recovery Heart 3": "True",
--         "KF Sarias House Recovery Heart 4": "True"
--     },
--     "exits": {
--         "Kokiri Forest": "True"
--     }
-- },
-- {
--     "region_name": "KF House of Twins",
--     "scene": "KF House of Twins",
--     "locations": {
--         "KF House of Twins Pot 1": "True",
--         "KF House of Twins Pot 2": "True"
--     },
--     "exits": {
--         "Kokiri Forest": "True"
--     }
-- },
-- {
--     "region_name": "KF Know It All House",
--     "scene": "KF Know it All House",
--     "locations": {
--         "KF Know it All House Pot 1": "True",
--         "KF Know it All House Pot 2": "True"
--     },
--     "exits": {
--         "Kokiri Forest": "True"
--     }
-- },
-- {
--     "region_name": "KF Kokiri Shop",
--     "scene": "KF Kokiri Shop",
--     "locations": {
--         "KF Shop Blue Rupee": "True",
--         "KF Shop Item 1": "True",
--         "KF Shop Item 2": "True",
--         "KF Shop Item 3": "True",
--         "KF Shop Item 4": "True",
--         "KF Shop Item 5": "True",
--         "KF Shop Item 6": "True",
--         "KF Shop Item 7": "True",
--         "KF Shop Item 8": "True"
--     },
--     "exits": {
--         "Kokiri Forest": "True"
--     }
-- },
-- {
--     "region_name": "KF Storms Grotto",
--     "scene": "KF Storms Grotto",
--     "locations": {
--         "KF Storms Grotto Chest": "True",
--         "KF Storms Grotto Beehive 1": "can_break_lower_beehive",
--         "KF Storms Grotto Beehive 2": "can_break_lower_beehive",
--         "KF Storms Grotto Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
--         "Butterfly Fairy": "can_use(Sticks) and has_bottle",
--         "Bug Shrub": "can_cut_shrubs and has_bottle",
--         "Lone Fish": "has_bottle"
--     },
--     "exits": {
--         "Kokiri Forest": "True"
--     }
-- },