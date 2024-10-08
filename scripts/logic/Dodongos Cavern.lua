-- Child_Dodongos_Cavern_Beginning = OOTLocation.new("Child_Dodongos_Cavern_Beginning")
-- Child_Dodongos_Cavern_Lobby = OOTLocation.new("Child_Dodongos_Cavern_Lobby")
-- Child_Dodongos_Cavern_Lower_Right_Side = OOTLocation.new("Child_Dodongos_Cavern_Lower_Right_Side")
-- Child_Dodongos_Cavern_Torch_Room = OOTLocation.new("Child_Dodongos_Cavern_Torch_Room")
-- Child_Dodongos_Cavern_Staircase_Room = OOTLocation.new("Child_Dodongos_Cavern_Staircase_Room")
-- Child_Dodongos_Cavern_Climb = OOTLocation.new("Child_Dodongos_Cavern_Climb")
-- Child_Dodongos_Cavern_Before_Upper_Lizalfos = OOTLocation.new("Child_Dodongos_Cavern_Before_Upper_Lizalfos")
-- Child_Dodongos_Cavern_Upper_Lizalfos = OOTLocation.new("Child_Dodongos_Cavern_Upper_Lizalfos")
-- Child_Dodongos_Cavern_Far_Bridge = OOTLocation.new("Child_Dodongos_Cavern_Far_Bridge")
-- Child_Dodongos_Cavern_Before_Boss = OOTLocation.new("Child_Dodongos_Cavern_Before_Boss")

-- Adult_Dodongos_Cavern_Beginning = OOTLocation.new("Adult_Dodongos_Cavern_Beginning")
-- Adult_Dodongos_Cavern_Lobby = OOTLocation.new("Adult_Dodongos_Cavern_Lobby")
-- Adult_Dodongos_Cavern_Lower_Right_Side = OOTLocation.new("Adult_Dodongos_Cavern_Lower_Right_Side")
-- Adult_Dodongos_Cavern_Torch_Room = OOTLocation.new("Adult_Dodongos_Cavern_Torch_Room")
-- Adult_Dodongos_Cavern_Staircase_Room = OOTLocation.new("Adult_Dodongos_Cavern_Staircase_Room")
-- Adult_Dodongos_Cavern_Climb = OOTLocation.new("Adult_Dodongos_Cavern_Climb")
-- Adult_Dodongos_Cavern_Before_Upper_Lizalfos = OOTLocation.new("Adult_Dodongos_Cavern_Before_Upper_Lizalfos")
-- Adult_Dodongos_Cavern_Upper_Lizalfos = OOTLocation.new("Adult_Dodongos_Cavern_Upper_Lizalfos")
-- Adult_Dodongos_Cavern_Far_Bridge = OOTLocation.new("Adult_Dodongos_Cavern_Far_Bridge")
-- Adult_Dodongos_Cavern_Before_Boss = OOTLocation.new("Adult_Dodongos_Cavern_Before_Boss")

-- Child_Dodongos_Cavern_Beginning:connect_one_way()
-- Adult_Dodongos_Cavern_Beginning:connect_one_way()

Child_Dodongos_Cavern_Beginning:connect_one_way_entrance("Child Death Mountain", Child_Death_Mountain)
Child_Dodongos_Cavern_Beginning:connect_one_way_entrance("Child Dodongos Cavern Lobby", Child_Dodongos_Cavern_Lobby, function()
    return Any(
        Can_blast_or_smash("child"),
        Can_use("GoronBracelet", "child"),
        Has("dodongos_cavern_shortcuts")
    )
end)

Adult_Dodongos_Cavern_Beginning:connect_one_way_entrance("Adult Death Mountain", Adult_Death_Mountain)
Adult_Dodongos_Cavern_Beginning:connect_one_way_entrance("Adult Dodongos Cavern Lobby", Adult_Dodongos_Cavern_Lobby, function()
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("GoronBracelet", "child"),
        Has("dodongos_cavern_shortcuts")
    )
end)


