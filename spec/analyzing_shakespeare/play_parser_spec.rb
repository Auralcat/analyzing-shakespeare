require 'spec_helper'
require 'analyzing_shakespeare/play_parser'

RSpec.describe AnalyzingShakespeare::PlayParser do
  subject(:parser) { described_class.new(text: File.read('./spec/fixtures/macbeth_excerpt.xml')) }

  it 'returns an array of speakers in the play' do
    expect(parser.speakers).to contain_exactly('First Witch', 'Second Witch', 'Third Witch')
  end

  it 'returns the occurrences of all the speakers in the play' do
    expect(parser.all_speaker_occurrences).to contain_exactly('First Witch', 'Second Witch', 'Third Witch',
                                                              'First Witch', 'Second Witch', 'Third Witch',
                                                              'First Witch', 'Second Witch', 'Third Witch')
  end
end
