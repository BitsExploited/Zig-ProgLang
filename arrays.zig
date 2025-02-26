const std = @import("std");

pub fn main() !void {
    const print = std.debug.print;

    const arr1 = [_]i32{3, 2, 1}; // Allocates the memory according to the number of elements in the array
    const arr2 = [2]i32{5, 3, 4};

    print("Array 1: ", .{});
    for (arr1, 0..) |num, index| {
        print("Index: {}, Numbers: {}\n", .{index, num});
    }
    print("Array 2: ", .{});
    for (arr2, 0..) |num, index| {
        print("Index: {}, Numbers: {}\n", .{index, num});
    }

}
