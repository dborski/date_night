require_relative 'test_helper'
require './lib/binary_search_tree'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @tree = BinarySearchTree.new
  end 

  def test_it_exists
    assert_instance_of BinarySearchTree, @tree
  end 

  def test_head_is_nil_by_default
    assert_nil @tree.head
  end 

  def test_insert
    assert_equal 0, @tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 1, @tree.insert(16, "Johnny English")
    assert_equal 1, @tree.insert(92, "Sharknado 3")
    assert_equal 2, @tree.insert(50, "Hannibal Buress: Animal Furnace")
  end 
end 