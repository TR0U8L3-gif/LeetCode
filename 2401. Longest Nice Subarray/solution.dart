class Solution {
  int longestNiceSubarray(List<int> nums) {
    if (nums.length == 1) return 1;
    if (nums.length == 2) {
      return nums.first & nums.last == 0 ? 2 : 1;
    }
    var start = 0;
    var max = 1;
    var end = 0;
    int bits = 0;
    while (end < nums.length) {
        while ((bits & nums[end]) != 0) {
            bits ^= nums[start];
            start++;
        }
        bits |= nums[end];
        if(max < end - start + 1){
            max = end - start + 1;
        }
        end++;
    }
    return max;
  }
}