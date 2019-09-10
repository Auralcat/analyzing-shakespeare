require 'spec_helper'

# One of the reqs of the exercise is to not download the actual file when
# running tests, though we need to get the XML file in the implementation.
# There's no need to use VCR here. The question is: how do I check that the file
# has been downloaded? Does it need to run through a specific test?
RSpec.describe AnalyzingShakespeare::XmlDownloader do

end
