class Node 
  attr_reader :score, :movie_title, :next_left, :next_right

  def initialize(score, movie_title)
    @score = score
    @movie_title = movie_title
    @next_left = nil
    @next_right = nil
  end

  def insert_node(movie_score, movie_title)
    if movie_score > self.score
      if self.next_right
        insert_node(self.next_right, movie_score, movie_title)
      else 
        self.next_right = Node.new(movie_score, movie_title)
      end
    else  
      if self.next_left
        insert_node(self.next_left, movie_score, movie_title)
      else
        self.next_left = Node.new(movie_score, movie_title)
      end 
    end
  end 
end 