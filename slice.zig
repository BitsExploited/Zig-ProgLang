const std = @import("std");

pub fn main() !void {
    const print = std.debug.print;

    const arr = [_]i32{3, 2, 1, 4, 2, 4, 8, 7};

    const slice1 = arr[0..6];
    const slice2 = arr[3..6];

    print("Array: {any}\n", .{arr});
    print("Slice 1: {any}\n", .{slice1});
    print("Slice 2: {any}\n", .{slice2});
}
