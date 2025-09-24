function isValid(s: string): boolean {
    const stack: string[] = [];
    const bracketPairs: { [key: string]: string } = {
        ')': '(',
        '}': '{',
        ']': '['
    };
    
    for (let i = 0; i < s.length; i++) {
        const char = s[i];
        
        // If it's an opening bracket, push to stack
        if (char === '(' || char === '{' || char === '[') {
            stack.push(char);
        } 
        // If it's a closing bracket
        else {
            // Check if stack is empty (no matching opening bracket)
            if (stack.length === 0) {
                return false;
            }
            
            // Check if the top of stack matches the expected opening bracket
            const top = stack.pop()!;
            if (top !== bracketPairs[char]) {
                return false;
            }
        }
    }
    
    // If stack is empty, all brackets were properly matched
    return stack.length === 0;
}