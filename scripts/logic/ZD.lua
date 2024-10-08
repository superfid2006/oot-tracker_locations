-- Child_Zoras_Domain = OOTLocation.new("Child_Zoras_Domain")
-- Child_ZD_Behind_King_Zora = OOTLocation.new("Child_ZD_Behind_King_Zora")
-- Child_ZD_Eyeball_Frog_Timeout = OOTLocation.new("Child_ZD_Eyeball_Frog_Timeout")
-- Child_ZD_Shop = OOTLocation.new("Child_ZD_Shop")
-- Child_ZD_Storms_Grotto = OOTLocation.new("Child_ZD_Storms_Grotto")

-- Adult_Zoras_Domain = OOTLocation.new("Adult_Zoras_Domain")
-- Adult_ZD_Behind_King_Zora = OOTLocation.new("Adult_ZD_Behind_King_Zora")
-- Adult_ZD_Eyeball_Frog_Timeout = OOTLocation.new("Adult_ZD_Eyeball_Frog_Timeout")
-- Adult_ZD_Shop = OOTLocation.new("Adult_ZD_Shop")
-- Adult_ZD_Storms_Grotto = OOTLocation.new("Adult_ZD_Storms_Grotto")

Child_Zoras_Domain:connect_one_way("Child ZD Diving Minigame")
Child_Zoras_Domain:connect_one_way("Child ZD Chest", function() return Can_use("DekuStick", "child") end)
Child_Zoras_Domain:connect_one_way("Child Deliver Rutos Letter", function() 
    return All(
        Has("RutosLetter"),
        Tracker:FindObjectForCode("zora_fountain").CurrentStage ~= 0
    )
end)
Child_Zoras_Domain:connect_one_way("Child ZD King Zora Thawed", function() return false end)--, King Zora Thawed)"is_adult and Blue_Fire"
Child_Zoras_Domain:connect_one_way("Child ZD Pot 1")
Child_Zoras_Domain:connect_one_way("Child ZD Pot 2")
Child_Zoras_Domain:connect_one_way("Child ZD Pot 3")
Child_Zoras_Domain:connect_one_way("Child ZD Pot 4")
Child_Zoras_Domain:connect_one_way("Child ZD Pot 5")
Child_Zoras_Domain:connect_one_way("Child ZD In Front of King Zora Beehive 1", function() return Can_break_upper_beehive("child") end)
Child_Zoras_Domain:connect_one_way("Child ZD In Front of King Zora Beehive 2", function() return Can_break_upper_beehive("child") end)
Child_Zoras_Domain:connect_one_way("Child ZD GS Frozen Waterfall", function() return false end)
Child_Zoras_Domain:connect_one_way("Child ZD Gossip Stone")
Child_Zoras_Domain:connect_one_way("Child Stick Pot")
Child_Zoras_Domain:connect_one_way("Child Nut Pot")

Adult_Zoras_Domain:connect_one_way("Adult ZD Diving Minigame", function() return false end)
Adult_Zoras_Domain:connect_one_way("Adult ZD Chest", function() return Can_use("DekuStick", "adult") end)
Adult_Zoras_Domain:connect_one_way("Adult Deliver Rutos Letter", function() return false end)
Adult_Zoras_Domain:connect_one_way("Adult ZD King Zora Thawed", function() return Blue_Fire("adult") end)--, King Zora Thawed)"is_adult and Blue_Fire"
Adult_Zoras_Domain:connect_one_way("Adult ZD Pot 1")
Adult_Zoras_Domain:connect_one_way("Adult ZD Pot 2")
Adult_Zoras_Domain:connect_one_way("Adult ZD Pot 3")
Adult_Zoras_Domain:connect_one_way("Adult ZD Pot 4")
Adult_Zoras_Domain:connect_one_way("Adult ZD Pot 5")
Adult_Zoras_Domain:connect_one_way("Adult ZD In Front of King Zora Beehive 1", function() return false end)--is_child and Can_break_upper_beehive)
Adult_Zoras_Domain:connect_one_way("Adult ZD In Front of King Zora Beehive 2", function() return false end)
Adult_Zoras_Domain:connect_one_way("Adult ZD GS Frozen Waterfall", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        Can_use("Bow", "adult"),
        Tracker:FindObjectForCode("MagicMeter").CurrentStage > 0,
        Has("logic_domain_gs")
    )
end)
Adult_Zoras_Domain:connect_one_way("Adult ZD Gossip Stone")
Adult_Zoras_Domain:connect_one_way("Adult Stick Pot", function() return false end)
Adult_Zoras_Domain:connect_one_way("Adult Nut Pot")

