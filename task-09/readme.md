# Operation Kernel => (task-09)

As you can see, there is only the `src` folder and `outputcopy.gif` in this repository. This is because the complete set of task files is too large to be pushed to GitHub. Therefore, I only uploaded the `src` folder.

You can run and verify my code by following the instructions below. I have clearly mentioned how to set up my code on your devices.

## Objectives:

- Resolve the syntax errors
- Change the background color to black and text color to yellow
- Correct the keyboard port address to correct port address for the x86 architecture
- Correct the inverted text input

  - `All this objectives are done`

## My output:

![output](https://github.com/wavexnani/amFOSS-tasks/blob/main/task-09/output.gif)

# Changes I have did

- After verifying my code, I hope you can find the updated syntax in it.
- In the `vga_buffer.rs` file, observe lines `22` and `26`. I replaced `black` with `0` and `red` with `4`. That's how I resolved this issue.
- Updated the keyboard port number.
- In the `interrupts.rs` file, I commented out the `left shift` function. However, on line [113](https://github.com/wavexnani/amFOSS-tasks/blob/main/task-09/src/interrupts.rs), I changed the [index](https://github.com/wavexnani/amFOSS-tasks/blob/main/task-09/src/interrupts.rs) from `ARRAY_SIZE - i - 2` to `i`.

This is how I solved this task.

## Some pointers:

- The source code is located at the src/ directory
- The bulk of the incorrect code is primarily located at the following files:
  - main.rs
  - interrupts.rs
  - vga_buffer.rs
- The passcode is "amfoss"

After adding all of this code in my repo, then try once again by running

```sh
cargo build
```

and

```sh
cargo run
```

This produce the output you discussed.
