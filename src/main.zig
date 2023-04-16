const std = @import("std");

// Usecases
// 1. Add task to a global file - for now one in the same place as build binary.
// 2. Show all tasks from a file - stdout as a list.

const Selector = enum { HELP, TASK, NOTE };
const Command = enum { HELP, SHOW, ADD };
const Value = enum { TEXT, NUMERIC }; // Prealocated area for string

pub fn validateArguments() void {}

pub fn main() !void {
    std.debug.print("Hello, kalevala here!\n", .{});

    // 1. Get arguments from cmdline.
    // 2. Open file - write to file - close the file.
    const heap_allocator = std.heap.page_allocator;

    var args_slice_list = try std.process.argsAlloc(heap_allocator);

    std.debug.print("{s}\n", .{args_slice_list}); // ARGS ALLOC IS THE BEST
    std.debug.print("TypeOf args_slice_list: {?}\n", .{@TypeOf(args_slice_list)});

    // Get count of arguments

    for (args_slice_list) |arg| {
        std.debug.print("{s}\n", .{arg});
        std.debug.print("TypeOf arg: {?}\n", .{@TypeOf(arg)});
    }
}
