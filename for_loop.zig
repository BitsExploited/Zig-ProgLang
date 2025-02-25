const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    var buffer: [100]u8 = undefined;

    std.debug.print("Enter number of times to run the loop: ", .{});
    const input_str = try stdin.readUntilDelimiterOrEof(&buffer, '\n');

    if (input_str) |text| {
        const input = try std.fmt.parseInt(i32, text, 10);

        var i: i32 = input;

        while (i > 0) : (i -= 1) {
            std.debug.print("i: {}\n", .{i});
        }
    } else {
        std.debug.print("No input received (EOF).\n", .{});
    }
}
