const std = @import("std");

fn errorOccured() !i32 {
    if (false) return error.Oops;
    return 42;
}

pub fn main() !void {
    const result = try errorOccured();
    std.debug.print("Result: {}\n", .{result});
}
