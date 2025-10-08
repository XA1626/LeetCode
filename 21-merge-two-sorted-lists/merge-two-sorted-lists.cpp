class Solution {
public:
    ListNode* mergeTwoLists(ListNode* list1, ListNode* list2) {

        ListNode* head = new ListNode(0);
        ListNode* dummy = head;

        while(list1 != nullptr && list2 != nullptr){
            if(list1 -> val < list2 -> val){
                dummy -> next = list1;
                list1 = list1 -> next;
            }
            else{
                dummy -> next = list2;
                list2 = list2 -> next;
            }
            dummy = dummy -> next;
        }

        if(list1 == nullptr) dummy -> next = list2;
        else if(list2 == nullptr) dummy -> next = list1;

        return head -> next;
    }
};