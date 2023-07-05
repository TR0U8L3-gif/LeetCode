class Solution {
    int longestSubarray(List<int> nums) {
        if(containOnlyOnes(nums)) return nums.length - 1; 

        List<Entry> list = [];
        int strike = 1;
        for(int i = 1; i < nums.length; i++){
            if(nums[i-1] != nums[i]){
                list.add(Entry(nums[i-1],strike));
                strike = 1;
            } else {
                if(nums[i] == 0){
                strike = 1;
                list.add(Entry(nums[i],strike));
                } else {
                    strike++;
                }
            }
            if(i + 1 == nums.length){
                list.add(Entry(nums[i],strike));
            }
        }
        //print(list);

        int max = 0;
        for(int i  = 0; i < list.length; i++){
            int maxi = 0;
            if(list[i].key == 1) continue;

            int val1 = (i == 0) ? 0 : (list[i-1].key == 1? list[i-1].value : 0);
            int val2 = (i + 1 == list.length)? 0 : (list[i+1].key == 1? list[i+1].value : 0);
            
            maxi = val1 + val2;

            if(maxi > max) max = maxi;
        }

        return max;

    }

    bool containOnlyOnes(List<int> nums){
        for(int val in nums){
            if(val != 1) return false;
        }
        return true;
    }
}

class Entry{
    int key;
    int value;
    Entry(this.key, this.value);
}