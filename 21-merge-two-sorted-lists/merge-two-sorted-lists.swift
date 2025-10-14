/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        // Create a dummy node to simplify the code
        let dummy = ListNode(0)
        var current: ListNode? = dummy
        var l1 = list1
        var l2 = list2
        
        // Traverse both lists and compare nodes
        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                current?.next = l1
                l1 = l1?.next
            } else {
                current?.next = l2
                l2 = l2?.next
            }
            current = current?.next
        }
        
        // Attach the remaining nodes from either list
        current?.next = l1 ?? l2
        
        return dummy.next
    }
}