Child_Dodongos_Cavern_Lobby:connect_one_way("Child Dodongos Cavern Map Chest", function()
    return Any(
        Can_blast_or_smash("child"),
        Can_use("GoronBracelet", "child")
    )
end)
Child_Dodongos_Cavern_Lobby:connect_one_way("Child Dodongos Cavern Deku Scrub Lobby", function()
    return Any(
        Can_stun_deku("child"),
        Can_use("GoronBracelet", "child")
    )
end)

Adult_Dodongos_Cavern_Lobby:connect_one_way("Adult Dodongos Cavern Map Chest", function()
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("GoronBracelet", "child")
    )
end)
Adult_Dodongos_Cavern_Lobby:connect_one_way("Adult Dodongos Cavern Deku Scrub Lobby", function()
    return Any(
        Can_stun_deku("adult"),
        Can_use("GoronBracelet", "child")
    )
end)


Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Lower Right Side", Child_Dodongos_Cavern_Lower_Right_Side, function() 
    return Any(
        Has_explosives(), 
        Can_use("GoronBracelet", "child")
    ) 
end)
Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Torch Room", Child_Dodongos_Cavern_Torch_Room, function() return false end)
Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Staircase Room", Child_Dodongos_Cavern_Staircase_Room, function() 
    return All(
        CanReach("Child_Dodongos_Cavern_Torch_Room") > 5,
        Any(
            false,
            Can_use("DekuStick", "child"),
            Can_use("DinsFire", "child")
        )
    ) 
end)
Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Far Bridge", Child_Dodongos_Cavern_Far_Bridge, function() return CanReach("Child_Dodongos_Cavern_Far_Bridge") > 5 end)
Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Before Boss", Child_Dodongos_Cavern_Before_Boss, function() return Has("dodongos_cavern_shortcuts") end)

Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Lower Right Side", Adult_Dodongos_Cavern_Lower_Right_Side, function() 
    return Any(
        Has_explosives(), 
        Can_use("GoronBracelet", "adult")
    ) 
end)
Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Torch Room", Adult_Dodongos_Cavern_Torch_Room, function() return true end)
Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Staircase Room", Adult_Dodongos_Cavern_Staircase_Room, function() 
    return All(
        CanReach("Adult_Dodongos_Cavern_Torch_Room") > 5,
        Any(
            true,
            Can_use("DekuStick", "adult"),
            Can_use("DinsFire", "adult")
        )
    ) 
end)
Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Far Bridge", Adult_Dodongos_Cavern_Far_Bridge, function() return CanReach("Adult_Dodongos_Cavern_Far_Bridge") > 5 end)
Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Before Boss", Adult_Dodongos_Cavern_Before_Boss, function() return Has("dodongos_cavern_shortcuts") end)


Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Hidden Recovery Heart")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 1")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 2")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 3")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 4")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 5")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 6")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Pot 1")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Pot 2")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Pot 3")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Pot 4")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern GS Side Room Near Lower Lizalfos", function() 
    return Any(
        false,
        Has_explosives(),
        Can_use("DekuStick", "child"),
        Can_use("Slingshot", "child"),
        Can_use("Boomerang", "child"),
        Can_use("KokiriSword", "child")
    ) 
end)
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern GS Scarecrow", function() 
    return Any(
        Scarecrow("child"),
        Can_use("Longshot", "child"),
        All(
            Has("logic_dc_scarecrow_gs"),
            Any(
                false,
                Can_child_attack("child")
            )
        )
    )
end)

Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Hidden Recovery Heart")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 1")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 2")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 3")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 4")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 5")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 6")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Pot 1")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Pot 2")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Pot 3")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Pot 4")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern GS Side Room Near Lower Lizalfos", function() 
    return Any(
        true,
        Has_explosives(),
        Can_use("DekuStick", "adult"),
        Can_use("Slingshot", "adult"),
        Can_use("Boomerang", "adult"),
        Can_use("KokiriSword", "adult")
    ) 
