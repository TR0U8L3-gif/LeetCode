class Solution {
    int minSubArrayLen(int target, List<int> nums) {
        if(nums.isEmpty) return 0;
        int start = 0; 
        int end = 0;
        int sum = nums[0];

        if(sum >= target) return 1;

        int min = nums.length + 1;

        while(start < nums.length && end < nums.length){
           if(sum >= target){
               //move start
               sum -= nums[start];
               start++; 
               if(start >= nums.length) break;
               
           } else {
               //move end
               end++;
               if(end >= nums.length) break;
               sum += nums[end];
           }
           
           if(end - start + 1 < min && sum >= target){
               min = end - start + 1;
           }

           //print("($start,$end) sum:$sum / $min");
        }

        return min == nums.length + 1 ? 0 : min;
    }
}