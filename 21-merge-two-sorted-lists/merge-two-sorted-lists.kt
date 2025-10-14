/**
 * Example:
 * var li = ListNode(5)
 * var v = li.`val`
 * Definition for singly-linked list.
 * class ListNode(var `val`: Int) {
 *     var next: ListNode? = null
 * }
 */
class Solution {
    fun mergeTwoLists(list1: ListNode?, list2: ListNode?): ListNode? {
        // Create a dummy node to simplify the code
        val dummy = ListNode(0)
        var current: ListNode? = dummy
        var l1 = list1
        var l2 = list2
        
        // Traverse both lists and compare nodes
        while (l1 != null && l2 != null) {
            if (l1.`val` <= l2.`val`) {
                current?.next = l1
                l1 = l1.next
            } else {
                current?.next = l2
                l2 = l2.next
            }
            current = current?.next
        }
        
        // Attach the remaining nodes from either list
        current?.next = l1 ?: l2
        
        return dummy.next
    }
}