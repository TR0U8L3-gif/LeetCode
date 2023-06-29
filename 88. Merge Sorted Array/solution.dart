class Solution {
    void merge(List<int> nums1, int m, List<int> nums2, int n) {
        if(n == 0) return;
        for(int i = m; i < nums1.length; i++){
            nums1[i] = nums2[i - m];
        }
        nums1.sort();
    }
}