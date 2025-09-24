using System;
using System.Collections.Generic;

public class Solution {
    public bool IsValid(string s) {
        Stack<char> stack = new Stack<char>();
        Dictionary<char, char> pairs = new Dictionary<char, char> {
            { '(', ')' },
            { '{', '}' },
            { '[', ']' }
        };
        
        foreach (char c in s) {
            if (pairs.ContainsKey(c)) {
                // Opening bracket - push corresponding closing bracket
                stack.Push(pairs[c]);
            } else {
                // Closing bracket - check if it matches the expected one
                if (stack.Count == 0 || stack.Pop() != c) {
                    return false;
                }
            }
        }
        
        return stack.Count == 0;
    }
}