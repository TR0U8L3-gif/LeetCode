class Solution {
  int countNicePairs(List<int> nums) {
    List<int> arr = [];
    for(int number in nums){
        arr.add(number - rev(number)); 
    }
    Map<int, int> arrMap = {};
    int result = 0;
    for (int number in arr) {
      result = (result + (arrMap[number] ?? 0)) % (1000000007);
      arrMap.update(number, (value) => value + 1, ifAbsent: () => 1);
    }
    return result;
  }

  int rev(int number) {
        int result = 0;
        while (number > 0) {
            result = result * 10 + number % 10;
            number ~/= 10;
        }
        return result;
    }
}