const std = @import("std");

pub fn write(_: void, bytes: []const u8) !usize {
    return 0;
}
pub fn outStream() std.io.OutStream(void, std.meta.ReturnType(write).ErrorSet, write) {
    return std.io.OutStream(void, std.meta.ReturnType(write).ErrorSet, write){ .context = {} };
}

test "crash" {
    _ = std.io.multiOutStream(.{outStream()});
}
