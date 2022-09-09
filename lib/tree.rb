class Tree
  def initialize(arr)
    @arr = arr
    @root = build_tree(arr)
  end

  def build_tree(arr)
    arr.sort.uniq

    return arr[arr.length/2]
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end