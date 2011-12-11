class RRSpec::Sandbox
  def it(description, &block)
    RRSpec.formatter.start_test(description)
    block.call
    RRSpec.formatter.pass
  rescue RRSpec::AssertionError => e
    RRSpec.formatter.fail(e)
  rescue Exception => e
    RRSpec.formatter.error(e)
  end
end
