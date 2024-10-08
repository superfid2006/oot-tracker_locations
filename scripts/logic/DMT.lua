-- Child_Death_Mountain = OOTLocation.new("Child_Death_Mountain")
-- Child_Death_Mountain_Summit = OOTLocation.new("Child_Death_Mountain_Summit")
-- Child_DMT_Owl_Flight = OOTLocation.new("Child_DMT_Owl_Flight")
-- Child_DMT_Great_Fairy_Fountain = OOTLocation.new("Child_DMT_Great_Fairy_Fountain")
-- Child_DMT_Cow_Grotto = OOTLocation.new("Child_DMT_Cow_Grotto")
-- Child_DMT_Storms_Grotto = OOTLocation.new("Child_DMT_Storms_Grotto")

-- Adult_Death_Mountain = OOTLocation.new("Adult_Death_Mountain")
-- Adult_Death_Mountain_Summit = OOTLocation.new("Adult_Death_Mountain_Summit")
-- Adult_DMT_Owl_Flight = OOTLocation.new("Adult_DMT_Owl_Flight")
-- Adult_DMT_Great_Fairy_Fountain = OOTLocation.new("Adult_DMT_Great_Fairy_Fountain")
-- Adult_DMT_Cow_Grotto = OOTLocation.new("Adult_DMT_Cow_Grotto")
-- Adult_DMT_Storms_Grotto = OOTLocation.new("Adult_DMT_Storms_Grotto")

Child_Death_Mountain:connect_one_way("Child DMT Chest", function() 
    return Any(
        Can_blast_or_smash("child"),
        All(
            Has("logic_dmt_bombable"),
            -- is_child,
            Can_use("GoronBracelet", "child")
        )
    )
end)
Child_Death_Mountain:connect_one_way("Child DMT Freestanding PoH", function() 
    return Any(
        Can_take_damage("child"),
        Can_use("HoverBoots", "child"),
        All(
            false, -- is_adult,
            Can_plant_bean(),
            Any(
                Has("plant_beans"),
                Has_explosives(),
                Can_use("GoronBracelet", "child")
            )
        )
    )
end)
Child_Death_Mountain:connect_one_way("Child DMT Rock Red Rupee", function() return Can_blast_or_smash("child") end)
Child_Death_Mountain:connect_one_way("Child DMT Rock Blue Rupee", function() return Has_explosives() end)
Child_Death_Mountain:connect_one_way("Child DMT GS Bean Patch", function() 
    return All(
        Can_plant_bugs("child"),
        Can_child_attack("child"),
        Any(
            Has_explosives(),
            Can_use("GoronBracelet", "child"),
            All(
                Has("logic_dmt_soil_gs"),
                Can_use("Boomerang", "child")
            )
        )
    )
end)
Child_Death_Mountain:connect_one_way("Child DMT GS Near Kak", function() return Can_blast_or_smash("child") end)
Child_Death_Mountain:connect_one_way("Child DMT GS Above Dodongos Cavern", function() return false end)
Child_Death_Mountain:connect_one_way("Child Bean Plant Fairy", function() 
    return All(
        Can_plant_bean(),
        Can_play("SongofStorms"),
        Has_bottle(),
        Any(
            Has_explosives(),
            Can_use("GoronBracelet", "child")
        )
    )
end)

