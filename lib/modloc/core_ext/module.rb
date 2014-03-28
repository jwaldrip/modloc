# Extensions to ruby's module class
class Module
  # Returns all the source locations for a given module
  # @return [Array]
  def source_locations
    Modloc::Locator.new(self).find
  end
end
