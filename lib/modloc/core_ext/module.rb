class Module

  def source_locations
    found_files = $LOADED_FEATURES.select do |file|
      File.read(file) =~ source_regex rescue nil
    end
    found_files.map do |file|
      bof_match = File.read(file).match(%r{(.*\n)*#{source_regex.source}})
      line = bof_match.to_s.lines.size
      [file, line]
    end
  end

  private

  def source_regex
    rxp = name.split('::').map do |name|
      "(module |class |::)#{name}"
    end.join('(\s*#.*\n)*\s*')
    %r{#{rxp}}
  end

end
