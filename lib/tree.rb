class Tree
  def initialize(arr)
    @arr = arr
    @root = build_tree(arr)
  end

  def build_tree(arr)
    arr.sort.uniq
  end
end