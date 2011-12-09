$LOAD_PATH << "./lib"

require 'rrspec'

load 'spec/bootstrap.rb'

RRSpec.run

Bootstrap.verify
