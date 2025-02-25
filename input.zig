const std = @import("std").debug.print;

pub fn main() !void {
    const stdin = std.io.getStdIn.reader();
    var buffer[100]: u8 = undefined;

    print("Enter a string: ", .{});
    const input = stdin.readUntilDelimiterOrEof(&buffer, '\n');

    if (input) |text| {
        print("The text you entered is: {s}\n", .{text});
    }
}
