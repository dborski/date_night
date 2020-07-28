class BinarySearchTree
  attr_reader :head

  def initialize 
    @head = nil
  end 

  def insert(score, movie_title)
    if !@head
      @head = Node.new(score, movie_title)
    else 
      current_node = @head
      current_node.insert_node(score, movie_title)
    end 
    binding.pry
  end 
end 