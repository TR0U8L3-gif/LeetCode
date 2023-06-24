class Solution {
    List<int> plusOne(List<int> digits) {
        digits.last++;
        if(digits.length == 1) {
            if(digits.last == 10){
                digits.last = 0;
                digits.insert(0,1);
            }
            return digits;
        }
        for(int i = digits.length - 2; i >=0; i--){
            if(digits[i] < 10 && digits[i + 1] < 10) break;

            if(digits[i + 1] == 10){
                digits[i + 1] = 0;
                digits[i]++;
            }

            if(i == 0 && digits[i] == 10){
                digits[i] = 0;
                digits.insert(0,1);
            }

        }
        return digits;
    }
}