Adult_Death_Mountain:connect_one_way("Adult DMT Chest", function() 
    return Any(
        Can_blast_or_smash("adult"),
        All(
            Has("logic_dmt_bombable"),
            false, -- is_child,
            Can_use("GoronBracelet", "adult")
        )
    )
end)
Adult_Death_Mountain:connect_one_way("Adult DMT Freestanding PoH", function() 
    return Any(
        Can_take_damage("adult"),
        Can_use("HoverBoots", "adult"),
        All(
            -- is_adult,
            All(
                Can_plant_bean(),
                CanReach("Child_Death_Mountain") > 5
            ),
            Any(
                Has("plant_beans"),
                Has_explosives(),
                Can_use("GoronBracelet", "adult")
            )
        )
    )
end)
Adult_Death_Mountain:connect_one_way("Adult DMT Rock Red Rupee", function() return false end)
Adult_Death_Mountain:connect_one_way("Adult DMT Rock Blue Rupee", function() return false end)
Adult_Death_Mountain:connect_one_way("Adult DMT GS Bean Patch", function() 
    return All(
        Can_plant_bugs("adult"),
        Can_child_attack("adult"),
        Any(
            Has_explosives(),
            Can_use("GoronBracelet", "adult"),
            All(
                Has("logic_dmt_soil_gs"),
                Can_use("Boomerang", "adult")
            )
        )
    )
end)
Adult_Death_Mountain:connect_one_way("Adult DMT GS Near Kak", function() return Can_blast_or_smash("adult") end)
Adult_Death_Mountain:connect_one_way("Adult DMT GS Above Dodongos Cavern", function() 
    return All(
        true,
        -- at_night,
        Any(
            Can_use("MegatonHammer", "adult"),
            All(
                Has("logic_trail_gs_lower_hookshot"),
                Can_use("Hookshot", "adult")
            ),
            All(
                Has("logic_trail_gs_lower_hovers"),
                Can_use("HoverBoots", "adult")
            ),
            All(
                Has("logic_trail_gs_lower_bean"),
                Can_plant_bean(),
                CanReach("Child_Death_Mountain") > 5,
                Any(
                    Has("plant_beans"),
                    Has_explosives(),
                    Can_use("GoronBracelet", "adult")
                )
            )
        )
    )
end)
Adult_Death_Mountain:connect_one_way("Adult Bean Plant Fairy", function() return false end)


Child_Death_Mountain:connect_one_way_entrance("Child Kak Behind Gate", Child_Kak_Behind_Gate)
Child_Death_Mountain:connect_one_way_entrance("Child Goron City", Child_Goron_City)
Child_Death_Mountain:connect_one_way_entrance("Child Death Mountain Summit", Child_Death_Mountain_Summit, function() 
    return  Any(
        Can_blast_or_smash("child"),
        -- All(
        --     is_adult,
        --     Can_plant_bean(),
        --     Any(
        --         Has("plant_beans"),
        --         Can_use("GoronBracelet", "child")
        --     )
        -- ),
        All(
            Has("logic_dmt_climb_hovers"),
            Can_use("HoverBoots", "child")
        )
    )
end)
Child_Death_Mountain:connect_one_way_entrance("Child Dodongos Cavern Beginning", Child_Dodongos_Cavern_Beginning, function() 
    return Any(
        Has_explosives(),
        Can_use("GoronBracelet", "child")
        -- is_adult
        )
end)
Child_Death_Mountain:connect_one_way_entrance("Child DMT Storms Grotto", Child_DMT_Storms_Grotto, function() return Can_open_storm_grotto("child") end)

Adult_Death_Mountain:connect_one_way_entrance("Adult Kak Behind Gate", Adult_Kak_Behind_Gate)
Adult_Death_Mountain:connect_one_way_entrance("Adult Goron City", Adult_Goron_City)
Adult_Death_Mountain:connect_one_way_entrance("Adult Death Mountain Summit", Adult_Death_Mountain_Summit, function() 
    return  Any(
        Can_blast_or_smash("adult"),
        All(
            -- is_adult,\
            All(
                Can_plant_bean(),
                CanReach("Child_Death_Mountain") > 5
            ),
            Any(
                Has("plant_beans"),
                Can_use("GoronBracelet", "adult")
            )
        ),
        All(
            Has("logic_dmt_climb_hovers"),
            Can_use("HoverBoots", "adult")
        )
    )
end)
Adult_Death_Mountain:connect_one_way_entrance("Adult Dodongos Cavern Beginning", Adult_Dodongos_Cavern_Beginning, function() 
    return Any(
        Has_explosives(),
        Can_use("GoronBracelet", "adult"),
        true
        )
end)
Adult_Death_Mountain:connect_one_way_entrance("Adult DMT Storms Grotto", Adult_DMT_Storms_Grotto, function() return Can_open_storm_grotto("adult") end)


