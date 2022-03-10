const Lexer = @This();

index: usize,
current_char: u8,
source: []const u8,

/// Initialize the lexer structure
/// Receives the source code as parameter
pub fn init(source: []const u8) Lexer {
    return Lexer {
        .source = source,
        .index = 0,
        .current_char = ""[0],
    };
}

/// Increment the index and set the currect character
pub fn nextChar(self: *Lexer) void {
    self.index += 1;
    if (self.index >= self.source.len) {
        self.current_char = '\x00';
    } else {
        self.current_char = self.source[self.index];
    }
}
/// Returns the next character in the array, without moving the index
pub fn peek(self: *Lexer) u8 {
    if (self.index + 1 >= self.source.len) {
        return '\x00';
    }
    return self.source[self.index+1];
}

pub fn getToken(self: *Lexer) void {

}