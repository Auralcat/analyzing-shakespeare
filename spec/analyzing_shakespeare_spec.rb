require 'analyzing_shakespeare'

RSpec.describe AnalyzingShakespeare do
  it 'returns a sample output for a given input' do
    result_string = <<-EOL
    543 Macbeth
    345 Banquo
    220 Duncan
    EOL

    expect(described_class.run).to eq(result_string)
  end
end
