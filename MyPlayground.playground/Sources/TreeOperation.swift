class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d: Int) {
        data = d
    }
}

class Tree {
    var root: Node?
    
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        
        return root
    }
    
    func getHeight(root: Node?) -> Int {
        if root == nil {
            return -1
        }
        
        let left = 1 + getHeight(root: root?.left)
        let right = 1 + getHeight(root: root?.right)
        
        return max(left, right)
    }
    
    func max(_ param1: Int, _ param2: Int) -> Int {
        if param1 > param2 {
            return param1
        } else {
            return param2
        }
    }
}

func main(nodes: [Int]) {
    
    let tree = Tree()
    
    for node in nodes {
        tree.root = tree.insert(root: tree.root, data: node)
    }
    
    print("Height of the tree is: \(tree.getHeight(root: tree.root))")
}

//main(nodes: [10, 8, 7, 11, 15, 13, 18, 5])

//main(nodes: [3, 5, 2, 1, 4, 6, 7])
//
//print("Max value of Integer is: \(Int.max)")
