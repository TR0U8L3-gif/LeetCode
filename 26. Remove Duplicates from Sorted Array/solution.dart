class Solution {
    int removeDuplicates(List<int> nums) {
        int newNums = 1;

        for(int i = 0; i < nums.length - 1; i++){
            if(nums[i] != nums[i+1]){
                newNums++;
                nums[newNums - 1] = nums[i+1]; 
            }
        }
        
        return newNums;
    }
}