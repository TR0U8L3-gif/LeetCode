class Solution {
    int searchInsert(List<int> nums, int target) {
        if(nums.first > target) return 0;
        if(nums.last < target) return nums.length;
        
        int start = 0;
        int end = nums.length - 1;

        while(start <= end) {
            int mid = (start + end) ~/ 2;
            if(nums[mid] == target) return mid;
            if(nums[mid] > target) { 
                end = mid - 1;
            } else {
                start = mid + 1;
            }
        }

        return start;
    }
}