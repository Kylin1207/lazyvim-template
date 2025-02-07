return {
  name = "LLVM Build",
  builder = function()
    return {
      cmd = "ninja",
      cwd = "/home/ira/workspace/llvm-project/build",
      args = {
        "-j16",
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
