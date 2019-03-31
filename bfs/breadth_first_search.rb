require_relative '../tree_node'

root =  TreeNode.new(1)
a2 =  TreeNode.new(2)
a4 =  TreeNode.new(4)

a21 =  TreeNode.new(5)
a22 =  TreeNode.new(6)
a41 =  TreeNode.new(7)
a42 =  TreeNode.new(8)

a51 =  TreeNode.new(9)
a52 =  TreeNode.new(10)

a47 =  TreeNode.new(11)
a48 =  TreeNode.new(12)

a41.right = a47
a41.left = a48

a21.right = a51
a21.left = a52

a4.right = a41
a4.left = a42
a2.right = a21
a2.left = a22

root.right = a2
root.left = a4





def bfs(node)
  queue = []
  queue << node
  
  while(queue.size != 0)
    n = queue.shift
    puts n.value
    n.children.each do |child|
      queue << child
    end
  end
end


bfs(root)

