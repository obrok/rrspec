class RRSpec::Sandbox
  def it(description, &block)
    block.call
  end
end
