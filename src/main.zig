const std = @import("std");
const Lexer = @import("lexer.zig");

pub fn main() anyerror!void {
    const input = "LET foobar = 32";
    var lexer = Lexer.init(input);

    while (lexer.peek() != '\x00') {
        std.log.info("{c}", .{lexer.current_char});
        lexer.nextChar();
    }
    std.log.info("{s}", .{lexer.source});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
