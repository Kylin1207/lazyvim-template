return {
  name = "LLVM Config",
  builder = function()
    return {
      cmd = "cmake",
      -- cwd = vim.fn.expand("%:p:h"),
      -- cwd = "${workspacefolder}",
      cwd = "/home/ira/workspace/llvm-project",
      args = {
        "-G",
        "Ninja",
        "-DCMAKE_EXPORT_COMPILE_COMMANDSE_BUILD_TYPE=Debug",
        "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON",
        "-DLLVM_ENABLE_PROJECTS=clang",
        '-DLLVM_TARGETS_TO_BUILD="X86;RISCV"',
        "-DLVMM_EXPERIMENTAL_TARGETS_TO_BUILD=TinyRISCV",
        "-DLLVM_USE_LINKER=lld",
        "-DLLVM_ENABLE_ASSERTIONS=ON",
        "-B",
        "build",
        "-S",
        "llvm",
      },
      components = {
        "display_duration",
        "on_exit_set_status",
        "on_complete_notify",
        "on_output_summarize",
      },
    }
  end,
}
