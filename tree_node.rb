class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end

  def children
    [@left, @right].compact
  end
end
