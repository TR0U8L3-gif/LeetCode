class Solution {
  int garbageCollection(List<String> garbage, List<int> travel) {
    int minutes = 0;
    
    Map<String, int> posTruck = {
      "M" : 0,
      "P" : 0,
      "G" : 0,
    };

    int pos = 0;
    for (var trash in garbage) {
      for (var truck in posTruck.keys) {
        if(trash.contains(truck)){
          if(pos != posTruck[truck]){
            for(int i = (posTruck[truck] ?? pos); i < pos; i++){
              minutes += travel[i];
            }
            posTruck[truck] = pos;
          }
          int count = 0;
          for (var i = 0; i < trash.length; i++) {
            if(trash[i] == truck){
              count++;
            }
          }
          minutes += count;
        }
      }
      pos++;
    }
    
    return minutes;
  }
}