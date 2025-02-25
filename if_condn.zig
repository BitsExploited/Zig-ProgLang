const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    var buffer: [100]u8 = undefined; 

    std.debug.print("Enter number to check positive or not: ", .{});
    const input = try stdin.readUntilDelimiterOrEof(&buffer, '\n'); 

    if (input) |text| { 
        const number = try std.fmt.parseInt(i32, text, 10);

        if (number > 0) {
            std.debug.print("The number {} is positive.\n", .{number});

        } else if (number == 0) {
            std.debug.print("The number {} is zero.\n", .{number});
        } else {
            std.debug.print("The number {} is negative.\n", .{number});
        }
    } else {
        std.debug.print("No input received (EOF).\n", .{});
    }
}
