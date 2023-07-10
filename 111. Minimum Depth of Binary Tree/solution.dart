import 'dart:math';

class TreeNode {
    int val;
    TreeNode? left;
    TreeNode? right;
    TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
    int minDepth(TreeNode? root) {
        if(root == null) return 0;
        return helper(root, 1); 
    }

    int helper(TreeNode root, int index){
        int left = root.left == null ? index : helper(root.left!, index + 1);
        int right = root.right == null ? index :helper(root.right!, index + 1);
        if(root.left == null){
            return right;
        }
        else if(root.right == null){
            return left;
        }
        else{
            return min(left,right);
        }
    }
}