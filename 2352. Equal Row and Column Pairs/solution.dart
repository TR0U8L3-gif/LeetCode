class Solution {
  int equalPairs(List<List<int>> grid) {
      int output = 0;
      int n = grid.length;
      Map<String, int> rowCounter = {};
      
      for(List<int> row in grid){
          String rowString = row.toString();
          if(rowCounter.containsKey(rowString)){
            rowCounter.update(rowString, (value) => value + 1);
          } else {
            rowCounter[rowString] = 1;
          }
      }

      //print(rowCounter);

      for(int c = 0; c < n; c++){
          List<int> colArray = [];
          for(int r = 0; r < n; r++){
              colArray.add(grid[r][c]);
          }
          String colString = colArray.toString();
          //print(colString);
          if(rowCounter.containsKey(colString)){
            output += rowCounter[colString] ?? 1;
          }
      }

      return output;
  }
}