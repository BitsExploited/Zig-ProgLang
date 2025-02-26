const std = @import("std");

pub fn main() !void {
    const print = std.debug.print;

    const x: i32 = 42;
    const ptr: *const i32 = &x;

    print("Value: {}\n", .{x});
    print("Value from pointer: {}\n", .{ptr.*});
    print("Memory address: {}", .{ptr});
}