Child_Death_Mountain_Summit:connect_one_way("Child DMT Biggoron", function() return false end)
Child_Death_Mountain_Summit:connect_one_way("Child DMT GS Falling Rocks Path", function() return false end)
Child_Death_Mountain_Summit:connect_one_way("Child DMT Gossip Stone")
Child_Death_Mountain_Summit:connect_one_way("Child Gossip Stone Fairy", function() 
    return All(
        Can_summon_gossip_fairy("child"),
        Has_bottle()
    )
end)


Adult_Death_Mountain_Summit:connect_one_way("Adult DMT Biggoron", function()
    return Any(
        Tracker:ProviderCountForCode("ClaimCheck") > 0 ,
        All(
            Guarantee_trade_path("adult"),
            Any(
                Tracker:FindObjectForCode("hidden_item_Eyedrops_Access").Active,
                All(
                    Has("Eyedrops"),
                    Disable_trade_revert()
                )
            )
        )
    )
end)
Adult_Death_Mountain_Summit:connect_one_way("Adult DMT GS Falling Rocks Path", function() 
    return All(
        Any(
            Can_use("MegatonHammer", "adult"),
            Has("logic_trail_gs_upper")
        )
        -- at_night
    )
end)
Adult_Death_Mountain_Summit:connect_one_way("Adult DMT Gossip Stone")
Adult_Death_Mountain_Summit:connect_one_way("Adult Gossip Stone Fairy", function() 
    return All(
        Can_summon_gossip_fairy("adult"),
        Has_bottle()
    )
end)


Child_Death_Mountain_Summit:connect_one_way_entrance("Child Death Mountain", Child_Death_Mountain)
Child_Death_Mountain_Summit:connect_one_way_entrance("Child DMC Upper Local", Child_DMC_Upper_Local)
Child_Death_Mountain_Summit:connect_one_way_entrance("Child DMT Owl Flight", Child_DMT_Owl_Flight)
Child_Death_Mountain_Summit:connect_one_way_entrance("Child DMT Cow Grotto", Child_DMT_Cow_Grotto, function() return Can_blast_or_smash("child") end)
Child_Death_Mountain_Summit:connect_one_way_entrance("Child DMT Great Fairy Fountain", Child_DMT_Great_Fairy_Fountain, function() return Can_blast_or_smash("child") end)

Adult_Death_Mountain_Summit:connect_one_way_entrance("Adult Death Mountain", Adult_Death_Mountain)
Adult_Death_Mountain_Summit:connect_one_way_entrance("Adult DMC Upper Local", Adult_DMC_Upper_Local)
Adult_Death_Mountain_Summit:connect_one_way_entrance("Adult DMT Owl Flight", Adult_DMT_Owl_Flight, function() return false end)
Adult_Death_Mountain_Summit:connect_one_way_entrance("Adult DMT Cow Grotto", Adult_DMT_Cow_Grotto, function() return Can_blast_or_smash("adult") end)
Adult_Death_Mountain_Summit:connect_one_way_entrance("Adult DMT Great Fairy Fountain", Adult_DMT_Great_Fairy_Fountain, function() return Can_blast_or_smash("adult") end)


-- Child_DMT_Owl_Flight:connect_one_way()
-- Adult_DMT_Owl_Flight:connect_one_way()

Child_DMT_Owl_Flight:connect_one_way_entrance("Child Kak Impas Rooftop", Child_Kak_Impas_Rooftop)
Adult_DMT_Owl_Flight:connect_one_way_entrance("Adult Kak Impas Rooftop", Adult_Kak_Impas_Rooftop)

