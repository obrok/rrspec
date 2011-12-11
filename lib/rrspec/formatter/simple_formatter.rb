require 'stringio'

class RRSpec::Formatter::SimpleFormatter
  def initialize(io=$stdout)
    @io = io

    @tests = 0
    @errors = []
  end

  def start
    @start = Time.now
    @io.puts
  end

  def end
    time = Time.now - @start
    @io.print("\n\n")
    print_errors
    @io.print("\n\nFinished in #{time.round(1)} seconds\n#{@tests} examples, #{@errors.size} failures\n")
  end

  def print_errors
    @errors.each do |error|
      @io.puts error
      @io.puts error.backtrace
    end
  end

  def start_test(description)
  end

  def start_context(description)
  end

  def pass
    @tests += 1
    @io.print(".")
  end

  def error(exception=nil)
    @tests += 1
    @errors << exception
    @io.print("E")
  end

  def fail(exception=nil)
    @tests += 1
    @errors << exception
    @io.print("F")
  end
end
