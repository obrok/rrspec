class RRSpec::Core::Context
  attr_accessor :description, :block

  def initialize(description, block)
    @description = description
    @block = block
  end
end
