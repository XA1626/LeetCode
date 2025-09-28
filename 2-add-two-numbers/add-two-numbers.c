/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */
struct ListNode* addTwoNumbers(struct ListNode* l1, struct ListNode* l2) {
    struct ListNode* dummy = (struct ListNode*)malloc(sizeof(struct ListNode));
    struct ListNode* current = dummy;
    int carry = 0;
    
    // Initialize dummy node (we'll return dummy->next)
    dummy->val = 0;
    dummy->next = NULL;
    
    // Process both lists until both are exhausted and no carry remains
    while (l1 != NULL || l2 != NULL || carry != 0) {
        int sum = carry;
        
        // Add value from l1 if available
        if (l1 != NULL) {
            sum += l1->val;
            l1 = l1->next;
        }
        
        // Add value from l2 if available
        if (l2 != NULL) {
            sum += l2->val;
            l2 = l2->next;
        }
        
        // Calculate carry and digit value
        carry = sum / 10;
        int digit = sum % 10;
        
        // Create new node for the digit
        struct ListNode* newNode = (struct ListNode*)malloc(sizeof(struct ListNode));
        newNode->val = digit;
        newNode->next = NULL;
        
        // Link the new node to the result list
        current->next = newNode;
        current = current->next;
    }
    
    struct ListNode* result = dummy->next;
    free(dummy); // Free the dummy node
    return result;
}