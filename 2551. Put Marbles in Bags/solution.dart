class Solution {
    int putMarbles(List<int> weights, int k) {
        int n = weights.length;
        List<int> pairWeights = List.filled(n - 1, 0);  
        for(int i = 0; i < n - 1; i++){
            pairWeights[i] = weights[i] + weights[i + 1];
        }

        pairWeights.sort();

        int answer = 0;
        for(int i = 0; i < k-1; i++){
            answer += pairWeights[n - 2 - i] - pairWeights[i]; 
        }
        return answer;
    }
}