class Solution {
  int minOperations(List<int> nums) {
    if (nums.length == 3) {
      var isOne = true;
      var isZero = true;
      for (final num in nums) {
        if (num == 1) {
          isZero = false;
        } else if (num == 0) {
          isOne = false;
        }
        if (!isOne && !isZero) {
          break;
        }
      }
      return isZero ? 1 : (isOne ? 0 : -1);
    }
    var count = 0;
    var perfect = true;
    for (var i = 0; i <= nums.length - 3; i++) {
      if (nums[i] == 1) {
        continue;
      }

      if (perfect) {
        perfect = false;
      }

      for (var num = i; num < i + 3; num++) {
        nums[num] = (nums[num] + 1) % 2;
      }

      count++;
    }
    for (final num in nums) {
      if (num == 0) {
        count = -1;
        perfect = false;
        break;
      }
    }

    return perfect ? 0 : count;
  }
}