Child_DMT_Great_Fairy_Fountain:connect_one_way("Child DMT Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)
Adult_DMT_Great_Fairy_Fountain:connect_one_way("Adult DMT Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)

Child_DMT_Great_Fairy_Fountain:connect_one_way_entrance("Child Death Mountain Summit", Child_Death_Mountain_Summit)
Adult_DMT_Great_Fairy_Fountain:connect_one_way_entrance("Adult Death Mountain Summit", Adult_Death_Mountain_Summit)

Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Cow", function() return Can_play("EponasSong") end)
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Green Rupee 1")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Green Rupee 2")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Green Rupee 3")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Green Rupee 4")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Green Rupee 5")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Green Rupee 6")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Red Rupee")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Recovery Heart 1")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Recovery Heart 2")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Recovery Heart 3")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Recovery Heart 4")
Child_DMT_Cow_Grotto:connect_one_way("Child DMT Cow Grotto Beehive", function() return Can_break_lower_beehive("child") end)

Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Cow", function() return Can_play("EponasSong") end)
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Green Rupee 1")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Green Rupee 2")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Green Rupee 3")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Green Rupee 4")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Green Rupee 5")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Green Rupee 6")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Red Rupee")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Recovery Heart 1")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Recovery Heart 2")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Recovery Heart 3")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Recovery Heart 4")
Adult_DMT_Cow_Grotto:connect_one_way("Adult DMT Cow Grotto Beehive", function() return Can_break_lower_beehive("adult") end)


Child_DMT_Cow_Grotto:connect_one_way_entrance("Child Death Mountain Summit", Child_Death_Mountain_Summit)
Adult_DMT_Cow_Grotto:connect_one_way_entrance("Adult Death Mountain Summit", Adult_Death_Mountain_Summit)

Child_DMT_Storms_Grotto:connect_one_way("Child DMT Storms Grotto Chest")
Child_DMT_Storms_Grotto:connect_one_way("Child DMT Storms Grotto Beehive 1", function() return Can_break_lower_beehive("child") end)
Child_DMT_Storms_Grotto:connect_one_way("Child DMT Storms Grotto Beehive 2", function() return Can_break_lower_beehive("child") end)
Child_DMT_Storms_Grotto:connect_one_way("Child DMT Storms Grotto Gossip Stone")

Adult_DMT_Storms_Grotto:connect_one_way("Adult DMT Storms Grotto Chest")
Adult_DMT_Storms_Grotto:connect_one_way("Adult DMT Storms Grotto Beehive 1", function() return Can_break_lower_beehive("adult") end)
Adult_DMT_Storms_Grotto:connect_one_way("Adult DMT Storms Grotto Beehive 2", function() return Can_break_lower_beehive("adult") end)
Adult_DMT_Storms_Grotto:connect_one_way("Adult DMT Storms Grotto Gossip Stone")


Child_DMT_Storms_Grotto:connect_one_way_entrance("Child Death Mountain", Child_Death_Mountain)
Adult_DMT_Storms_Grotto:connect_one_way_entrance("Adult Death Mountain", Adult_Death_Mountain)


