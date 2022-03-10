const Lexer = struct {
    curPos: u8,
    curChar: u8,
    source: [*]u8,

    pub fn init(source: [*]u8) Lexer {
        return Lexer {
            .source = source,
            .curPos = -1,
            .curChar = "",
        };
    }
};
