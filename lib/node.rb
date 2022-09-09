class Node
  include Comparable
  attr_reader :value
  def initialize(value, left_child = nil, right_child = nil)
    @value = value
    @left_child = left_child
    @right_child = right_child
  end

  def is_greater?(node)
    value > node.value
  end

  def is_smaller?(node)
    value < node.value
  end
end