function isValid(s: string): boolean {
    const stack: string[] = [];
    const openingBrackets = new Set(['(', '{', '[']);
    const bracketPairs: Record<string, string> = {
        ')': '(',
        '}': '{',
        ']': '['
    };
    
    for (const char of s) {
        if (openingBrackets.has(char)) {
            stack.push(char);
        } else {
            const top = stack.pop();
            if (top !== bracketPairs[char]) {
                return false;
            }
        }
    }
    
    return stack.length === 0;
}