end)
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern GS Scarecrow", function() 
    return Any(
        Scarecrow("adult"),
        Can_use("Longshot", "adult"),
        All(
            Has("logic_dc_scarecrow_gs"),
            Any(
                true,
                Can_child_attack("adult")
            )
        )
    )
end)


Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way_entrance("Child Dodongos Cavern Torch Room", Child_Dodongos_Cavern_Torch_Room, function() 
    return Any(
        Can_use("DekuStick", "child"),
        Can_use("Slingshot", "child"),
        Bombs(),
        Can_use("KokiriSword", "child")
    ) 
end)
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way_entrance("Adult Dodongos Cavern Torch Room", Adult_Dodongos_Cavern_Torch_Room, function() 
    return Any(
        Can_use("DekuStick", "adult"),
        Can_use("Slingshot", "adult"),
        Bombs(),
        Can_use("KokiriSword", "adult")
    ) 
end)

Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Deku Scrub Side Room Near Dodongos", function() 
    return Any(
        Can_blast_or_smash("child"),
        Can_use("GoronBracelet", "child")
    ) 
end)
Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Torch Room Pot 1")
Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Torch Room Pot 2")
Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Torch Room Pot 3")
Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Torch Room Pot 4")

Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Deku Scrub Side Room Near Dodongos", function() 
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("GoronBracelet", "adult")
    ) 
end)
Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Torch Room Pot 1")
Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Torch Room Pot 2")
Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Torch Room Pot 3")
Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Torch Room Pot 4")


Child_Dodongos_Cavern_Torch_Room:connect_one_way_entrance("Child Dodongos Cavern Lower Right Side", Child_Dodongos_Cavern_Lower_Right_Side)
Adult_Dodongos_Cavern_Torch_Room:connect_one_way_entrance("Adult Dodongos Cavern Lower Right Side", Adult_Dodongos_Cavern_Lower_Right_Side)

Child_Dodongos_Cavern_Staircase_Room:connect_one_way("Child Dodongos Cavern Compass Chest", function() 
    return Any(
        Can_blast_or_smash("child"),
        Can_use("GoronBracelet", "child")
    ) 
end)
Child_Dodongos_Cavern_Staircase_Room:connect_one_way("Child Dodongos Cavern GS Vines Above Stairs", function() 
    return Any(
        CanReach("Child_Dodongos_Cavern_Climb") > 5,
        All(
            Has("logic_dc_vines_gs"),
            Can_use("Longshot", "child")
        )
    ) 
end)

Adult_Dodongos_Cavern_Staircase_Room:connect_one_way("Adult Dodongos Cavern Compass Chest", function() 
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("GoronBracelet", "adult")
    ) 
end)
Adult_Dodongos_Cavern_Staircase_Room:connect_one_way("Adult Dodongos Cavern GS Vines Above Stairs", function() 
    return Any(
        CanReach("Adult_Dodongos_Cavern_Climb") > 5,
        All(
            Has("logic_dc_vines_gs"),
            Can_use("Longshot", "adult")
        )
    ) 
end)


Child_Dodongos_Cavern_Staircase_Room:connect_one_way_entrance("Child Dodongos Cavern Climb", Child_Dodongos_Cavern_Climb, function() 
    return Any(
        Has_explosives(),
        Can_use("GoronBracelet", "child"),
        Can_use("DinsFire", "child"),
        All(
            Has("logic_dc_staircase"),
            Can_use("Bow", "child")
        )
    )
end)
Adult_Dodongos_Cavern_Staircase_Room:connect_one_way_entrance("Adult Dodongos Cavern Climb", Adult_Dodongos_Cavern_Climb, function() 
    return Any(
        Has_explosives(),
        Can_use("GoronBracelet", "adult"),
        Can_use("DinsFire", "adult"),
        All(
            Has("logic_dc_staircase"),
            Can_use("Bow", "adult")
        )
    )
end)

Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Bomb Flower Platform Chest")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Deku Scrub Near Bomb Bag Right", function() 
    return Any(
        Can_blast_or_smash("child"),
        All(
            Has("logic_dc_scrub_room"),
            false,
            Can_use("GoronBracelet", "child")
        )
    )
