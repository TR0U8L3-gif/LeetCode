class Solution {
    int climbStairs(int n) {
        int step1 = 0;
        int step2 = 1;
        for(int i = 1; i <= n; i++){
            int out = step1 + step2;
            step1 = step2;
            step2 = out;
        }
        return step2;
    }
}