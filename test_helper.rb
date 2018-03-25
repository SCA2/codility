require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'

options = { color: true }
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(options)]
