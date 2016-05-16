require './test/test_helper.rb'

require "dumbo"

class DumboTest < MTest::Unit::TestCase
  def test_version
    assert_equal Dumbo::VERSION, "0.0.1"
  end
end

MTest::Unit.new.run