end)
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Deku Scrub Near Bomb Bag Left", function() 
    return Any(
        Can_blast_or_smash("child"),
        All(
            Has("logic_dc_scrub_room"),
            false,
            Can_use("GoronBracelet", "child")
        )
    )
end)
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Blade Room Behind Block Recovery Heart")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Staircase Pot 1")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Staircase Pot 2")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Staircase Pot 3")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Staircase Pot 4")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Blade Room Pot 1", function() 
    return Any(
        Can_use("Boomerang", "child"),
        CanReach("Child_Dodongos_Cavern_Far_Bridge") > 5
    ) 
end)
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Blade Room Pot 2", function() 
    return Any(
        Can_use("Boomerang", "child"),
        CanReach("Child_Dodongos_Cavern_Far_Bridge") > 5
    ) 
end)

Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Bomb Flower Platform Chest")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Deku Scrub Near Bomb Bag Right", function() 
    return Any(
        Can_blast_or_smash("adult"),
        All(
            Has("logic_dc_scrub_room"),
            true,
            Can_use("GoronBracelet", "adult")
        )
    )
end)
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Deku Scrub Near Bomb Bag Left", function() 
    return Any(
        Can_blast_or_smash("adult"),
        All(
            Has("logic_dc_scrub_room"),
            true,
            Can_use("GoronBracelet", "adult")
        )
    )
end)
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Blade Room Behind Block Recovery Heart")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Staircase Pot 1")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Staircase Pot 2")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Staircase Pot 3")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Staircase Pot 4")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Blade Room Pot 1", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        CanReach("Adult_Dodongos_Cavern_Far_Bridge") > 5
    ) 
end)
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Blade Room Pot 2", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        CanReach("Adult_Dodongos_Cavern_Far_Bridge") > 5
    ) 
end)


Child_Dodongos_Cavern_Climb:connect_one_way_entrance("Child Dodongos Cavern Before Upper Lizalfos", Child_Dodongos_Cavern_Before_Upper_Lizalfos,  function() 
    return Any(
        Can_blast_or_smash("child"),
        Can_use('GoronBracelet', "child")
    ) 
end)
Child_Dodongos_Cavern_Climb:connect_one_way_entrance("Child Dodongos Cavern Far Bridge", Child_Dodongos_Cavern_Far_Bridge, function() 
    return All(
        false,
        Any(
            Has("logic_dc_jump"),
            Can_use("HoverBoots", "child"),
            Can_use("Longshot", "child")
        )
    ) 
end)

Adult_Dodongos_Cavern_Climb:connect_one_way_entrance("Adult Dodongos Cavern Before Upper Lizalfos", Adult_Dodongos_Cavern_Before_Upper_Lizalfos, function() 
    return Any(
        Can_blast_or_smash("adult"),
        Can_use('GoronBracelet', "adult")
    ) 
end)
Adult_Dodongos_Cavern_Climb:connect_one_way_entrance("Adult Dodongos Cavern Far Bridge", Adult_Dodongos_Cavern_Far_Bridge, function() 
    return All(
        true,
        Any(
            Has("logic_dc_jump"),
            Can_use("HoverBoots", "adult"),
            Can_use("Longshot", "adult")
        )
    ) 
end)


Child_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way("Child Dodongos Cavern Single Eye Switch Room Pot 1")
Child_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way("Child Dodongos Cavern Single Eye Switch Room Pot 2")

Adult_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way("Adult Dodongos Cavern Single Eye Switch Room Pot 1")
Adult_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way("Adult Dodongos Cavern Single Eye Switch Room Pot 2")


Child_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way_entrance("Child Dodongos Cavern Upper Lizalfos", Child_Dodongos_Cavern_Upper_Lizalfos, function() 
    return Any(
        All(
            true,
            Any(
                Can_use("Slingshot", "child"),
                Has("logic_dc_slingshot_skip")
            )
        ),
        Can_use("Bow", "child")
    ) 
end)
Adult_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way_entrance("Adult Dodongos Cavern Upper Lizalfos", Adult_Dodongos_Cavern_Upper_Lizalfos, function() 
    return Any(
        All(
            false,
            Any(
                Can_use("Slingshot", "adult"),
                Has("logic_dc_slingshot_skip")
            )
        ),
        Can_use("Bow", "adult")
    ) 
end)

