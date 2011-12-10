require 'stringio'

class RRSpec::Formatter::SimpleFormatter
  def initialize(io=$stdout)
    @io = io
  end

  def pass
    @io.print(".")
  end

  def error
    @io.print("E")
  end

  def fail
    @io.print("F")
  end
end
