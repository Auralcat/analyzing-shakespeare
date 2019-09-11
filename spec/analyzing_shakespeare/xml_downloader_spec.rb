require 'spec_helper'
require 'open-uri'
require 'analyzing_shakespeare/xml_downloader'

class FakeXMLDownloader < AnalyzingShakespeare::XmlDownloader
  def successful_download
    File.read('./spec/fixtures/macbeth_excerpt.xml')
  end
end

RSpec.describe AnalyzingShakespeare::XmlDownloader do
  subject(:downloader) { FakeXMLDownloader.new }

  describe '#download' do
    it 'returns a XML string' do
      expect(downloader.successful_download).to match(/xml version/)
    end

    it 'raises an error when the download fails' do
      odd_downloader = FakeXMLDownloader.new(url: 'http://foo-lang.org')
      expect{ odd_downloader.download }.to raise_error
    end
  end
end
