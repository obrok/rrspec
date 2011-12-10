$LOAD_PATH << "./lib"

require 'rrspec'

raise "Formatter not fed" unless system 'cd output_spec; ruby spec.rb'

autoload :Bootstrap, './spec/bootstrap'

Bootstrap.start

RRSpec.run
raise "Specs not loaded" unless LoadTest == "Passed"

Bootstrap.verify
