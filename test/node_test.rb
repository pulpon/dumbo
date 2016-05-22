require './test/test_helper.rb'

require "dumbo"

class DumboNodeTest < MTest::Unit::TestCase
  def test_node_creation
    node = Dumbo::Node.new
  end
end