-- -- {
--     "region_name": "Death Mountain",
--     "scene": "Death Mountain",
--     "hint": "DEATH_MOUNTAIN_TRAIL",
--     "time_passes": true,
--     "locations": {
--         "DMT Chest": "
--             can_blast_or_smash or 
--             (logic_dmt_bombable and is_child and Progressive_Strength_Upgrade)",
--         "DMT Freestanding PoH": "
--             can_take_damage or can_use(Hover_Boots) or
--             (is_adult and here(can_plant_bean and (plant_beans or has_explosives or Progressive_Strength_Upgrade)))",
--         "DMT Rock Red Rupee": "is_child and here(can_blast_or_smash)",
--         "DMT Rock Blue Rupee": "is_child and has_explosives",
--         "DMT GS Bean Patch": "
--             can_plant_bugs and can_child_attack and
--             (has_explosives or Progressive_Strength_Upgrade or (logic_dmt_soil_gs and can_use(Boomerang)))",
--         "DMT GS Near Kak": "can_blast_or_smash",
--         "DMT GS Above Dodongos Cavern": "
--             is_adult and at_night and
--             (Megaton_Hammer or
--                 (logic_trail_gs_lower_hookshot and Hookshot) or
--                 (logic_trail_gs_lower_hovers and Hover_Boots) or
--                 (logic_trail_gs_lower_bean and
--                     here(can_plant_bean and (plant_beans or has_explosives or Progressive_Strength_Upgrade))))",
--         "Bean Plant Fairy": "
--             is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle and
--             (has_explosives or Progressive_Strength_Upgrade)"
--     },
--     "exits": {
--         "Kak Behind Gate": "True",
--         "Goron City": "True",
--         "Death Mountain Summit": "
--             here(can_blast_or_smash) or
--             (is_adult and here(can_plant_bean and (plant_beans or Progressive_Strength_Upgrade))) or
--             (logic_dmt_climb_hovers and can_use(Hover_Boots))",
--         "Dodongos Cavern Beginning": "
--             has_explosives or Progressive_Strength_Upgrade or is_adult",
--         "DMT Storms Grotto": "can_open_storm_grotto"
--     }
-- },
-- {
--     "region_name": "Death Mountain Summit",
--     "scene": "Death Mountain",
--     "hint": "DEATH_MOUNTAIN_TRAIL",
--     "time_passes": true,
--     "events": {
--         "Prescription Access": "is_adult and ('Broken Sword Access' or Broken_Sword)"
--     },
--     "locations": {
--         "DMT Biggoron": "
--             is_adult and
--             (Claim_Check or
--                 (guarantee_trade_path and
--                 ('Eyedrops Access' or (Eyedrops and disable_trade_revert))))",
--         "DMT GS Falling Rocks Path": "
--             is_adult and (Megaton_Hammer or logic_trail_gs_upper) and at_night",
--         "DMT Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
--         "Bug Rock": "is_child and has_bottle"
--     },
--     "exits": {
--         "Death Mountain": "True",
--         "DMC Upper Local": "True",
--         "DMT Owl Flight": "is_child",
--         "DMT Cow Grotto": "here(can_blast_or_smash)",
--         "DMT Great Fairy Fountain": "here(can_blast_or_smash)"
--     }
-- },
-- {
--     "region_name": "DMT Owl Flight",
--     "scene": "Death Mountain",
--     "hint": "DEATH_MOUNTAIN_TRAIL",
--     "exits": {
--         "Kak Impas Rooftop": "True"
--     }
-- },
-- {
--     "region_name": "DMT Great Fairy Fountain",
--     "scene": "DMT Great Fairy Fountain",
--     "locations": {
--         "DMT Great Fairy Reward": "can_play(Zeldas_Lullaby)"
--     },
--     "exits": {
--         "Death Mountain Summit": "True"
--     }
-- },
-- {
--     "region_name": "DMT Cow Grotto",
--     "scene": "DMT Cow Grotto",
--     "locations": {
--         "DMT Cow Grotto Cow": "can_play(Eponas_Song)",
--         "DMT Cow Grotto Green Rupee 1": "True",
--         "DMT Cow Grotto Green Rupee 2": "True",
--         "DMT Cow Grotto Green Rupee 3": "True",
--         "DMT Cow Grotto Green Rupee 4": "True",
--         "DMT Cow Grotto Green Rupee 5": "True",
--         "DMT Cow Grotto Green Rupee 6": "True",
--         "DMT Cow Grotto Red Rupee": "True",
--         "DMT Cow Grotto Recovery Heart 1": "True",
--         "DMT Cow Grotto Recovery Heart 2": "True",
--         "DMT Cow Grotto Recovery Heart 3": "True",
--         "DMT Cow Grotto Recovery Heart 4": "True",
--         "DMT Cow Grotto Beehive": "can_break_lower_beehive"
--     },
--     "exits": {
--         "Death Mountain Summit": "True"
--     }
-- },
-- {
--     "region_name": "DMT Storms Grotto",
--     "scene": "DMT Storms Grotto",
--     "locations": {
--         "DMT Storms Grotto Chest": "True",
--         "DMT Storms Grotto Beehive 1": "can_break_lower_beehive",
--         "DMT Storms Grotto Beehive 2": "can_break_lower_beehive",
--         "DMT Storms Grotto Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
--         "Butterfly Fairy": "can_use(Sticks) and has_bottle",
--         "Bug Shrub": "can_cut_shrubs and has_bottle",
--         "Lone Fish": "has_bottle"
--     },
--     "exits": {
--         "Death Mountain": "True"
--     }
-- },