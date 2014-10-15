class StatSheet < ActiveRecord::Base
  belongs_to :character

  def self.roll(character)
    StatSheet.create(
      hp: rand(10..15),
      sp: rand(8..12),
      attack: rand(7..10),
      defense: rand(7..10),
      speed: rand(7..10),
      character_id: character.id
    )
  end

  def level_up
    # there has to be a better way to do this,
    # but i'm blanking out.
    self.hp += rand(5..8)
    self.sp += rand(3..5)
    self.attack += rand(2..4)
    self.defense += rand(2..4)
    self.speed += rand(2..4)
  end
end