Child_Dodongos_Cavern_Upper_Lizalfos:connect_one_way("Child Dodongos Cavern Lizalfos Upper Recovery Heart 1")
Child_Dodongos_Cavern_Upper_Lizalfos:connect_one_way("Child Dodongos Cavern Lizalfos Upper Recovery Heart 2")

Adult_Dodongos_Cavern_Upper_Lizalfos:connect_one_way("Adult Dodongos Cavern Lizalfos Upper Recovery Heart 1")
Adult_Dodongos_Cavern_Upper_Lizalfos:connect_one_way("Adult Dodongos Cavern Lizalfos Upper Recovery Heart 2")


Child_Dodongos_Cavern_Upper_Lizalfos:connect_one_way_entrance("Child Dodongos Cavern Before Upper Lizalfos", Child_Dodongos_Cavern_Before_Upper_Lizalfos)
Child_Dodongos_Cavern_Upper_Lizalfos:connect_one_way_entrance("Child Dodongos Cavern Far Bridge", Child_Dodongos_Cavern_Far_Bridge, function() 
    return Any(
        false,
        Can_use("DekuStick", "child"),
        Can_use("Slingshot", "child"),
        Bombs(),
        Can_use("KokiriSword", "child")
    ) 
end )

Adult_Dodongos_Cavern_Upper_Lizalfos:connect_one_way_entrance("Adult Dodongos Cavern Before Upper Lizalfos", Adult_Dodongos_Cavern_Before_Upper_Lizalfos)
Adult_Dodongos_Cavern_Upper_Lizalfos:connect_one_way_entrance("Adult Dodongos Cavern Far Bridge", Adult_Dodongos_Cavern_Far_Bridge, function() 
    return Any(
        true,
        Can_use("DekuStick", "adult"),
        Can_use("Slingshot", "adult"),
        Bombs(),
        Can_use("KokiriSword", "adult")
    ) 
end )


Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern Bomb Bag Chest")
Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern End of Bridge Chest", function() return Can_blast_or_smash("child") end)
Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern Double Eye Switch Room Pot 1")
Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern Double Eye Switch Room Pot 2")
Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern GS Alcove Above Stairs", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Boomerang", "child")
    ) 
end)

Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern Bomb Bag Chest")
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern End of Bridge Chest", function() return Can_blast_or_smash("adult") end)
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern Double Eye Switch Room Pot 1")
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern Double Eye Switch Room Pot 2")
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern GS Alcove Above Stairs", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        Can_use("Boomerang", "adult")
    ) 
end)


Child_Dodongos_Cavern_Far_Bridge:connect_one_way_entrance("Child Dodongos Cavern Before Boss", Child_Dodongos_Cavern_Before_Boss,function() return Has_explosives() end)
Child_Dodongos_Cavern_Far_Bridge:connect_one_way_entrance("Child Dodongos Cavern Upper Lizalfos", Child_Dodongos_Cavern_Upper_Lizalfos)

Adult_Dodongos_Cavern_Far_Bridge:connect_one_way_entrance("Adult Dodongos Cavern Before Boss", Adult_Dodongos_Cavern_Before_Boss,function() return Has_explosives() end)
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way_entrance("Adult Dodongos Cavern Upper Lizalfos", Adult_Dodongos_Cavern_Upper_Lizalfos)


Child_Dodongos_Cavern_Before_Boss:connect_one_way("Child Dodongos Cavern Last Block Pot 1")
Child_Dodongos_Cavern_Before_Boss:connect_one_way("Child Dodongos Cavern Last Block Pot 2")
Child_Dodongos_Cavern_Before_Boss:connect_one_way("Child Dodongos Cavern Last Block Pot 3")
Child_Dodongos_Cavern_Before_Boss:connect_one_way("Child Dodongos Cavern GS Back Room", function() return Can_blast_or_smash("child") end)

