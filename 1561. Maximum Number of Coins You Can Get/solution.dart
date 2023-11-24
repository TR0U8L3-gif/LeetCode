class Solution {
  int maxCoins(List<int> piles) {
    piles.sort();
    int ans = 0;
    for(int i = 0; i < (piles.length ~/ 3); i++){
        ans += piles[piles.length - 1 - 1 - (i * 2)];
    }
    return ans;
  }
}