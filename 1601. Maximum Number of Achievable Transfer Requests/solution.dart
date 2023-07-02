class Solution {
  int maximumRequests(int n, List<List<int>> requests) {
    var indegree = List<int>.filled(n,0);
    return helper(0, requests, indegree, n, 0);
  }

  int helper(int start,List<List<int>> req,List<int> indegree,int n, int count){
    if(start == req.length){
      for(int i=0;i<n;i++){
        if(indegree[i] != 0){
          return 0;
        }
      }
      return count;
    }

    indegree[req[start][0]]--;
    indegree[req[start][1]]++;
    int take = helper(start + 1, req, indegree, n, count + 1);

    indegree[req[start][0]]++;
    indegree[req[start][1]]--;
    int notTake = helper(start + 1, req, indegree, n, count);

    return take > notTake ? take : notTake;

  }

}