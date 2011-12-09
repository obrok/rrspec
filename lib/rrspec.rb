module RRSpec
  autoload :Runner, 'rrspec/runner'
  autoload :ObjectExtensions, 'rrspec/object_extensions'
  autoload :Matcher, 'rrspec/matcher'

  Object.send(:include, ObjectExtensions)

  def self.run
    Runner.new.run
  end
end
