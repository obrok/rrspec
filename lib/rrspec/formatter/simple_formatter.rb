require 'stringio'

class RRSpec::Formatter::SimpleFormatter
  def initialize(io=$stdout)
    @io = io

    @tests = 0
    @fails = 0
  end

  def start
    @start = Time.now
  end

  def end
    time = Time.now - @start
    @io.print("\n\nFinished in #{time.round(1)} seconds\n#{@tests} examples, #{@fails} failures\n")
  end

  def pass
    @tests += 1
    @io.print(".")
  end

  def error(exception=nil)
    @tests += 1
    @fails += 1
    @io.print("E")
  end

  def fail(exception=nil)
    @tests += 1
    @fails += 1
    @io.print("F")
  end
end
