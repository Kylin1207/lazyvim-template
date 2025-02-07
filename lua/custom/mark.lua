local M = {}

local current_mark = 65

function M.add_global_mark()
  local mark = string.char(current_mark)
  vim.cmd("normal! m" .. mark)
  vim.notify("Added global mark " .. mark, vim.log.levels.INFO)
  current_mark = current_mark + 1
end

function M.delete_global_mark()
  if current_mark <= 65 then
    vim.notify("No marks to delete", vim.log.levels.WARN)
    return
  end
  current_mark = current_mark - 1
  local mark = string.char(current_mark)
  vim.cmd("delmarks " .. mark)
  vim.notify("Deleted global mark " .. mark, vim.log.levels.INFO)
end

function M.delete_all_global_marks()
  if current_mark <= 65 then
    vim.notify("No marks to delete", vim.log.levels.WARN)
    return
  end
  for i = current_mark - 1, 65, -1 do
    local mark = string.char(i)
    vim.cmd("delmarks " .. mark)
  end
  current_mark = 65
  vim.notify("All global marks deleted", vim.log.levels.INFO)
end

return M
