class RRSpec::Runner
  def run    
    @start = Time.now

    load_specs

    print_summary
  end

  def load_specs
    Dir["./spec/**/*.rb"].each { |f| require f }
  end

  def print_summary
    time = Time.now - @start
    puts "Finished in #{time.round(1)} seconds."
  end
end
