require_relative 'test_helper'
require './lib/binary_search_tree'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @tree = BinarySearchTree.new
  end 

  def test_it_exists
    assert_instance_of BinarySearchTree, @tree
  end 
end 