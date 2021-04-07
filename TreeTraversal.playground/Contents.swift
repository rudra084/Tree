/* Class containing left and right child of current
node and value*/
class Node<Element> {
    var value:Element
    var leftNode:Node?
    var rightNode:Node?
    init(val:Element) {
        self.value = val
    }
}

//We can traverse tree by DFS method in following major ways

//Inorder Traversal
func inOrderTrav(node:Node<Int>?){
    if node != nil {
        inOrderTrav(node: node?.leftNode)
        print(node?.value ?? "")
        inOrderTrav(node: node?.rightNode)
    }
}

//PreOrder Traversal
func preOrderTrav(node:Node<Int>?){
    if node != nil {
        print(node?.value ?? "")
        preOrderTrav(node: node?.leftNode)
        preOrderTrav(node: node?.rightNode)
    }
}

//PostOrder Traversal
func postOrderTrav(node:Node<Int>?){
    if node != nil {
        postOrderTrav(node: node?.leftNode)
        postOrderTrav(node: node?.rightNode)
        print(node?.value ?? "")
       
    }
}
