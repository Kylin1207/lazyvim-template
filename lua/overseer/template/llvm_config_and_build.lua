return {
  -- name = "LLVM Config And Build",
  -- builder = function()
  --   return {
  --     strategy = {
  --       "orchestrator",
  --       tasks = {
  --         "llvm_config",
  --         "llvm_build",
  --       },
  --     },
  --   }
  -- end,
  name = "LLVM Config And Build",
  builder = function()
    return {
      dependencies = {
        task_names = {
          "llvm_config",
          "llvm_build",
        },
        sequential = true,
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
