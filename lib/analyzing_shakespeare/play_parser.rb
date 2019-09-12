require 'nokogiri'

module AnalyzingShakespeare
  class PlayParser
    def initialize(text: 'sample text')
      @xml_play = Nokogiri::XML(text)
    end

    def speakers
      all_speaker_occurrences.uniq
    end

    def all_speaker_occurrences
      @xml_play.xpath('//SPEAKER').children.map(&:text).reject { |speaker| speaker == 'ALL' }
    end
  end
end
