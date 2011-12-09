$LOAD_PATH << "./lib"

require 'rrspec'

autoload :Bootstrap, './spec/bootstrap'

Bootstrap.start

RRSpec.run
raise "Specs not loaded" unless LoadTest == "Passed"

Bootstrap.verify
