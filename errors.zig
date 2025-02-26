const std = @import("std");

fn division(a: i32, b:i32) !i32 {
    if (b == 0) {
        return error.DivisionByZero;
    }
    return @divTrunc(a, b);
}

pub fn main() !void {
    const print = std.debug.print;

    const ans1 = try division(15, 5);
    print("Division 1: {}\n", .{ans1});

    const ans2 = division(10, 0) catch |err| {
        print("Division 2: {}\n", .{err});
        return;
    };
    print("Division 2: {}\n", .{ans2});
}
