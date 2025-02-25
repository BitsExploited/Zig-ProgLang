const print = @import("std").debug.print; // When implemented this line it will it allows us to assign std.debug.print to the variable print so we dont have to type the whole thing

pub fn main() !void {
    // var x: i32; // This will return a error since the value is not initialised

    var x: i32 = undefined; // This is the correct way to leave a variable unintialised
    const y = 15; // Immutalbe

    
    x = 15;

    print("The value of the variable is: {d}\n", .{x});
    print("The value of constant variable: {d}", .{y});
}


