$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'minitest/reporters'
Minitest::Reporters.use!

require 'mutant_school_api_model'

require 'minitest/autorun'
