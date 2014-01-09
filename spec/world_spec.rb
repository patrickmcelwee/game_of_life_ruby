require_relative '../world'

describe World do
  it 'can generate the next generation world' do
    expect(subject.generate).to be_a World
  end

  it 'generates empty world from empty world' do
    expect(subject.generate.live_cells).to be_empty
  end

  it 'generates empty world from world with one cell' do
    subject.live_cells = [LiveCell.new]
    expect(subject.generate.live_cells).to be_empty
  end

end
