
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
      List<int> res = [];
      helper(root, res);
      return res;
  }
  
  void helper(TreeNode? root, List<int> res) {
      if (root != null) {
          helper(root.left, res);
          res.add(root.val);
          helper(root.right, res);
      }
  }
}