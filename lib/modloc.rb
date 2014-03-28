require 'modloc/version'
require 'modloc/core_ext/module'

# Find the source location of any module or class
module Modloc
  autoload :Source, 'modloc/source'
  autoload :Locator, 'modloc/locator'
end
