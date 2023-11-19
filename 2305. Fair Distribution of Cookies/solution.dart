import 'dart:math';

class Solution {
    int distributeCookies(List<int> cookies, int k) {
        if(cookies.isEmpty) return 0;     
        return dfs(0, List<int>.filled(k,0), cookies, k);
    }

    int dfs(int i, List<int> children, List<int> cookies, int k){
        if(i == cookies.length){
            int unfairness = double.minPositive.toInt();
            for(int value in children){
                unfairness = max(unfairness, value);
            }
            return unfairness;
        }

        int answer = double.maxFinite.toInt();
        for (int j = 0; j < k; ++j) {
            children[j] += cookies[i];
            answer = min(answer, dfs(i + 1, children, cookies, k));
            children[j] -= cookies[i];
        }
        return answer;
    }
}