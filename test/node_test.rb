require_relative 'test_helper'
require './lib/node'

class NodeTest < Minitest::Test

  def setup
    @node = Node.new(80, "Dumb & Dumber")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_readable_attributes
    assert_equal 80, @node.score
    assert_equal "Dumb & Dumber", @node.movie_title
  end

  def test_next_nodes
    assert_nil @node.next_left
    assert_nil @node.next_right
  end
end 