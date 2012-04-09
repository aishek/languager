module Languager; end

require 'languager/subs'
require 'languager/string'

String.send :include, Languager::String