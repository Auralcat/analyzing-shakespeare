require 'spec_helper'
require 'analyzing_shakespeare/play_statistics'

RSpec.describe AnalyzingShakespeare::PlayStatistics do
  subject(:statistics) { described_class.new }

  it 'returns how many times all the speakers have appeared in the play' do
    expect(statistics.speakers.first).to eq("3 First Witch")
  end
end
