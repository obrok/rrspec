class RRSpec::Sandbox
  def it(description, &block)
    block.call
    RRSpec.formatter.pass
  rescue RRSpec::AssertionError
    RRSpec.formatter.fail
  end
end
