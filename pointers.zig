const std = @import("std");

pub fn main() !void {
    const print = std.debug.print;

    var x: i32 = 42;
    const ptr: *i32 = &x; // This is the general way to assign a pointer in Zig

    ptr.* = 36;

    print("Value: {}\n", .{x});
    print("Value from pointer: {}\n", .{ptr.*});
    print("Memory address: {}", .{ptr});
}
