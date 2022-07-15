function format_checked(active_client)
  if active_client.supports_method("textDocument/formatting") then
    vim.lsp.buf.format({
      timeout_ms = 3000, -- NOTE: Ignored if async is true.
      async = true,
      bufnr = buffer,
      filter = function(clients)
        return vim.tbl_filter(function(client)
          if vim.bo.filetype == "lua" then
            if client.name == "sumneko_lua" then
              return false
            end
            return client.name == "null-ls"
          end
          if client.name == "pyright" then
            return false
          end
          return true
        end, clients)
      end,
    })
  end
end

function toggle_auto_save()
  if #vim.lsp.get_active_clients() == 0 then
    vim.api.nvim_notify("No LSP clients are attatched!", vim.log.levels.WARN, {
      icon = "",
      title = "LSP",
    })
    return
  end

  if not _G.auto_format_state then
    _G.auto_format_state = vim.api.nvim_create_autocmd("BufWritePost", {
      callback = vim.schedule_wrap(function()
        format_checked(vim.lsp.get_active_clients()[1])
      end),
    })
    vim.api.nvim_notify("Autosave is ON.", vim.log.levels.INFO, {
      icon = "",
      title = "LSP",
    })
  else
    vim.api.nvim_del_autocmd(_G.auto_format_state)
    _G.auto_format_state = nil
    vim.api.nvim_notify("Autosave is OFF.", vim.log.levels.INFO, {
      icon = "",
      title = "LSP",
    })
  end
end

vim.api.nvim_create_user_command("ToggleAutoSave", toggle_auto_save, {})
