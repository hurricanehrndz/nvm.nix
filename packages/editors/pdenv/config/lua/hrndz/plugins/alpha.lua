local status_ok, alpha = pcall(require, "alpha")
if not status_ok then return end
require("alpha.term")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  [[        /\          /\          /\       ]],
  [[     /\//\\/\    /\//\\/\    /\//\\/\    ]],
  [[  /\//\\\///\\/\//\\\///\\/\//\\\///\\/\ ]],
  [[ //\\\//\/\\///\\\//\/\\///\\\//\/\\///\\]],
  [[ \\//\/                            \/\\//]],
  [[  \/                                  \/ ]],
  [[  /\                                  /\ ]],
  [[ //\\          𝕟 𝕖 𝕠 𝕧 𝕚 𝕞         //\\]],
  [[ \\//               with             \\//]],
  [[  \/            LSP and DAP           \/ ]],
  [[  /\                                  /\ ]],
  [[ //\\/\                            /\//\\]],
  [[ \\///\\/\//\\\///\\/\//\\\///\\/\//\\\//]],
  [[  \/\\///\\\//\/\\///\\\//\/\\///\\\//\/ ]],
  [[      \/\\//\/    \/\\//\/    \/\\//\/   ]],
  [[         \/          \/          \/      ]],
}

dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
  local version_info = vim.fn.execute("version")
  local nvim_version = version_info:match("NVIM (v[%d%.%w%+%-]+)")
  local version_text = " " .. nvim_version
  -- Quote
  local fortune = require("alpha.fortune")
  local quote = table.concat(fortune(), "\n")

  return version_text .. "\n" .. quote
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts = {
  position = "center",
  hl = "Type",
}
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"
dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)
