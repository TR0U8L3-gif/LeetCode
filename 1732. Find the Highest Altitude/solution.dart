class Solution {
    int largestAltitude(List<int> gain) {
        int altitude = 0;
        int max = 0;
        for(int val in gain){
            altitude += val;
            if(altitude > max) max = altitude;
        }
        return max;
    }
}