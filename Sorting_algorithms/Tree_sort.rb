class TreeNode
    attr_accessor :value, :left, :right

    def initialize(value)
        @value = value
        @left = nil
        @right = nil
    end
end

class BinarySearchTree
    attr_accessor :root

    def initialize
        @root = nil
    end

    def insert(value)
        @root = insert_recursive(@root, value)
    end

    def insert_recursive(node, value)
        return TreeNode.new(value) unless node

        if value < node.value
            node.left = insert_recursive(node.left, value)
        else
            node.right = insert_recursive(node.right, value)
        end

        node
    end

    def in_order_traversal(node = @root, sorted_array = [])
        return sorted_array if node.nil?

        in_order_traversal(node.left, sorted_array)
        sorted_array << node.value
        in_order_traversal(node.right, sorted_array)

        sorted_array
    end
end

def tree_sort(arr)
    tree = BinarySearchTree.new
    arr.each { |val| tree.insert(val) }
    tree.in_order_traversal
end
