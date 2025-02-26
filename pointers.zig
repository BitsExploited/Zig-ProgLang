const std = @import("std");

pub fn main() !void {
    const print = std.debug.print;

    var x: i32 = 42;
    const ptr1: *i32 = &x; // This is the general way to assign a pointer in Zig

    ptr1.* = 36;

    const y: i32 = 50;
    const ptr2: *const i32 = &y; // If the pointer's variable is not going to change its value in the future (immutable) then we have to specify *const i32 when assigning the pointer

    print("Value of x: {}\n", .{x});
    print("Value from pointer of x: {}\n", .{ptr1.*});
    print("Memory address of x: {}\n", .{ptr1});

    print("\n", .{});

    print("Value of y: {}\n", .{y});
    print("Value from pointer of y: {}\n", .{ptr2.*});
    print("Memory address of y: {}", .{ptr2});

}
