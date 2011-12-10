require 'stringio'

class RRSpec::Formatter::SimpleFormatter
  def initialize(io=$stdout)
    @io = io
  end

  def pass
  end

  def error
    @io.print("E")
  end

  def fail
    @io.print("F")
  end
end