Child_Zoras_Domain:connect_one_way_entrance("Child ZR Behind Waterfall", Child_ZR_Behind_Waterfall)
Child_Zoras_Domain:connect_one_way_entrance("Child Lake Hylia", Child_Lake_Hylia, function() 
    return All(
        true,
        Can_dive("child")
    ) 
end)
Child_Zoras_Domain:connect_one_way_entrance("Child ZD Behind King Zora", Child_ZD_Behind_King_Zora, function()
    return Any(
        CanReach(NamedLocations['Child Deliver Rutos Letter'].name) > 5,
        Tracker:FindObjectForCode("zora_fountain").CurrentStage == 0,
        All(
            false,
            Any(
                Tracker:FindObjectForCode("zora_fountain").CurrentStage == 1,
                Has("logic_king_zora_skip")
            )
        )
    )
end)
Child_Zoras_Domain:connect_one_way_entrance("Child ZD Shop", Child_ZD_Shop, function() 
    return 
    Any(
        true, 
        Blue_Fire("child")
    ) 
end)
Child_Zoras_Domain:connect_one_way_entrance("Child ZD Storms Grotto", Child_ZD_Storms_Grotto, function() return Can_open_storm_grotto("chil;d") end)

Adult_Zoras_Domain:connect_one_way_entrance("Adult ZR Behind Waterfall", Adult_ZR_Behind_Waterfall)
Adult_Zoras_Domain:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia, function() 
    return All(
        false,
        Can_dive("adult")
    ) 
end)

Adult_Zoras_Domain:connect_one_way_entrance("Adult ZD Behind King Zora", Adult_ZD_Behind_King_Zora, function()
    return Any(
        CanReach(NamedLocations['Child Deliver Rutos Letter'].name) > 5,
        Tracker:FindObjectForCode("zora_fountain").CurrentStage == 0,
        All(
            true,
            Any(
                Tracker:FindObjectForCode("zora_fountain").CurrentStage == 1,
                Has("logic_king_zora_skip")
            )
        )
    )
end)
Adult_Zoras_Domain:connect_one_way_entrance("Adult ZD Shop", Adult_ZD_Shop, function() 
    return 
    Any(
        false, 
        Blue_Fire("adult")
    ) 
end)
Adult_Zoras_Domain:connect_one_way_entrance("Adult ZD Storms Grotto", Adult_ZD_Storms_Grotto, function() return Can_open_storm_grotto("adult") end)

Child_ZD_Behind_King_Zora:connect_one_way("Child ZD Behind King Zora Beehive", function() return Can_break_upper_beehive("child") end)
Adult_ZD_Behind_King_Zora:connect_one_way("Adult ZD Behind King Zora Beehive", function() return false end)

Child_ZD_Behind_King_Zora:connect_one_way_entrance("Child Zoras Domain", Child_Zoras_Domain, function() 
    return Any(
        All(
            true,
            Has("RutosLetter"),
            Tracker:FindObjectForCode("zora_fountain").CurrentStage == 0
        ),
        Tracker:FindObjectForCode("zora_fountain").CurrentStage == 0,
        All(
            false,
            Tracker:FindObjectForCode("zora_fountain").CurrentStage == 1
        )
    )
end)
Child_ZD_Behind_King_Zora:connect_one_way_entrance("Child Zoras Fountain", Child_Zoras_Fountain)

Adult_ZD_Behind_King_Zora:connect_one_way_entrance("Adult Zoras Domain", Adult_Zoras_Domain, function() 
    return Any(
        All(
            false,
            Has("RutosLetter"),
            Tracker:FindObjectForCode("zora_fountain").CurrentStage == 0
        ),
        Tracker:FindObjectForCode("zora_fountain").CurrentStage == 0,
        All(
            true,
            Tracker:FindObjectForCode("zora_fountain").CurrentStage == 1
        )
    )
end)
Adult_ZD_Behind_King_Zora:connect_one_way_entrance("Adult Zoras Fountain", Adult_Zoras_Fountain)


-- Child_ZD_Eyeball_Frog_Timeout:connect_one_way()
-- Adult_ZD_Eyeball_Frog_Timeout:connect_one_way()

Child_ZD_Eyeball_Frog_Timeout:connect_one_way_entrance("Child Zoras Domain", Child_Zoras_Domain)
Adult_ZD_Eyeball_Frog_Timeout:connect_one_way_entrance("Adult Zoras Domain", Adult_Zoras_Domain)

Child_ZD_Shop:connect_one_way("Child ZD Shop Item 1")
Child_ZD_Shop:connect_one_way("Child ZD Shop Item 2")
Child_ZD_Shop:connect_one_way("Child ZD Shop Item 3")
Child_ZD_Shop:connect_one_way("Child ZD Shop Item 4")
Child_ZD_Shop:connect_one_way("Child ZD Shop Item 5")
Child_ZD_Shop:connect_one_way("Child ZD Shop Item 6")
Child_ZD_Shop:connect_one_way("Child ZD Shop Item 7")
Child_ZD_Shop:connect_one_way("Child ZD Shop Item 8")

