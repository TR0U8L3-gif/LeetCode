class Solution {
  int reductionOperations(List<int> nums) {
    int reduce = 0;
    int stack = 1;
    nums.sort();
    for(int i = nums.length - 1; i > 0; i--){
        if(nums[i] != nums[i-1]){
            reduce += stack;
        }
        stack++;
    }
    return reduce;
  }
}