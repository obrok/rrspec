class RRSpec::Sandbox
  def it(description, &block)
    block.call
    RRSpec.formatter.pass
  rescue RRSpec::AssertionError
    RRSpec.formatter.fail
  rescue Exception
    RRSpec.formatter.error
  end
end