Adult_ZD_Shop:connect_one_way("Adult ZD Shop Item 1")
Adult_ZD_Shop:connect_one_way("Adult ZD Shop Item 2")
Adult_ZD_Shop:connect_one_way("Adult ZD Shop Item 3")
Adult_ZD_Shop:connect_one_way("Adult ZD Shop Item 4")
Adult_ZD_Shop:connect_one_way("Adult ZD Shop Item 5")
Adult_ZD_Shop:connect_one_way("Adult ZD Shop Item 6")
Adult_ZD_Shop:connect_one_way("Adult ZD Shop Item 7")
Adult_ZD_Shop:connect_one_way("Adult ZD Shop Item 8")

Child_ZD_Shop:connect_one_way_entrance("Child Zoras Domain", Child_Zoras_Domain)
Adult_ZD_Shop:connect_one_way_entrance("Adult Zoras Domain", Adult_Zoras_Domain)

-- Child_ZD_Storms_Grotto:connect_one_way()
-- Adult_ZD_Storms_Grotto:connect_one_way()

Child_ZD_Storms_Grotto:connect_one_way_entrance("Child Zoras Domain", Child_Zoras_Domain)
Adult_ZD_Storms_Grotto:connect_one_way_entrance("Adult Zoras Domain", Adult_Zoras_Domain)

-- --{
--     "region_name": "Zoras Domain",
--     "scene": "Zoras Domain",
--     "hint": "ZORAS_DOMAIN",
--     "events": {
--         "King Zora Thawed": "is_adult and Blue_Fire",
--         "Eyeball Frog Access": "
--             is_adult and 'King Zora Thawed' and
--             (Eyedrops or Eyeball_Frog or Prescription or 'Prescription Access')"
--     },
--     "locations": {
--         "ZD Diving Minigame": "is_child",
--         "ZD Chest": "can_use(Sticks)",
--         "Deliver Rutos Letter": "
--             is_child and Rutos_Letter and zora_fountain != 'open'",
--         "ZD King Zora Thawed": "'King Zora Thawed'",
--         "ZD Pot 1": "True",
--         "ZD Pot 2": "True",
--         "ZD Pot 3": "True",
--         "ZD Pot 4": "True",
--         "ZD Pot 5": "True",
--         "ZD In Front of King Zora Beehive 1": "is_child and can_break_upper_beehive",
--         "ZD In Front of King Zora Beehive 2": "is_child and can_break_upper_beehive",
--         "ZD GS Frozen Waterfall": "
--             is_adult and at_night and
--             (Hookshot or Bow or Magic_Meter or logic_domain_gs)",
--         "ZD Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy_without_suns and has_bottle",
--         "Fish Group": "is_child and has_bottle",
--         "Stick Pot": "is_child",
--         "Nut Pot": "True"
--     },
--     "exits": {
--         "ZR Behind Waterfall": "True",
--         "Lake Hylia": "is_child and can_dive",
--         "ZD Behind King Zora": "
--             Deliver_Letter or zora_fountain == 'open' or
--             (is_adult and (zora_fountain == 'adult' or logic_king_zora_skip))",
--         "ZD Shop": "is_child or Blue_Fire",
--         "ZD Storms Grotto": "can_open_storm_grotto"
--     }
-- },
-- {
--     "region_name": "ZD Behind King Zora",
--     "scene": "Zoras Domain",
--     "hint": "ZORAS_DOMAIN",
--     "locations": {
--         "ZD Behind King Zora Beehive": "is_child and can_break_upper_beehive"
--     },
--     "exits": {
--         "Zoras Domain": "
--             Deliver_Letter or zora_fountain == 'open' or
--             (is_adult and zora_fountain == 'adult')",
--         "Zoras Fountain": "True"
--     }
-- },
-- {
--     "region_name": "ZD Eyeball Frog Timeout",
--     "scene": "Zoras Domain",
--     "hint": "ZORAS_DOMAIN",
--     "exits": {
--         "Zoras Domain": "True"
--     }
-- },
-- {
--     "region_name": "ZD Shop",
--     "scene": "ZD Shop",
--     "locations": {
--         "ZD Shop Item 1": "True",
--         "ZD Shop Item 2": "True",
--         "ZD Shop Item 3": "True",
--         "ZD Shop Item 4": "True",
--         "ZD Shop Item 5": "True",
--         "ZD Shop Item 6": "True",
--         "ZD Shop Item 7": "True",
--         "ZD Shop Item 8": "True"
--     },
--     "exits": {
--         "Zoras Domain": "True"
--     }
-- },
-- {
--     "region_name": "ZD Storms Grotto",
--     "scene": "ZD Storms Grotto",
--     "locations": {
--         "Free Fairies": "has_bottle"
--     },
--     "exits": {
--         "Zoras Domain": "True"
--     }
-- },