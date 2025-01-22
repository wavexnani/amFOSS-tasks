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

## Requirements:

- Rust nightly
- Qemu

## Some pointers:

- The source code is located at the src/ directory
- The bulk of the incorrect code is primarily located at the following files:
  - main.rs
  - interrupts.rs
  - vga_buffer.rs
- The passcode is "amfoss"

## How to Start:

This guide will walk you through the setup process of the RuskOS kernel. Follow the steps below to install Rust (nightly), QEMU, and other necessary tools.

#### Step 1: Install Rust and Rustup

First, we need to install Rust and Rustup, the toolchain installer for Rust.

1. Open a terminal.
2. Install Rust and Rustup by running the following command:
   ```sh
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

#### Step 2: Install Rust Nightly

1. RuskOS requires the nightly version of Rust. Install it with the following commands:

   ```sh
   rustup toolchain install nightly
   ```

2. Set the default toolchain to nightly:

   ```sh
   rustup default nightly
   ```

#### Step 3: Install QEMU

1. QEMU is needed to emulate the hardware for running the RuskOS kernel.

- Update your package list:

  - On Ubuntu/Debian:
    ```sh
    sudo apt update
    ```
  - On Fedora:
    ```sh
    sudo dnf update
    ```
  - Install QEMU and related packages:

    - Debian/Ubuntu:

    ```sh
    sudo apt-get install qemu-system
    ```

  - Fedora:
    ```sh
    sudo dnf install @virtualization
    ```
    - MacOs:
      1. Install Homebrew if you haven't already:
         ```sh
         /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
         ```
      2. Install QEMU:
         ```sh
         brew install qemu
         ```

#### Step 4: Running the app

1. Clone the RuskOS Repository
   Clone the RuskOS repository to your local machine:
   ```sh
       git clone https://github.com/BiscuitBobby/ruskos-problem-repo.git
   ```
2. Navigate to the project directory:
   ```sh
       cd ruskos-problem-repo
   ```
   Remove the .git file
   ```sh
       ls -a
   ```
   ```sh
       rm -r .git
   ```
3. Install Bootimage:

   Bootimage is a tool that creates bootable disk images from your Rust kernel.

- Install Bootimage by running:
  ```sh
  cargo install bootimage
  ```

4. Add LLVM Tools Preview Component:

   LLVM tools are required for building the kernel.

- Add the LLVM tools component:
  ```sh
  rustup component add llvm-tools-preview
  ```

5. Build and Run the Kernel

- Build the kernel:
  ```sh
  cargo clean
  cargo build
  ```

6. Run the kernel using QEMU:
   ```sh
   cargo run
   ```

### Instructions

As of now by running the command `cargo run` you are going to see tomany errors, to resolve those errors you should follow this

#### Steps

1. Navigate to the project directory:

   ```sh
       cd ruskos-problem-repo
   ```

2. Navigate to the src folder:

   ```sh
       cd src
   ```

3. Open `gdt.rs` file and select all (`control+a`) delete all the code, then cleck on this link => [gdt.rs_code](https://github.com/wavexnani/amFOSS-tasks/blob/main/task-09/src/gdt.rs). select this code and past it in `gdt.rs` folder

4. Do the same for all other folders . Here are the links

- `interrupts.rs` => [interrupts.rs](https://github.com/wavexnani/amFOSS-tasks/blob/main/task-09/src/interrupts.rs)
- `lib.rs` => [lib.rs](https://github.com/wavexnani/amFOSS-tasks/blob/main/task-09/src/lib.rs)
- `main.rs` => [main.rs](https://github.com/wavexnani/amFOSS-tasks/blob/main/task-09/src/main.rs)
- `serial.rs` => [serial.rs](https://github.com/wavexnani/amFOSS-tasks/blob/main/task-09/src/serial.rs)
- `vga_buffer.rs` => [vga_buffer.rs](https://github.com/wavexnani/amFOSS-tasks/blob/main/task-09/src/vga_buffer.rs)

After adding all of this code in you repo, then try once again by running

```sh
    cargo build
```

and

```sh
    cargo run
```

I hope this will produce the output we discussed.

# Changes I have did

- After verifing my code hope you can find the updated syntax in my code.
- In the `vga_buffer.rs` file observe line 22 and 26, I replaced black with 0 and red with 4. Thats how i solved this.
- Keyboard port number
- You can see that in `interrupts.rs` file I comment out the lift shift function, but observe the line 113 I changed the index from ARRAY_SIZE - i - 2 to i

This is how i solved this task...
