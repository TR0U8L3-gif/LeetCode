import 'dart:math';

class Solution {
  int largestSubmatrix(List<List<int>> matrix) {
    int submatrix = 0;
    int m = matrix.length;
    int n = matrix[0].length;

    for (int row = 0; row < m; row++) {
      for (int col = 0; col < n; col++) {
          if (matrix[row][col] != 0 && row > 0) {
              matrix[row][col] += matrix[row - 1][col];
          }
      }
      
      List<int> currRow = matrix[row];
      print(currRow);
      currRow.sort();
      print(currRow);
      for (int i = 0; i < n; i++) {
        submatrix = max(submatrix, currRow[i] * (n - i));
        print("${currRow[i]} n:$n i:$i -> ${currRow[i] * (n - i)}");
      }
    }

    return submatrix;
  }
}