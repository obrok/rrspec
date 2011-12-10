module RRSpec
  autoload :Runner, 'rrspec/runner'
  autoload :ObjectExtensions, 'rrspec/object_extensions'
  autoload :Matcher, 'rrspec/matcher'
  autoload :AssertionError, 'rrspec/assertion_error'
  autoload :Sandbox, 'rrspec/sandbox'
  autoload :Formatter, 'rrspec/formatter'

  Object.send(:include, ObjectExtensions)

  def self.run
    Runner.new.run
  end

  def self.describes
    @describes ||= []
  end

  def self.formatter=(value)
    @formatter = value
  end

  def self.formatter
    @formatter ||= RRSpec::Formatter::SimpleFormatter.new
  end
end
