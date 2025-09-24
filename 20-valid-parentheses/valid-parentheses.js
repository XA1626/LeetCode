function isValid(s) {
    const stack = [];
    const map = { '(': ')', '{': '}', '[': ']' };
    
    for (let c of s) {
        if (map[c]) {
            stack.push(map[c]);
        } else if (stack.pop() !== c) {
            return false;
        }
    }
    
    return !stack.length;
}