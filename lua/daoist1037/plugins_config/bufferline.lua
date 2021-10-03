return function()
  require('bufferline').setup({
    options = {
      show_buffer_icons = true,
      show_close_icon = false,
      show_buffer_close_icons = false,
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
        for e, n in pairs(diagnostics_dict) do
          local sym = e == "error" and "" or
                          (e == "warning" and "" or "")
          s = s .. sym .. n
        end
        return s
      end
      -- offsets = {{filetype = "NvimTree", text = "NvimTree"}}
    },
    highlights = {
        fill = {
            guifg = '#282c34',
            guibg = '#202328',
        },
        indicator_selected = {
            guifg = '#51afef',
            guibg = '#282c34'
        },
        --[[ background = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        tab = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        tab_selected = {
            guifg = tabline_sel_bg,
            guibg = '<color-value-here>'
        },
        tab_close = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        close_button = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        close_button_visible = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        close_button_selected = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        buffer_visible = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        buffer_selected = {
            guifg = normal_fg,
            guibg = '<color-value-here>',
            gui = "bold,italic"
        },
        diagnostic = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
        },
        diagnostic_visible = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
        },
        diagnostic_selected = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
            gui = "bold,italic"
        },
        info = {
            guifg = <color-value-here>,
            guisp = <color-value-here>,
            guibg = <color-value-here>
        },
        info_visible = {
            guifg = <color-value-here>,
            guibg = <color-value-here>
        },
        info_selected = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
            gui = "bold,italic",
            guisp = <color-value-here>
        },
        info_diagnostic = {
            guifg = <color-value-here>,
            guisp = <color-value-here>,
            guibg = <color-value-here>
        },
        info_diagnostic_visible = {
            guifg = <color-value-here>,
            guibg = <color-value-here>
        },
        info_diagnostic_selected = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
            gui = "bold,italic",
            guisp = <color-value-here>
        },
        warning = {
            guifg = <color-value-here>,
            guisp = <color-value-here>,
            guibg = <color-value-here>
        },
        warning_visible = {
            guifg = <color-value-here>,
            guibg = <color-value-here>
        },
        warning_selected = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
            gui = "bold,italic",
            guisp = <color-value-here>
        },
        warning_diagnostic = {
            guifg = <color-value-here>,
            guisp = <color-value-here>,
            guibg = <color-value-here>
        },
        warning_diagnostic_visible = {
            guifg = <color-value-here>,
            guibg = <color-value-here>
        },
        warning_diagnostic_selected = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
            gui = "bold,italic",
            guisp = warning_diagnostic_fg
        },
        error = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
            guisp = <color-value-here>
        },
        error_visible = {
            guifg = <color-value-here>,
            guibg = <color-value-here>
        },
        error_selected = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
            gui = "bold,italic",
            guisp = <color-value-here>
        },
        error_diagnostic = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
            guisp = <color-value-here>
        },
        error_diagnostic_visible = {
            guifg = <color-value-here>,
            guibg = <color-value-here>
        },
        error_diagnostic_selected = {
            guifg = <color-value-here>,
            guibg = <color-value-here>,
            gui = "bold,italic",
            guisp = <color-value-here>
        },
        modified = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        modified_visible = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        modified_selected = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>'
        },
        duplicate_selected = {
            guifg = '<color-value-here>',
            gui = "italic",
            guibg = '<color-value-here>'
        },
        duplicate_visible = {
            guifg = '<color-value-here>',
            gui = "italic",
            guibg = '<color-value-here>'
        },
        duplicate = {
            guifg = '<color-value-here>',
            gui = "italic",
            guibg = '<color-value-here>'
        },
        separator_selected = {
            guifg = '<color-value-here>,
            guibg = '<color-value-here>'
        },
        separator_visible = {
            guifg = '<color-value-here>,
            guibg = '<color-value-here>'
        },
        separator = {
            guifg = '<color-value-here>,
            guibg = '<color-value-here>'
        },
        pick_selected = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>',
            gui = "bold,italic"
        },
        pick_visible = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>',
            gui = "bold,italic"
        },
        pick = {
            guifg = '<color-value-here>',
            guibg = '<color-value-here>',
            gui = "bold,italic"
        } ]]
    }
  })
end
