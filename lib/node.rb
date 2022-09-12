class Node
  include Comparable
  attr_accessor :value, :left, :right
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  def is_greater?(node)
    @value > node.value
  end

  def is_smaller?(node)
    @value < node.value
  end
end