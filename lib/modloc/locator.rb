module Modloc
  # Locator for a given module or class
  class Locator
    # Create a new locator for a module or class
    # @param mod [Module, Class]
    def initialize(mod)
      @mod = mod
    end

    # Finds all the locations of a given module or class
    # @return [Array]
    def find
      valid_sources.reduce([]) do |locations, source|
        locations + source.locate_all(source_regex)
      end
    end

    private

    def valid_sources
      ruby_files.select { |file| file.strip =~ source_regex }
    end

    def ruby_files
      files.select { |file| file.ext == '.rb' }
    end

    def files
      $LOADED_FEATURES.map { |f| Source.new(f) }
    end

    def source_regex
      rxp = @mod.name.split('::').each_with_index.map do |name, index|
        group = 'module |class '
        group << '|::' unless index == 0
        "(#{group})#{name}"
      end.join('(\s*#.*\n)*\s*')
      /#{rxp}/
    end
  end
end
