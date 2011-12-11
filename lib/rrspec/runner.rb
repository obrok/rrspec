class RRSpec::Runner
  def run
    RRSpec.formatter.start

    load_specs
    run_specs

    RRSpec.formatter.end
  end

  def load_specs
    Dir["./spec/**/*.rb"].each { |f| require f }
  end

  def run_specs
    RRSpec.examples.each do |context|
      RRSpec.formatter.start_context(context.description)
      RRSpec::Sandbox.new.instance_eval(&context.block)
    end
  end
end
