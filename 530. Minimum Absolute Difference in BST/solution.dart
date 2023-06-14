
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
    int minDifference = double.maxFinite.toInt();
    TreeNode? prevNode;
    void inorderTraversal(TreeNode? node) {
        if (node == null) {
            return;
        }

        inorderTraversal(node.left);
        if (prevNode != null) {
            minDifference = minDifference < node.val - prevNode!.val ? minDifference : node.val - prevNode!.val;
        }
        prevNode = node;
        inorderTraversal(node.right);
    }

    int getMinimumDifference(TreeNode? root) {
        inorderTraversal(root);
        return minDifference;
    }
}