Adult_Dodongos_Cavern_Before_Boss:connect_one_way("Adult Dodongos Cavern Last Block Pot 1")
Adult_Dodongos_Cavern_Before_Boss:connect_one_way("Adult Dodongos Cavern Last Block Pot 2")
Adult_Dodongos_Cavern_Before_Boss:connect_one_way("Adult Dodongos Cavern Last Block Pot 3")
Adult_Dodongos_Cavern_Before_Boss:connect_one_way("Adult Dodongos Cavern GS Back Room", function() return Can_blast_or_smash("adult") end)


Child_Dodongos_Cavern_Before_Boss:connect_one_way_entrance("Child Dodongos Cavern Boss Door", Child_Dodongos_Cavern_Boss_Door)
Adult_Dodongos_Cavern_Before_Boss:connect_one_way_entrance("Adult Dodongos Cavern Boss Door", Adult_Dodongos_Cavern_Boss_Door)






-- --    {
--     "region_name": "Dodongos Cavern Beginning",
--     "dungeon": "Dodongos Cavern",
--     "exits": {
--         "Death Mountain": "True",
--         "Dodongos Cavern Lobby": "
--             here(can_blast_or_smash or Progressive_Strength_Upgrade) or
--             dodongos_cavern_shortcuts"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Lobby",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Map Chest": "can_blast_or_smash or Progressive_Strength_Upgrade",
--         "Dodongos Cavern Deku Scrub Lobby": "can_stun_deku or Progressive_Strength_Upgrade",
--         "Dodongos Cavern Gossip Stone": "here(can_blast_or_smash or Progressive_Strength_Upgrade)",
--         "Gossip Stone Fairy": "
--             (can_blast_or_smash or Progressive_Strength_Upgrade) and
--             can_summon_gossip_fairy and has_bottle"
--     },
--     "exits": {
--         "Dodongos Cavern Lower Right Side": "has_explosives or Progressive_Strength_Upgrade",
--         "Dodongos Cavern Torch Room": "is_adult",
--         "Dodongos Cavern Staircase Room": "
--             at('Dodongos Cavern Torch Room', is_adult or Sticks or can_use(Dins_Fire))",
--         "Dodongos Cavern Far Bridge": "at('Dodongos Cavern Far Bridge', True)",
--         "Dodongos Cavern Before Boss": "dodongos_cavern_shortcuts"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Lower Right Side",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Lower Lizalfos Hidden Recovery Heart": "True",
--         "Dodongos Cavern Right Side Pot 1": "True",
--         "Dodongos Cavern Right Side Pot 2": "True",
--         "Dodongos Cavern Right Side Pot 3": "True",
--         "Dodongos Cavern Right Side Pot 4": "True",
--         "Dodongos Cavern Right Side Pot 5": "True",
--         "Dodongos Cavern Right Side Pot 6": "True",
--         "Dodongos Cavern Lower Lizalfos Pot 1": "True",
--         "Dodongos Cavern Lower Lizalfos Pot 2": "True",
--         "Dodongos Cavern Lower Lizalfos Pot 3": "True",
--         "Dodongos Cavern Lower Lizalfos Pot 4": "True",
--         "Dodongos Cavern GS Side Room Near Lower Lizalfos": "
--             is_adult or has_explosives or Sticks or Slingshot or Boomerang or Kokiri_Sword",
--         "Dodongos Cavern GS Scarecrow": "
--             can_use(Scarecrow) or can_use(Longshot) or
--             (logic_dc_scarecrow_gs and (is_adult or can_child_attack))"
--     },
--     "exits": {
--         "Dodongos Cavern Torch Room": "Sticks or Slingshot or Bombs or Kokiri_Sword"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Torch Room",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Deku Scrub Side Room Near Dodongos": "
--             can_blast_or_smash or Progressive_Strength_Upgrade",
--         "Dodongos Cavern Torch Room Pot 1": "True",
--         "Dodongos Cavern Torch Room Pot 2": "True",
--         "Dodongos Cavern Torch Room Pot 3": "True",
--         "Dodongos Cavern Torch Room Pot 4": "True"
--     },
--     "exits": {
--         "Dodongos Cavern Lower Right Side": "True"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Staircase Room",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Compass Chest": "can_blast_or_smash or Progressive_Strength_Upgrade",
--         "Dodongos Cavern GS Vines Above Stairs": "
--             at('Dodongos Cavern Climb', True) or (logic_dc_vines_gs and can_use(Longshot))"
--     },
--     "exits": {
--         "Dodongos Cavern Climb": "
--             has_explosives or Progressive_Strength_Upgrade or
--             can_use(Dins_Fire) or (logic_dc_staircase and can_use(Bow))"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Climb",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Bomb Flower Platform Chest": "True",
--         "Dodongos Cavern Deku Scrub Near Bomb Bag Right": "
--             can_blast_or_smash or
--             (logic_dc_scrub_room and is_adult and Progressive_Strength_Upgrade)",
--         "Dodongos Cavern Deku Scrub Near Bomb Bag Left": "
--             can_blast_or_smash or
--             (logic_dc_scrub_room and is_adult and Progressive_Strength_Upgrade)",
--         "Dodongos Cavern Blade Room Behind Block Recovery Heart": "True",
--         "Dodongos Cavern Staircase Pot 1": "True",
--         "Dodongos Cavern Staircase Pot 2": "True",
--         "Dodongos Cavern Staircase Pot 3": "True",
--         "Dodongos Cavern Staircase Pot 4": "True",
--         "Dodongos Cavern Blade Room Pot 1": "
--             can_use(Boomerang) or at('Dodongos Cavern Far Bridge', True)",
--         "Dodongos Cavern Blade Room Pot 2": "
--             can_use(Boomerang) or at('Dodongos Cavern Far Bridge', True)"
--     },
--     "exits": {
--         "Dodongos Cavern Before Upper Lizalfos": "
--             here(can_blast_or_smash or Progressive_Strength_Upgrade)",
--         "Dodongos Cavern Far Bridge": "
--             is_adult and (logic_dc_jump or Hover_Boots or Longshot)"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Before Upper Lizalfos",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Single Eye Switch Room Pot 1": "True",
--         "Dodongos Cavern Single Eye Switch Room Pot 2": "True"
--     },
--     "exits": {
--         "Dodongos Cavern Upper Lizalfos": "
--             (is_child and (Slingshot or logic_dc_slingshot_skip)) or can_use(Bow)"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Upper Lizalfos",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Lizalfos Upper Recovery Heart 1": "True",
--         "Dodongos Cavern Lizalfos Upper Recovery Heart 2": "True"
--     },
--     "exits": {
--         "Dodongos Cavern Before Upper Lizalfos": "True",
--         "Dodongos Cavern Far Bridge": "is_adult or Sticks or Slingshot or Bombs or Kokiri_Sword"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Far Bridge",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Bomb Bag Chest": "True",
--         "Dodongos Cavern End of Bridge Chest": "can_blast_or_smash",
--         "Dodongos Cavern Double Eye Switch Room Pot 1": "True",
--         "Dodongos Cavern Double Eye Switch Room Pot 2": "True",
--         "Dodongos Cavern GS Alcove Above Stairs": "can_use(Hookshot) or can_use(Boomerang)"
--     },
--     "exits": {
--         "Dodongos Cavern Before Boss": "has_explosives",
--         "Dodongos Cavern Upper Lizalfos": "True"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Before Boss",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Last Block Pot 1": "True",
--         "Dodongos Cavern Last Block Pot 2": "True",
--         "Dodongos Cavern Last Block Pot 3": "True",
--         "Dodongos Cavern GS Back Room": "can_blast_or_smash",
--         "Fairy Pot": "has_bottle"
--     },
--     "exits": {
--         "Dodongos Cavern Boss Door": "True"
--     }
-- }