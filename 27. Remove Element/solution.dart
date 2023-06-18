class Solution {
    int removeElement(List<int> nums, int val) {
        int output = 0;
        int index = 0;

        for(int i = 0; i < nums.length; i++){
            if(nums[i] == val) continue;
            nums[index] = nums[i];
            index++;
            output++;
        }

        return output;
    }
}