class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
    ListNode? deleteDuplicates(ListNode? head) {
        if(head == null || head.next == null) return head;
        
        ListNode? lastNode = head;
        ListNode? node = head.next;
        while(node != null){
            //print("${lastNode?.val} ${node.val}");
            if(lastNode?.val == node.val){
                lastNode?.next = node.next;
                node.next = null;
                node = lastNode?.next;
            } else {
                lastNode = node;
                node = node.next;
            }
        }
        return head;
    }
}