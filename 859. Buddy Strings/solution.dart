class Solution {
    bool buddyStrings(String s, String goal) {
        if(s.length != goal.length) return false;

        if(s == goal){
            List<int> frequency = List.filled(26, 0); 
            for (int rune in s.runes.toList()) {
                frequency[rune - Runes('a').first.toInt()] += 1;
                if (frequency[rune - Runes('a').first.toInt()] == 2) {
                    return true;
                }
            }
            return false;
        }

        List<List<String>> pairs = [];
        for(int i=0;i<s.length;i++){
            if(s[i] != goal[i]){
            pairs.add([s[i],goal[i]]);
            }
        }
        return pairs.length == 2 && pairs[0][0] == pairs[1][1] && pairs[0][1] == pairs[1][0];
    }
}