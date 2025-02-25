const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    var buffer: [100]u8 = undefined;

    std.debug.print("Enter a string: ", .{});
    const input = try stdin.readUntilDelimiterOrEof(&buffer, '\n');

    if (input) |text| {
        std.debug.print("The text you entered is: {s}\n", .{text});
    }
}
