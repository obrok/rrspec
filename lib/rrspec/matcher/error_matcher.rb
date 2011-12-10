class RRSpec::Matcher::ErrorMatcher < RRSpec::Matcher::BaseMatcher
  def match(thing)
    if raised(thing)
      return true
    else
      raise RRSpec::AssertionError
    end 
  end

  def raised(thing)
    thing.call
    return nil
  rescue Exception => e
    return e
  end
end
