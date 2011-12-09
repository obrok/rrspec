module RRSpec
  autoload :Runner, 'rrspec/runner'

  def self.run
    Runner.new.run
  end
end
