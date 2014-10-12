require 'rails_helper'

RSpec.describe Party, :type => :model do

  before(:all) do
    @munchkins = Party.where(name: "Munchkins")

    @chunky = Character.where(name: 'Chunky')
    @slashy = Character.where(name: 'Slashy')
    @stabby = Character.where(name: 'Stabby')
    @nukey = Character.where(name: 'Nukey')
    @healbot = Character.where(name: 'Healbot')
  end

  it "outputs characters in order of job" do

    # this is so i can just go Party.characters.each do |character|
    # and assume that it will go in tank->dips->healer order

    expect(@party.characters).to eq([
      @chunky,
      @slashy,
      @stabby,
      @nukey,
      @healbot
    ])
  end
end
