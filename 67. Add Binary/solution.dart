class Solution {
    String addBinary(String a, String b) {
        String output = "";
        int size = a.length > b.length ? a.length : b.length; 
        bool plusOne = false;
        
        for(int i = 0; i < size; i++){
            int indexA = a.length - i - 1; 
            int indexB = b.length - i - 1;

            int valA = indexA >= 0 ? int.parse(a[indexA]) : 0;
            int valB = indexB >= 0 ? int.parse(b[indexB]) : 0;

            int valOut = valA + valB + (plusOne ? 1 : 0);

            if(valOut >= 2){
                plusOne = true;
            } else {
                plusOne = false;
            }

            output += (valOut%2).toString(); 
        }

        if(plusOne == true){
            output += "1";
        }

        return String.fromCharCodes(output.codeUnits.reversed);
    }
}