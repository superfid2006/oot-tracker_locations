
[
    {
        "region_name": "Ganons Castle Lobby",
        "dungeon": "Ganons Castle",
        "exits": {
            "Castle Grounds From Ganons Castle": "True",
            "Ganons Castle Forest Trial": "True",
            "Ganons Castle Water Trial": "True",
            "Ganons Castle Shadow Trial": "True",
            "Ganons Castle Fire Trial": "True",
            "Ganons Castle Light Trial": "can_use(Golden_Gauntlets)",
            "Ganons Castle Spirit Trial": "True",
            "Ganons Castle Deku Scrubs": "logic_lens_castle or can_use(Lens_of_Truth)",
            "Ganons Castle Tower": "
                (skipped_trials[Forest] or 'Forest Trial Clear') and
                (skipped_trials[Fire] or 'Fire Trial Clear') and
                (skipped_trials[Water] or 'Water Trial Clear') and
                (skipped_trials[Shadow] or 'Shadow Trial Clear') and
                (skipped_trials[Spirit] or 'Spirit Trial Clear') and
                (skipped_trials[Light] or 'Light Trial Clear')"
        }
    },
    {
        "region_name": "Ganons Castle Forest Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Forest Trial Chest": "
                is_adult or Slingshot or Sticks or Kokiri_Sword or can_use(Dins_Fire)"
        },
        "exits": {
            "Ganons Castle Forest Trial Ending": "
                can_use(Fire_Arrows) or (can_use(Dins_Fire) and (can_use(Bow) or can_use(Hookshot)))"
        }
    },
    {
        "region_name": "Ganons Castle Forest Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Forest Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle Forest Trial Pot 1": "True",
            "Ganons Castle Forest Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Water Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Water Trial Left Chest": "True",
            "Ganons Castle Water Trial Right Chest": "True",
            "Blue Fire": "
                has_bottle and (is_adult or Sticks or Kokiri_Sword or has_explosives)",
            "Fairy Pot": "
                Blue_Fire and (is_adult or has_explosives or can_use(Dins_Fire))"
        },
        "exits": {
            "Ganons Castle Water Trial Ending": "Blue_Fire and can_use(Megaton_Hammer)"
        }
    },
    {
        "region_name": "Ganons Castle Water Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Water Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle Water Trial Pot 1": "True",
            "Ganons Castle Water Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Shadow Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Shadow Trial Front Chest": "
                is_child or can_use(Fire_Arrows) or Hookshot or
                Hover_Boots or can_play(Song_of_Time)"
        },
        "exits": {
            "Ganons Castle Shadow Trial First Gap": "can_use(Longshot) or can_use(Fire_Arrows)"
        }
    },
    {
        "region_name": "Ganons Castle Shadow Trial First Gap",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Shadow Trial Like Like Pot 1": "True",
            "Ganons Castle Shadow Trial Like Like Pot 2": "True"
        },
        "exits": {
            "Ganons Castle Shadow Trial Second Gap": "Hover_Boots or has_fire_source"
        }
    },
    {
        "region_name": "Ganons Castle Shadow Trial Second Gap",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Shadow Trial Golden Gauntlets Chest": "True",
            "Ganons Castle Shadow Trial Recovery Heart 1": "
                logic_lens_castle or can_use(Lens_of_Truth) or Hover_Boots",
            "Ganons Castle Shadow Trial Recovery Heart 2": "
                logic_lens_castle or can_use(Lens_of_Truth) or Hover_Boots",
            "Ganons Castle Shadow Trial Recovery Heart 3": "
                logic_lens_castle or can_use(Lens_of_Truth) or Hover_Boots"
        },
        "exits": {
            "Ganons Castle Shadow Trial Ending": "
                Megaton_Hammer and
                (logic_lens_castle or can_use(Lens_of_Truth) or (Longshot and Hover_Boots))"
        }
    },
    {
        "region_name": "Ganons Castle Shadow Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Shadow Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle Shadow Trial Pot 1": "True",
            "Ganons Castle Shadow Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Fire Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Fire Trial Recovery Heart": "True"
        },
        "exits": {
            "Ganons Castle Fire Trial Ending": "
                is_adult and Goron_Tunic and Golden_Gauntlets and Longshot"
        }
    },
    {
        "region_name": "Ganons Castle Fire Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Fire Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle Fire Trial Pot 1": "True",
            "Ganons Castle Fire Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Light Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Light Trial First Left Chest": "True",
            "Ganons Castle Light Trial Second Left Chest": "True",
            "Ganons Castle Light Trial Third Left Chest": "True",
            "Ganons Castle Light Trial First Right Chest": "True",
            "Ganons Castle Light Trial Second Right Chest": "True",
            "Ganons Castle Light Trial Third Right Chest": "True",
            "Ganons Castle Light Trial Invisible Enemies Chest": "
                logic_lens_castle or can_use(Lens_of_Truth)",
            "Ganons Castle Light Trial Lullaby Chest": "
                (Small_Key_Ganons_Castle, 1) and can_play(Zeldas_Lullaby)"
        },
        "exits": {
            "Ganons Castle Light Trial Boulder Room": "(Small_Key_Ganons_Castle, 2)"
        }
    },
    {
        "region_name": "Ganons Castle Light Trial Boulder Room",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Light Trial Boulder Pot": "True"
        },
        "exits": {
            "Ganons Castle Light Trial Ending": "Hookshot and (logic_lens_castle or can_use(Lens_of_Truth))"
        }
    },
    {
        "region_name": "Ganons Castle Light Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Light Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle Light Trial Pot 1": "True",
            "Ganons Castle Light Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Spirit Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Spirit Trial Recovery Heart": "True"
        },
        "exits": {
            "Ganons Castle Spirit Trial Second Room Front": "
                can_use(Hookshot) or (logic_spirit_trial_hookshot and can_jumpslash)"
        }
    },
    {
        "region_name": "Ganons Castle Spirit Trial Second Room Front",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Spirit Trial Crystal Switch Chest": "True"
        },
        "exits": {
            "Ganons Castle Spirit Trial Second Room Back": "has_bombchus"
        }
    },
    {
        "region_name": "Ganons Castle Spirit Trial Second Room Back",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Spirit Trial Invisible Chest": "logic_lens_castle or can_use(Lens_of_Truth)"
        },
        "exits": {
            "Ganons Castle Spirit Trial Ending": "is_adult and Bow and Mirror_Shield"
        }
    },
    {
        "region_name": "Ganons Castle Spirit Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Spirit Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle Spirit Trial Pot 1": "True",
            "Ganons Castle Spirit Trial Pot 2": "True",
            "Nut Pot": "True"
        }
    },
    {
        "region_name": "Ganons Castle Deku Scrubs",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle Deku Scrub Center-Left": "can_stun_deku",
            "Ganons Castle Deku Scrub Center-Right": "can_stun_deku",
            "Ganons Castle Deku Scrub Right": "can_stun_deku",
            "Ganons Castle Deku Scrub Left": "can_stun_deku",
            "Free Fairies": "has_bottle"
        }
    }
]
--MQ
[
    {
        "region_name": "Ganons Castle Lobby",
        "dungeon": "Ganons Castle",
        "exits": {
            "Castle Grounds From Ganons Castle": "True",
            "Ganons Castle Main": "
                here(is_adult or
                    (Kokiri_Sword and (Sticks or has_explosives or Nuts or Boomerang)) or
                    (has_explosives and (Sticks or ((Nuts or Boomerang) and Slingshot))))"
        }
    },
    {
        "region_name": "Ganons Castle Main",
        "dungeon": "Ganons Castle",
        "exits": {
            "Ganons Castle Forest Trial": "here(is_adult or Kokiri_Sword)",
            "Ganons Castle Water Trial": "True",
            "Ganons Castle Shadow Trial": "is_adult",
            "Ganons Castle Fire Trial": "
                is_adult and Goron_Tunic and Golden_Gauntlets and
                (Longshot or Hover_Boots or (logic_fire_trial_mq and Hookshot))",
            "Ganons Castle Light Trial": "can_use(Golden_Gauntlets)",
            "Ganons Castle Spirit Trial": "can_use(Megaton_Hammer) and (Bow or logic_rusted_switches)",
            "Ganons Castle Deku Scrubs": "logic_lens_castle_mq or can_use(Lens_of_Truth)",
            "Ganons Castle Tower": "
                (skipped_trials[Forest] or 'Forest Trial Clear') and
                (skipped_trials[Fire] or 'Fire Trial Clear') and
                (skipped_trials[Water] or 'Water Trial Clear') and
                (skipped_trials[Shadow] or 'Shadow Trial Clear') and
                (skipped_trials[Spirit] or 'Spirit Trial Clear') and
                (skipped_trials[Light] or 'Light Trial Clear')"
        }
    },
    {
        "region_name": "Ganons Castle Forest Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle MQ Forest Trial Freestanding Key": "can_use(Hookshot) or can_use(Boomerang)",
            "Ganons Castle MQ Forest Trial Eye Switch Chest": "can_use(Bow) or can_use(Slingshot)",
            "Ganons Castle MQ Forest Trial Frozen Eye Switch Chest": "has_fire_source"
        },
        "exits": {
            "Ganons Castle Forest Trial Ending": "is_adult and can_play(Song_of_Time)"
        }
    },
    {
        "region_name": "Ganons Castle Forest Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Forest Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle MQ Forest Trial Pot 1": "True",
            "Ganons Castle MQ Forest Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Water Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle MQ Water Trial Chest": "Blue_Fire",
            "Ganons Castle MQ Water Trial Recovery Heart": "Blue_Fire",
            "Blue Fire": "has_bottle"
        },
        "exits": {
            "Ganons Castle Water Trial Ending": "Blue_Fire and (Small_Key_Ganons_Castle, 3)"
        }
    },
    {
        "region_name": "Ganons Castle Water Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Water Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle MQ Water Trial Pot 1": "True",
            "Ganons Castle MQ Water Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Shadow Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle MQ Shadow Trial Bomb Flower Chest": "
                (Bow and (Hookshot or Hover_Boots)) or
                (Hover_Boots and (logic_lens_castle_mq or can_use(Lens_of_Truth)) and
                    (has_explosives or Progressive_Strength_Upgrade or can_use(Dins_Fire)))"
        },
        "exits": {
            "Ganons Castle Shadow Trial Ending": "
                (logic_lens_castle_mq or can_use(Lens_of_Truth)) and
                (Hover_Boots or (Bow and Hookshot and (has_fire_source or logic_shadow_trial_mq)))"
        }
    },
    {
        "region_name": "Ganons Castle Shadow Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Shadow Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle MQ Shadow Trial Eye Switch Chest": "Bow",
            "Ganons Castle MQ Shadow Trial Pot 1": "True",
            "Ganons Castle MQ Shadow Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Fire Trial",
        "dungeon": "Ganons Castle",
        "events": {
            "Fire Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle MQ Fire Trial Pot 1": "True",
            "Ganons Castle MQ Fire Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Light Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle MQ Light Trial Lullaby Chest": "can_play(Zeldas_Lullaby)"
        },
        "exits": {
            "Ganons Castle Light Trial Boulder Room": "
                (Small_Key_Ganons_Castle, 2) and (Hookshot or logic_light_trial_mq)"
        }
    },
    {
        "region_name": "Ganons Castle Light Trial Boulder Room",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle MQ Light Trial Recovery Heart 1": "True",
            "Ganons Castle MQ Light Trial Recovery Heart 2": "True"
        },
        "exits": {
            "Ganons Castle Light Trial Ending": "
                (Small_Key_Ganons_Castle, 3) and (logic_lens_castle_mq or can_use(Lens_of_Truth))"
        }
    },
    {
        "region_name": "Ganons Castle Light Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Light Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle MQ Light Trial Pot 1": "True",
            "Ganons Castle MQ Light Trial Pot 2": "True"
        }
    },
    {
        "region_name": "Ganons Castle Spirit Trial",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle MQ Spirit Trial First Chest": "True"
        },
        "exits": {
            "Ganons Castle Spirit Trial Second Room": "has_bombchus"
        }
    },
    {
        "region_name": "Ganons Castle Spirit Trial Second Room",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle MQ Spirit Trial Invisible Chest": "logic_lens_castle_mq or can_use(Lens_of_Truth)"
        },
        "exits": {
            "Ganons Castle Spirit Trial Ending": "can_use(Fire_Arrows) and Mirror_Shield"
        }
    },
    {
        "region_name": "Ganons Castle Spirit Trial Ending",
        "dungeon": "Ganons Castle",
        "events": {
            "Spirit Trial Clear": "can_use(Light_Arrows)"
        },
        "locations": {
            "Ganons Castle MQ Spirit Trial Sun Front Left Chest": "True",
            "Ganons Castle MQ Spirit Trial Sun Back Left Chest": "True",
            "Ganons Castle MQ Spirit Trial Golden Gauntlets Chest": "True",
            "Ganons Castle MQ Spirit Trial Sun Back Right Chest": "True",
            "Ganons Castle MQ Spirit Trial Pot 1": "True",
            "Ganons Castle MQ Spirit Trial Pot 2": "True",
            "Nut Pot": "True"
        }
    },
    {
        "region_name": "Ganons Castle Deku Scrubs",
        "dungeon": "Ganons Castle",
        "locations": {
            "Ganons Castle MQ Deku Scrub Center-Left": "True",
            "Ganons Castle MQ Deku Scrub Center": "True",
            "Ganons Castle MQ Deku Scrub Center-Right": "True",
            "Ganons Castle MQ Deku Scrub Left": "True",
            "Ganons Castle MQ Deku Scrub Right": "True",
            "Free Fairies": "has_bottle"
        }
    }
]