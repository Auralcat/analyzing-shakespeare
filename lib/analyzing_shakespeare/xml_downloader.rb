require 'open-uri'

module AnalyzingShakespeare
  class XmlDownloader
    def initialize(url: 'http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml')
      @url = url
    end

    def download
      out = ''
      open(@url) { |f| f.each_line { |line| out << line}}

      out
    rescue SocketError
      raise OpenURI::HTTPNotFoundError
    end
  end
end
