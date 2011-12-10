require 'stringio'

class RRSpec::Formatter::SimpleFormatter
  def initialize(io=$stdout)
    @io = io
  end

  def start
    @start = Time.now
  end

  def end
    time = Time.now - @start
    @io.print("\n\nFinished in #{time.round(1)} seconds\n")
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
