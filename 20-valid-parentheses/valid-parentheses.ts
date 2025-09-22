function isValid(s: string): boolean {
    const stack: string[] = [];
    const bracketMap: { [key: string]: string } = {
        ')': '(',
        '}': '{',
        ']': '['
    };
    
    for (let char of s) {
        // If it's a closing bracket
        if (bracketMap[char]) {
            // Check if the top of stack matches the corresponding opening bracket
            const topElement = stack.length === 0 ? '#' : stack.pop()!;
            if (topElement !== bracketMap[char]) {
                return false;
            }
        } 
        // If it's an opening bracket
        else {
            stack.push(char);
        }
    }
    
    // If stack is empty, all brackets were properly closed
    return stack.length === 0;
}