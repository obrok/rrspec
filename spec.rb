$LOAD_PATH << "./lib"

require 'rrspec'

load 'spec/bootstrap.rb'

Bootstrap.start

RRSpec.run

Bootstrap.verify
