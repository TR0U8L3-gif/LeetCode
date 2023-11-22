class Solution {
  List<int> findDiagonalOrder(List<List<int>> nums) {
    if(nums.isEmpty) return [];
    
    Map<int, List<int>> numsMap = {}; 
    for(int i = nums.length - 1; i >= 0; i--){
      for(int j = 0; j < nums[i].length; j++){
        if(numsMap.containsKey(i+j)){
          numsMap[i+j]!.add(nums[i][j]);
        } else {
          numsMap[i+j] = [nums[i][j]];
        }
      }
    }

    //print(numsMap);

    List<int> result = [];
    for (int key in numsMap.keys.toList()..sort()) {
      result.addAll(numsMap[key]!);
    }

    return result;
  }
}