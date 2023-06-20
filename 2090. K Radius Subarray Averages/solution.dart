class Solution {
    List<int> getAverages(List<int> nums, int k) {
        int sum = calculateSum(nums, 0, k*2);
        List<int> output = [];
        for(int i = 0; i < nums.length; i++){
            if(i < k || i >= (nums.length - k)){
                output.add(-1);
            } else {
                output.add(sum ~/ (k*2 + 1));
                sum -= nums[i - k];
                if(i + k + 1 < nums.length) sum += nums[i + k + 1];
            }
        }
        return output;
    }

    int calculateSum(List<int> nums, int start, int end){
        int output = 0;
        for(int i = start; i <= end; i++){
            if(i >= nums.length) break;
            output += nums[i];
        }
        return output;
    }
}