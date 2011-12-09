class RRSpec::Runner
  def run
    @start = Time.now
    print_summary
  end

  def print_summary
    time = Time.now - @start
    puts "Finished in #{time.round(1)} seconds."
  end
end
