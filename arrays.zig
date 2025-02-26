const std = @import("std");

pub fn main() !void {
    const print = std.debug.print;

    const arr = [2]i32{3, 2, 1};

    for (arr, 0..) |num, index| {
        print("Index: {}, Numbers: {}\n", .{index, num});
    }
}
