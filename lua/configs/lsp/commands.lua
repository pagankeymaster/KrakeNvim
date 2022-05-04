local M = {}
---@diagnostic disable: unused-local

local neovim = require "utils.neovim"
local alias = neovim.alias
local buf_alias = neovim.buf_alias
local lsp = vim.lsp

function M.setup(client, buffer)
  buf_alias(buffer, "Format", vim.schedule_wrap(lsp.buf.formatting_sync))
  buf_alias(buffer, "FormatSeq", vim.schedule_wrap(lsp.buf.formatting_seq_sync))

  if vim.bo.filetype == "java" then
    buf_alias(buffer, "JDTCompile", function(args)
      require("jdtls").compile(args.fargs)
    end, { nargs = "?", complete = require("jdtls")._complete_compile, force = true })
    buf_alias(buffer, "JDTSetRuntime", function(args)
      require("jdtls").set_runtime(args.fargs)
    end, { nargs = "?", complete = require("jdtls")._complete_set_runtime, force = true })

    buf_alias(buffer, "JDTUpdateProjectConfig", require("jdtls").update_project_config)
    buf_alias(buffer, "JDTJol", require("jdtls").jol)
    buf_alias(buffer, "JDTBytecode", require("jdtls").javap)
    buf_alias(buffer, "JDTJshell", require("jdtls").jshell)

    buf_alias(buffer, "JDTOrganizeImports", require("jdtls").organize_imports)
    buf_alias(buffer, "JDTExtractVariable", require("jdtls").extract_variable)
    buf_alias(buffer, "JDTExtractConstant", require("jdtls").extract_constant)

    buf_alias(buffer, "JDTExtractVariableTrue", function()
      require("jdtls").extract_variable(true)
    end)
    buf_alias(buffer, "JDTExtractConstantTrue", function()
      require("jdtls").extract_constant(true)
    end)
    buf_alias(buffer, "JDTExtractMethod", function()
      require("jdtls").extract_method(true)
    end)
  end
end

return M

-- vim:ft=lua
