const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    var buf: [100]u8 = undefined;

    std.debug.print("Enter number of times for the loop to run: ", .{});
    const input_str = try stdin.readUntilDelimiterOrEof(&buf, '\n');

    if (input_str) |text| {
        const input = try std.fmt.parseInt(usize, text, 10);

        for (0..input) |i| {
            std.debug.print("i: {}\n", .{i});
        }
    }
}

