{
    "region_name": "Goron City",
    "scene": "Goron City",
    "hint": "GORON_CITY",
    "events": {
        "Goron City Child Fire": "is_child and can_use(Dins_Fire)",
        "GC Woods Warp Open": "
            can_blast_or_smash or can_use(Dins_Fire) or can_use(Bow) or
            Progressive_Strength_Upgrade or 'Goron City Child Fire'",
        "Stop GC Rolling Goron as Adult": "
            is_adult and
            (Progressive_Strength_Upgrade or has_explosives or Bow or
                (logic_link_goron_dins and can_use(Dins_Fire)))"
    },
    "locations": {
        "GC Maze Left Chest": "
            can_use(Megaton_Hammer) or can_use(Silver_Gauntlets) or
            (logic_goron_city_leftmost and has_explosives and can_use(Hover_Boots))",
        "GC Maze Center Chest": "can_blast_or_smash or can_use(Silver_Gauntlets)",
        "GC Maze Right Chest": "can_blast_or_smash or can_use(Silver_Gauntlets)",
        "GC Rolling Goron as Child": "
            is_child and
            (has_explosives or (Progressive_Strength_Upgrade and logic_child_rolling_with_strength))",
        "GC Medigoron": "
            is_adult and Progressive_Wallet and
            (can_blast_or_smash or Progressive_Strength_Upgrade)",
        "GC Rolling Goron as Adult": "'Stop GC Rolling Goron as Adult'",
        "GC Lower Staircase Pot 1": "True",
        "GC Lower Staircase Pot 2": "True",
        "GC Upper Staircase Pot 1": "True",
        "GC Upper Staircase Pot 2": "True",
        "GC Upper Staircase Pot 3": "True",
        "GC Medigoron Pot": "can_blast_or_smash or Progressive_Strength_Upgrade",
        "GC Boulder Maze Crate": "(can_blast_or_smash or can_use(Silver_Gauntlets)) and can_break_crate",
        "GC GS Boulder Maze": "is_child and has_explosives",
        "GC GS Center Platform": "is_adult",
        "GC Maze Gossip Stone": "can_blast_or_smash or can_use(Silver_Gauntlets)",
        "GC Medigoron Gossip Stone": "can_blast_or_smash or Progressive_Strength_Upgrade",
        "Gossip Stone Fairy": "
            can_summon_gossip_fairy_without_suns and has_bottle and
            (can_blast_or_smash or Progressive_Strength_Upgrade)",
        "Bug Rock": "(can_blast_or_smash or can_use(Silver_Gauntlets)) and has_bottle",
        "Stick Pot": "is_child"
    },
    "exits": {
        "Death Mountain": "True",
        "GC Woods Warp": "'GC Woods Warp Open'",
        "GC Shop": "
            (is_adult and 'Stop GC Rolling Goron as Adult') or
            (is_child and (has_explosives or Progressive_Strength_Upgrade or 'Goron City Child Fire'))",
        "GC Darunias Chamber": "
            (is_adult and 'Stop GC Rolling Goron as Adult') or
            (is_child and can_play(Zeldas_Lullaby))",
        "GC Grotto Platform": "
            is_adult and
            ((can_play(Song_of_Time) and
                    ((damage_multiplier != 'ohko' and damage_multiplier != 'quadruple') or
                        Goron_Tunic or Longshot or can_use(Nayrus_Love))) or
                (Hookshot and
                    ((damage_multiplier != 'ohko' and Goron_Tunic) or
                        can_use(Nayrus_Love) or
                        (damage_multiplier != 'ohko' and damage_multiplier != 'quadruple' and logic_goron_grotto))))",
        "GC Spinning Pot": "
            is_child and 'Goron City Child Fire' and
            (Bombs or (Progressive_Strength_Upgrade and logic_goron_city_pot_with_strength) or
                (has_bombchus and logic_goron_city_pot))"
    }
},
{
    "region_name": "GC Woods Warp",
    "scene": "Goron City",
    "hint": "GORON_CITY",
    "events": {
        "GC Woods Warp Open": "can_blast_or_smash or can_use(Dins_Fire)"
    },
    "exits": {
        "Goron City": "can_leave_forest and 'GC Woods Warp Open'",
        "Lost Woods": "True"
    }
},
{
    "region_name": "GC Darunias Chamber",
    "scene": "Goron City",
    "hint": "GORON_CITY",
    "events": {
        "Goron City Child Fire": "can_use(Sticks)"
    },
    "locations": {
        "GC Darunias Joy": "is_child and can_play(Sarias_Song)",
        "GC Darunia Pot 1": "True",
        "GC Darunia Pot 2": "True",
        "GC Darunia Pot 3": "True"
    },
    "exits": {
        "Goron City": "True",
        "DMC Lower Local": "is_adult"
    }
},
{
    "region_name": "GC Grotto Platform",
    "scene": "Goron City",
    "hint": "GORON_CITY",
    "exits": {
        "GC Grotto": "True",
        "Goron City": "
            (damage_multiplier != 'ohko' and (damage_multiplier != 'quadruple' or can_use(Goron_Tunic))) or
            can_use(Nayrus_Love) or (can_play(Song_of_Time) and can_use(Longshot))"
    }
},
{
    "region_name": "GC Spinning Pot",
    "scene": "Goron City",
    "locations": {
        "GC Pot Freestanding PoH": "True",
        "GC Spinning Pot Bomb Drop 1": "True",
        "GC Spinning Pot Bomb Drop 2": "True",
        "GC Spinning Pot Bomb Drop 3": "True",
        "GC Spinning Pot Rupee Drop 1": "True",
        "GC Spinning Pot Rupee Drop 2": "True",
        "GC Spinning Pot Rupee Drop 3": "True",
        "GC Spinning Pot PoH Drop Rupee 1": "True",
        "GC Spinning Pot PoH Drop Rupee 2": "True"
    }
},
{
    "region_name": "GC Shop",
    "scene": "GC Shop",
    "locations": {
        "GC Shop Item 1": "True",
        "GC Shop Item 2": "True",
        "GC Shop Item 3": "True",
        "GC Shop Item 4": "True",
        "GC Shop Item 5": "True",
        "GC Shop Item 6": "True",
        "GC Shop Item 7": "True",
        "GC Shop Item 8": "True"
    },
    "exits": {
        "Goron City": "True"
    }
},
{
    "region_name": "GC Grotto",
    "scene": "GC Grotto",
    "locations": {
        "GC Deku Scrub Grotto Left": "can_stun_deku",
        "GC Deku Scrub Grotto Right": "can_stun_deku",
        "GC Deku Scrub Grotto Center": "can_stun_deku",
        "GC Grotto Beehive": "can_break_upper_beehive"
    },
    "exits": {
        "GC Grotto Platform": "True"
    }
},