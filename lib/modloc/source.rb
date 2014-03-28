module Modloc
  # A Modloc source string
  class Source < String
    autoload :Line, 'modloc/source/line'

    attr_reader :path, :ext

    # Creates a new Modloc source object
    # @param file [String]
    def initialize(file)
      @ext  = File.extname(file)
      @path = file
      super File.read file
    rescue Errno::ENOENT
      super ''
    end

    # Returns the sources lines as line objects
    # @return [Array<Modloc::Source::Line>]
    def lines
      super.map { |line| Line.new line }
    end

    # Locate all the locations matching a given pattern
    # @param pattern [Regexp]
    # @return [Array]
    def locate_all(pattern)
      [].tap do |locations|
        strip.lines.each_with_index.reduce('') do |contents, (line, index)|
          line_num = index + 1
          contents << line
          if contents.match(/#{pattern.source}\n\z/)
            locations << [path, line_num]
          end
          contents
        end
      end
    end

    # Return the source without comments or whitespace for each line
    # @return [Modloc::Source]
    def strip
      dup.replace lines.map(&:strip).join
    end
  end
end
