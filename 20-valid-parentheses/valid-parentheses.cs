using System;
using System.Collections.Generic;

public class Solution {
    public bool IsValid(string s) {
        Stack<char> stack = new Stack<char>();
        Dictionary<char, char> bracketPairs = new Dictionary<char, char> {
            { ')', '(' },
            { '}', '{' },
            { ']', '[' }
        };
        
        foreach (char c in s) {
            // If it's an opening bracket, push to stack
            if (c == '(' || c == '{' || c == '[') {
                stack.Push(c);
            } 
            // If it's a closing bracket
            else {
                // Check if stack is empty (no matching opening bracket)
                if (stack.Count == 0) {
                    return false;
                }
                
                // Check if the top of stack matches the expected opening bracket
                char top = stack.Pop();
                if (top != bracketPairs[c]) {
                    return false;
                }
            }
        }
        
        // If stack is empty, all brackets were properly matched
        return stack.Count == 0;
    }
}