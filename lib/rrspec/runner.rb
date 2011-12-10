class RRSpec::Runner
  def run
    RRSpec.formatter.start

    load_specs
    run_specs
  end

  def load_specs
    Dir["./spec/**/*.rb"].each { |f| require f }
  end

  def run_specs
    RRSpec.describes.each { |d| RRSpec::Sandbox.new.instance_eval(&d) }
  end
end
