function isValid(s: string): boolean {
    const stack: string[] = [];
    const bracketMap: Record<string, string> = {
        ')': '(',
        '}': '{',
        ']': '['
    };
    
    for (const char of s) {
        if (char in bracketMap) {
            // It's a closing bracket
            const top = stack.pop();
            if (top !== bracketMap[char]) {
                return false;
            }
        } else {
            // It's an opening bracket
            stack.push(char);
        }
    }
    
    return stack.length === 0;
}