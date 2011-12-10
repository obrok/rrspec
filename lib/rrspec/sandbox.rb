class RRSpec::Sandbox
  def it(description, &block)
    block.call
    RRSpec.formatter.pass
  end
end
