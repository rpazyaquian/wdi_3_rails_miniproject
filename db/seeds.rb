munchkins = Party.create(name: "Munchkins", goal: "Loot literally everything", motto: "FBGMST")

chunky = munchkins.characters.create(name: 'Chunky', job: :tank)
slashy = munchkins.characters.create(name: 'Slashy', job: :dips)
stabby = munchkins.characters.create(name: 'Stabby', job: :dips)
nukey = munchkins.characters.create(name: 'Nukey', job: :dips)
healbot = munchkins.characters.create(name: 'Healbot', job: :healer)