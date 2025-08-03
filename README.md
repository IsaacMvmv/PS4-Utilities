# PS4-Utilities
Utilities I got for my ps4 / ps4linux instance

# What I have:
- [HDD_KEYS_python3.py](https://github.com/IsaacMvmv/PS4-Utilities/releases/tag/HDD_KEYS_python3): Script ported to python 3 which extracts the HDD key of a given sflash0 file.
- [PS4-mesa](https://github.com/IsaacMvmv/mesa-ps4): Mesa source for ps4linux which gives opengl & vulkan support on X11 and wayland
- [mesa25.1-installer.sh](https://github.com/IsaacMvmv/PS4-Utilities/blob/main/scripts/mesa25.1-installer.sh): A script which downloads a working mesa version with hopefully all it's dependencies, ideal if you update the whole system and forgot securing the custom mesa package.

It can be easily ran with:
```
curl -sSL https://raw.githubusercontent.com/IsaacMvmv/PS4-Utilities/main/scripts/mesa25.1-installer.sh | bash
```
