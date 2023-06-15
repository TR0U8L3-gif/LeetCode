
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
    Map<int,int> levels = {};
    int level = 1;
    int maxLevelSum(TreeNode? root) {
        treeScraper(root);
        List<MapEntry<int,int>> list = levels.entries.toList();
        list.sort((a, b) {
            // Sort by values in descending order
            int valueComparison = b.value.compareTo(a.value);
            if (valueComparison != 0) return valueComparison;

            // Sort by keys in ascending order if values are equal
            return a.key.compareTo(b.key);
        });
        print(list);
        return list[0].key;
    }

    void treeScraper(TreeNode? root){
        if(root == null) {
            level--;
            return;
        }

        if(levels.containsKey(level)){
            levels.update(level, (val) => val + root.val);
        } else {
            levels[level] = root.val;
        }
        //print("$root -> $level");
        //print(levels);
        level++;
        treeScraper(root.right);
        level++;
        treeScraper(root.left);
        level--;
    }
}