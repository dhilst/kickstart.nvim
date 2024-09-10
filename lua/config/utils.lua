local function find_link(text)
  return text:match '(https?://[a-zA-Z0-9_./]*)'
end

function open_url_ln()
  local link = find_link(vim.api.nvim_get_current_line())
  if link ~= nil then
    vim.cmd(string.format('exec "silent !firefox %s"', link))
  else
    vim.cmd "echo 'No link found'"
  end
end

vim.keymap.set('n', '<leader>ou', open_url_ln, { desc = '[O]pen [U]RL on line' })
-- https://bsky.app
