class Solution {
    int singleNumber(List<int> nums) {
        Map<int,int> numbers = Map.fromIterable(nums.toSet(), key: (num) => num, value: (e) => 0);
        int output = 0;

        for(int val in nums){
            numbers[val] =  numbers[val]! + 1;
        }


        numbers.forEach((key, val){
            if(val == 1){
                output = key;
            };
        });

        return output;
    }
}