const std = @import("std");

pub fn main() !void {
    std.debug.print("Hello World", .{}); // This is the simplest way to print something in Zig, it is always better to write to stderr than stdout
}
