import java.util.Stack;

class Solution {
    public boolean isValid(String s) {
        Stack<Character> stack = new Stack<>();
        
        for (char c : s.toCharArray()) {
            if (c == '(' || c == '{' || c == '[') {
                // Opening bracket - push to stack
                stack.push(c);
            } else {
                // Closing bracket - check if stack is empty
                if (stack.isEmpty()) {
                    return false;
                }
                
                // Get the top element and check if it matches
                char top = stack.pop();
                if ((c == ')' && top != '(') ||
                    (c == '}' && top != '{') ||
                    (c == ']' && top != '[')) {
                    return false;
                }
            }
        }
        
        // If stack is empty, all brackets were properly matched
        return stack.isEmpty();
    }
}