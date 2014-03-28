module Modloc
  # A line string
  class Source::Line < String
    # initialize a new line object
    # @param contents [String]
    def initialize(contents)
      super contents
    end

    # Strip the line of whitespace and comments
    # @return [Modloc::Source::Line]
    def strip
      val = super.concat "\n"
      val.strip_comment
    end

    protected

    # Strips a comment from a line
    def strip_comment
      gsub(/#([^{].*\n)?/, "\n")
    end
  end
end
