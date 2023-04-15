const std = @import("std");

pub fn main() !void {
    std.debug.print("Hello, kalevala here!\n", .{});

    // 1. Get arguments from cmdline.
    // 2. Open file - write to file - close the file.
    const heap_allocator = std.heap.page_allocator;

    var argsSliceList = try std.process.argsAlloc(heap_allocator);

    std.debug.print("{s}\n", .{argsSliceList}); // ARGS ALLOC IS THE BEST

}
