require_relative '../lib/node'
class Tree
  def initialize(arr)
    @arr = arr
    @root = build_tree(arr.sort.uniq)
    pretty_print
  end

  def build_tree(arr)
    return Node.new(arr.first) if arr.length == 1
    return nil if arr.length == 0
    root_node = Node.new(arr[arr.length/2])

    left_arr = arr[0...(arr.length/2)]
    right_arr = arr[arr.length/2...arr.length]

    root_node.left = build_tree(left_arr)
    root_node.right = build_tree(right_arr)

    return root_node
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end

tree = Tree.new([3, 2, 1])
#[1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]