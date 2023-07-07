class Solution {
    int maxConsecutiveAnswers(String answerKey, int k) {
    int maxCount = 0; 
    int maxFreq = 0; 

    Map<String, int> freqMap = {}; 

    int left = 0; 

    for (int right = 0; right < answerKey.length; right++) {
        freqMap[answerKey[right]] = (freqMap[answerKey[right]] ?? 0) + 1;

        maxFreq = freqMap.values.reduce((a, b) => a > b ? a : b); 

        int operationsNeeded = right - left + 1 - maxFreq;

        if (operationsNeeded > k) {
            freqMap[answerKey[left]] = (freqMap[answerKey[left]] ?? 0) - 1; 
            left++; 
        }

        maxCount = (maxCount > right - left + 1 ? maxCount : right - left + 1);
    }

    return maxCount;
    }
}