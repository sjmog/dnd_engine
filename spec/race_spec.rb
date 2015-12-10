require 'race'

describe Race do
  subject(:race) { described_class.new }

  it 'stores race ability and skills details' do
    halfling = described_class.new(
      abilities: { dexterity: 2 },
      skills: { move_silently: 2 }
    )
    expect(halfling.abilities[:dexterity]).to eq 2
    expect(halfling.skills[:move_silently]).to eq 2
  end

  it 'defaults to no ability or skill modifications' do
    expect(race.abilities).to be_empty
    expect(race.skills).to be_empty
  end
end