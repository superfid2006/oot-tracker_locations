
[
    {
        "region_name": "Dodongos Cavern Beginning",
        "dungeon": "Dodongos Cavern",
        "exits": {
            "Death Mountain": "True",
            "Dodongos Cavern Lobby": "
                here(can_blast_or_smash or Progressive_Strength_Upgrade) or
                dodongos_cavern_shortcuts"
        }
    },
    {
        "region_name": "Dodongos Cavern Lobby",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Map Chest": "can_blast_or_smash or Progressive_Strength_Upgrade",
            "Dodongos Cavern Deku Scrub Lobby": "can_stun_deku or Progressive_Strength_Upgrade",
            "Dodongos Cavern Gossip Stone": "here(can_blast_or_smash or Progressive_Strength_Upgrade)",
            "Gossip Stone Fairy": "
                (can_blast_or_smash or Progressive_Strength_Upgrade) and
                can_summon_gossip_fairy and has_bottle"
        },
        "exits": {
            "Dodongos Cavern Lower Right Side": "has_explosives or Progressive_Strength_Upgrade",
            "Dodongos Cavern Torch Room": "is_adult",
            "Dodongos Cavern Staircase Room": "
                at('Dodongos Cavern Torch Room', is_adult or Sticks or can_use(Dins_Fire))",
            "Dodongos Cavern Far Bridge": "at('Dodongos Cavern Far Bridge', True)",
            "Dodongos Cavern Before Boss": "dodongos_cavern_shortcuts"
        }
    },
    {
        "region_name": "Dodongos Cavern Lower Right Side",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Lower Lizalfos Hidden Recovery Heart": "True",
            "Dodongos Cavern Right Side Pot 1": "True",
            "Dodongos Cavern Right Side Pot 2": "True",
            "Dodongos Cavern Right Side Pot 3": "True",
            "Dodongos Cavern Right Side Pot 4": "True",
            "Dodongos Cavern Right Side Pot 5": "True",
            "Dodongos Cavern Right Side Pot 6": "True",
            "Dodongos Cavern Lower Lizalfos Pot 1": "True",
            "Dodongos Cavern Lower Lizalfos Pot 2": "True",
            "Dodongos Cavern Lower Lizalfos Pot 3": "True",
            "Dodongos Cavern Lower Lizalfos Pot 4": "True",
            "Dodongos Cavern GS Side Room Near Lower Lizalfos": "
                is_adult or has_explosives or Sticks or Slingshot or Boomerang or Kokiri_Sword",
            "Dodongos Cavern GS Scarecrow": "
                can_use(Scarecrow) or can_use(Longshot) or
                (logic_dc_scarecrow_gs and (is_adult or can_child_attack))"
        },
        "exits": {
            "Dodongos Cavern Torch Room": "Sticks or Slingshot or Bombs or Kokiri_Sword"
        }
    },
    {
        "region_name": "Dodongos Cavern Torch Room",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Deku Scrub Side Room Near Dodongos": "
                can_blast_or_smash or Progressive_Strength_Upgrade",
            "Dodongos Cavern Torch Room Pot 1": "True",
            "Dodongos Cavern Torch Room Pot 2": "True",
            "Dodongos Cavern Torch Room Pot 3": "True",
            "Dodongos Cavern Torch Room Pot 4": "True"
        },
        "exits": {
            "Dodongos Cavern Lower Right Side": "True"
        }
    },
    {
        "region_name": "Dodongos Cavern Staircase Room",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Compass Chest": "can_blast_or_smash or Progressive_Strength_Upgrade",
            "Dodongos Cavern GS Vines Above Stairs": "
                at('Dodongos Cavern Climb', True) or (logic_dc_vines_gs and can_use(Longshot))"
        },
        "exits": {
            "Dodongos Cavern Climb": "
                has_explosives or Progressive_Strength_Upgrade or
                can_use(Dins_Fire) or (logic_dc_staircase and can_use(Bow))"
        }
    },
    {
        "region_name": "Dodongos Cavern Climb",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Bomb Flower Platform Chest": "True",
            "Dodongos Cavern Deku Scrub Near Bomb Bag Right": "
                can_blast_or_smash or
                (logic_dc_scrub_room and is_adult and Progressive_Strength_Upgrade)",
            "Dodongos Cavern Deku Scrub Near Bomb Bag Left": "
                can_blast_or_smash or
                (logic_dc_scrub_room and is_adult and Progressive_Strength_Upgrade)",
            "Dodongos Cavern Blade Room Behind Block Recovery Heart": "True",
            "Dodongos Cavern Staircase Pot 1": "True",
            "Dodongos Cavern Staircase Pot 2": "True",
            "Dodongos Cavern Staircase Pot 3": "True",
            "Dodongos Cavern Staircase Pot 4": "True",
            "Dodongos Cavern Blade Room Pot 1": "
                can_use(Boomerang) or at('Dodongos Cavern Far Bridge', True)",
            "Dodongos Cavern Blade Room Pot 2": "
                can_use(Boomerang) or at('Dodongos Cavern Far Bridge', True)"
        },
        "exits": {
            "Dodongos Cavern Before Upper Lizalfos": "
                here(can_blast_or_smash or Progressive_Strength_Upgrade)",
            "Dodongos Cavern Far Bridge": "
                is_adult and (logic_dc_jump or Hover_Boots or Longshot)"
        }
    },
    {
        "region_name": "Dodongos Cavern Before Upper Lizalfos",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Single Eye Switch Room Pot 1": "True",
            "Dodongos Cavern Single Eye Switch Room Pot 2": "True"
        },
        "exits": {
            "Dodongos Cavern Upper Lizalfos": "
                (is_child and (Slingshot or logic_dc_slingshot_skip)) or can_use(Bow)"
        }
    },
    {
        "region_name": "Dodongos Cavern Upper Lizalfos",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Lizalfos Upper Recovery Heart 1": "True",
            "Dodongos Cavern Lizalfos Upper Recovery Heart 2": "True"
        },
        "exits": {
            "Dodongos Cavern Before Upper Lizalfos": "True",
            "Dodongos Cavern Far Bridge": "is_adult or Sticks or Slingshot or Bombs or Kokiri_Sword"
        }
    },
    {
        "region_name": "Dodongos Cavern Far Bridge",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Bomb Bag Chest": "True",
            "Dodongos Cavern End of Bridge Chest": "can_blast_or_smash",
            "Dodongos Cavern Double Eye Switch Room Pot 1": "True",
            "Dodongos Cavern Double Eye Switch Room Pot 2": "True",
            "Dodongos Cavern GS Alcove Above Stairs": "can_use(Hookshot) or can_use(Boomerang)"
        },
        "exits": {
            "Dodongos Cavern Before Boss": "has_explosives",
            "Dodongos Cavern Upper Lizalfos": "True"
        }
    },
    {
        "region_name": "Dodongos Cavern Before Boss",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Last Block Pot 1": "True",
            "Dodongos Cavern Last Block Pot 2": "True",
            "Dodongos Cavern Last Block Pot 3": "True",
            "Dodongos Cavern GS Back Room": "can_blast_or_smash",
            "Fairy Pot": "has_bottle"
        },
        "exits": {
            "Dodongos Cavern Boss Door": "True"
        }
    }
]
--MQ
[
    {
        "region_name": "Dodongos Cavern Beginning",
        "dungeon": "Dodongos Cavern",
        "exits": {
            "Death Mountain": "True",
            "Dodongos Cavern Lobby": "
                here(can_blast_or_smash or Progressive_Strength_Upgrade) or
                dodongos_cavern_shortcuts"
        }
    },
    {
        "region_name": "Dodongos Cavern Lobby",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern MQ Map Chest": "can_blast_or_smash or Progressive_Strength_Upgrade",
            "Dodongos Cavern MQ Deku Scrub Lobby Rear": "can_stun_deku",
            "Dodongos Cavern MQ Deku Scrub Lobby Front": "can_stun_deku",
            "Dodongos Cavern Gossip Stone": "here(can_blast_or_smash or Progressive_Strength_Upgrade)",
            "Gossip Stone Fairy": "
                (can_blast_or_smash or Progressive_Strength_Upgrade) and
                can_summon_gossip_fairy and has_bottle"
        },
        "exits": {
            "Dodongos Cavern Elevator": "here(can_blast_or_smash or Progressive_Strength_Upgrade)",
            "Dodongos Cavern Lower Right Side": "here(can_blast_or_smash)",
            "Dodongos Cavern Poes Room": "is_adult",
            "Dodongos Cavern Mouth": "dodongos_cavern_shortcuts"
        }
    },
    {
        "region_name": "Dodongos Cavern Elevator",
        "dungeon": "Dodongos Cavern",
        "locations": {
            # Regardless of how you destroy the boulder on the elevator switch,
            # you will always be able to access the upper staircase in some way.
            "Dodongos Cavern MQ Deku Scrub Staircase": "can_stun_deku",
            "Dodongos Cavern MQ Staircase Pot 1": "True",
            "Dodongos Cavern MQ Staircase Pot 2": "True",
            "Dodongos Cavern MQ Staircase Pot 3": "True",
            "Dodongos Cavern MQ Staircase Pot 4": "True",
            "Dodongos Cavern MQ Staircase Crate Bottom Left": "True",
            "Dodongos Cavern MQ Staircase Crate Bottom Right": "True",
            "Dodongos Cavern MQ Staircase Crate Mid Left": "can_break_crate",
            "Dodongos Cavern MQ Staircase Crate Mid Right": "can_break_crate",
            "Dodongos Cavern MQ Staircase Crate Top Left": "can_break_crate",
            "Dodongos Cavern MQ Staircase Crate Top Right": "can_break_crate",
            "Dodongos Cavern MQ GS Song of Time Block Room": "
                can_play(Song_of_Time) and (can_child_attack or is_adult)",
            "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang"
        },
        "exits": {
            "Dodongos Cavern Torch Puzzle Lower": "
                (deadly_bonks != 'ohko' or can_use(Nayrus_Love) or can_blast_or_smash) and
                (is_adult or can_child_attack or Nuts)",
            "Dodongos Cavern Torch Puzzle Upper": "
                here(can_blast_or_smash or can_use(Dins_Fire)) or
                at('Dodongos Cavern Torch Puzzle Upper', Progressive_Strength_Upgrade)",
            "Dodongos Cavern Poes Room": "
                logic_dc_mq_child_bombs and (Kokiri_Sword or Sticks) and can_take_damage",
            "Dodongos Cavern Mouth": "has_explosives"
        }
    },
    {
        "region_name": "Dodongos Cavern Torch Puzzle Lower",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern MQ Compass Chest": "True",
            "Dodongos Cavern MQ Torch Puzzle Room Recovery Heart": "True",
            "Dodongos Cavern MQ Torch Puzzle Room Pot Pillar": "
                can_use(Boomerang) or at('Dodongos Cavern Torch Puzzle Upper', True)"
        },
        "exits": {
            "Dodongos Cavern Larvae Room": "has_fire_source_with_torch",
            "Dodongos Cavern Before Upper Lizalfos": "has_fire_source_with_torch",
            "Dodongos Cavern Torch Puzzle Upper": "
                is_adult and (logic_dc_jump or Hover_Boots or Hookshot)"
        }
    },
    {
        "region_name": "Dodongos Cavern Larvae Room",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern MQ Larvae Room Chest": "True",
            "Dodongos Cavern MQ Larvae Room Crate 1": "can_break_crate",
            "Dodongos Cavern MQ Larvae Room Crate 2": "can_break_crate",
            "Dodongos Cavern MQ Larvae Room Crate 3": "can_break_crate",
            "Dodongos Cavern MQ Larvae Room Crate 4": "can_break_crate",
            "Dodongos Cavern MQ Larvae Room Crate 5": "can_break_crate",
            "Dodongos Cavern MQ Larvae Room Crate 6": "can_break_crate",
            "Dodongos Cavern MQ GS Larvae Room": "True"
        }
    },
    {
        "region_name": "Dodongos Cavern Before Upper Lizalfos",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern MQ Before Upper Lizalfos Pot 1": "True",
            "Dodongos Cavern MQ Before Upper Lizalfos Pot 2": "True"
        },
        "exits": {
            "Dodongos Cavern Torch Puzzle Upper": "can_use(Sticks)"
        }
    },
    {
        "region_name": "Dodongos Cavern Torch Puzzle Upper",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern MQ Torch Puzzle Room Chest": "True",
            "Dodongos Cavern MQ Upper Lizalfos Pot 1": "True",
            "Dodongos Cavern MQ Upper Lizalfos Pot 2": "True",
            "Dodongos Cavern MQ Upper Lizalfos Pot 3": "True",
            "Dodongos Cavern MQ Upper Lizalfos Pot 4": "True",
            "Dodongos Cavern MQ After Upper Lizalfos Pot 1": "True",
            "Dodongos Cavern MQ After Upper Lizalfos Pot 2": "True",
            "Dodongos Cavern MQ Torch Puzzle Room Pot Corner": "True",
            "Dodongos Cavern MQ After Upper Lizalfos Crate 1": "True",
            "Dodongos Cavern MQ After Upper Lizalfos Crate 2": "True",
            "Dodongos Cavern MQ GS Lizalfos Room": "can_blast_or_smash"
        },
        "exits": {
            "Dodongos Cavern Torch Puzzle Lower": "True",
            "Dodongos Cavern Before Upper Lizalfos": "is_adult or Slingshot or Bombs or Kokiri_Sword",
            "Dodongos Cavern Lower Right Side": "Progressive_Strength_Upgrade and can_take_damage",
            "Dodongos Cavern Lower Lizalfos": "has_explosives",
            "Dodongos Cavern Mouth": "
                Progressive_Strength_Upgrade and
                here((logic_dc_mq_eyes_adult and is_adult) or (logic_dc_mq_eyes_child and is_child))"
        }
    },
    {
        "region_name": "Dodongos Cavern Lower Right Side",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern MQ Deku Scrub Side Room Near Lower Lizalfos": "
                (can_blast_or_smash or Progressive_Strength_Upgrade) and can_stun_deku",
            "Dodongos Cavern MQ Right Side Pot 1": "True",
            "Dodongos Cavern MQ Right Side Pot 2": "True",
            "Dodongos Cavern MQ Right Side Pot 3": "True",
            "Dodongos Cavern MQ Right Side Pot 4": "True"
        },
        "exits": {
            "Dodongos Cavern Poes Room": "
                (here(can_use(Bow)) or Progressive_Strength_Upgrade or
                    can_use(Dins_Fire) or has_explosives) and
                can_use(Slingshot)"
        }
    },
    {
        "region_name": "Dodongos Cavern Lower Lizalfos",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern Lower Lizalfos Hidden Recovery Heart": "True"
        },
        "exits": {
            # Child can fall down from above to reach Poes room, but Adult must defeat the
            # lower Lizalfos here first, since they don't spawn when jumping down from above.
            "Dodongos Cavern Poes Room": "here(is_adult)"
        }
    },
    {
        "region_name": "Dodongos Cavern Poes Room",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern MQ Bomb Bag Chest": "True",
            "Dodongos Cavern MQ Poes Room Pot 1": "True",
            "Dodongos Cavern MQ Poes Room Pot 2": "True",
            "Dodongos Cavern MQ Poes Room Pot 3": "True",
            "Dodongos Cavern MQ Poes Room Pot 4": "True",
            "Dodongos Cavern MQ Poes Room Crate 1": "can_break_crate or Progressive_Strength_Upgrade",
            "Dodongos Cavern MQ Poes Room Crate 2": "can_break_crate or Progressive_Strength_Upgrade",
            "Dodongos Cavern MQ Poes Room Crate 3": "can_break_crate or Progressive_Strength_Upgrade",
            "Dodongos Cavern MQ Poes Room Crate 4": "can_break_crate or Progressive_Strength_Upgrade",
            "Dodongos Cavern MQ Poes Room Crate 5": "can_break_crate or Progressive_Strength_Upgrade",
            "Dodongos Cavern MQ Poes Room Crate 6": "can_break_crate or Progressive_Strength_Upgrade",
            "Dodongos Cavern MQ Poes Room Crate 7": "can_break_crate or Progressive_Strength_Upgrade",
            "Dodongos Cavern MQ Poes Room Crate Near Bomb Flower": "
                can_break_crate or Progressive_Strength_Upgrade or can_use(Bow) or can_use(Dins_Fire)",
            "Dodongos Cavern MQ GS Scrub Room": "
                (here(can_use(Bow)) or Progressive_Strength_Upgrade or
                    can_use(Dins_Fire) or has_explosives) and
                (can_use(Hookshot) or can_use(Boomerang))"
        },
        "exits": {
            "Dodongos Cavern Lower Right Side": "True",
            "Dodongos Cavern Lower Lizalfos": "True"
        }
    },
    {
        "region_name": "Dodongos Cavern Mouth",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern MQ Under Grave Chest": "True",
            "Dodongos Cavern MQ Room Before Boss Pot 1": "True",
            "Dodongos Cavern MQ Room Before Boss Pot 2": "True",
            "Dodongos Cavern MQ Armos Army Room Pot 1": "True",
            "Dodongos Cavern MQ Armos Army Room Pot 2": "True",
            "Dodongos Cavern MQ Back Poe Room Pot 1": "True",
            "Dodongos Cavern MQ Back Poe Room Pot 2": "True",
            "Dodongos Cavern MQ GS Back Area": "
                can_use(Boomerang) or
                at('Dodongos Cavern Before Boss', is_adult or can_child_attack or
                    Progressive_Strength_Upgrade)"
        },
        "exits": {
            # The final line of this exit is for using an Armos to explode the bomb flowers.
            "Dodongos Cavern Before Boss": "
                is_adult or has_explosives or can_use(Dins_Fire) or dodongos_cavern_shortcuts or
                Sticks or ((Nuts or Boomerang) and (Kokiri_Sword or Slingshot))"
        }
    },
    {
        "region_name": "Dodongos Cavern Before Boss",
        "dungeon": "Dodongos Cavern",
        "locations": {
            "Dodongos Cavern MQ Armos Army Room Upper Pot": "True",
            "Fairy Pot": "has_bottle"
        },
        "exits": {
            "Dodongos Cavern Boss Door": "True"
        }
    }
]