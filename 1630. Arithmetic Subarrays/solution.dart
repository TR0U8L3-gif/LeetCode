class Solution {
  List<bool> checkArithmeticSubarrays(List<int> nums, List<int> l, List<int> r) {
    List<bool> ans = [];
    for(int i = 0; i < l.length; i++){
      List<int> range = nums.getRange(l[i], r[i] + 1).toList()..sort();
      int diff = range[0] - range [1];
      int j = 1;
      for(j = 1; j < range.length - 1; j++){
        if(range[j] - range [j + 1] != diff) break;
      }
      
      print("$range - $j");

      if(j >= range.length - 1){
        ans.add(true);
      } else {
        ans.add(false);
      }
    }
    return ans;
  }
}