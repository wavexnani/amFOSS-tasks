# Compute Shader Task

This task was particularly fascinating because it combined my passion for 3D visualization and learning how to leverage compute shaders for high-performance rendering.

## Challenges Faced and My Journey

### 1. Setting Up Vulkan on macOS

- I initially started by following a tutorial to set up Vulkan on macOS using Xcode.
- During this process, I discovered that Vulkan is not natively supported on macOS. Instead, I had to use MoltenVK, a Vulkan implementation layered over Metal, to make Vulkan work.

### 2. Exploring Alternatives with Linux

- Due to the limitations of macOS, I decided to install Linux to create a suitable Vulkan development environment:

  - Attempt with UTM: I installed Linux (Ubuntu) using UTM, but soon ran into issues. The 3D GPU acceleration was not supported properly in the virtualized environment, making Vulkan development impossible.

  - Switch to VirtualBox: I then tried VirtualBox to virtualize Linux. Although I successfully set up the Vulkan environment, I encountered:

    - Glitches in the Vulkan application windows.
    - My system performance deteriorated significantly, making it impractical to continue development on my Mac.

### 3. Borrowing a Friend's Laptop

- Recognizing the hardware limitations of my Mac, I borrowed a friend’s laptop with better specifications and:
  - Installed Linux.
  - Set up the Vulkan environment successfully.
  - Began working on a small Vulkan instance project based on tutorials I followed.

### 4. Roadblock: Validation Layers

- While trying to implement Validation Layers (essential for debugging and error checking in Vulkan), I hit a roadblock:
  - The Validation Layers were not being created or loaded in my project despite multiple attempts.
  - This halted my progress, as validation layers are critical to ensure the correctness of Vulkan code.

## Lessons Learned

- Vulkan on macOS is tricky: MoltenVK is a workaround, but for serious Vulkan development, Linux or Windows is a better choice.
- Hardware requirements matter: Developing Vulkan applications requires robust GPU and system resources. Virtualized environments often struggle to provide the necessary GPU support.
- Validation Layers are crucial: They help catch mistakes in Vulkan applications and are a must for debugging, but setting them up can be complex.

## Current Status

- I successfully set up the Vulkan environment and started working on a Vulkan instance project on my friend's laptop.
- However, I am stuck on implementing the Validation Layers and need to resolve this issue before proceeding further.
