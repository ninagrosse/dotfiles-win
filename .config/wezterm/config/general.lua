-- This is the module table that we will export
local module = {}

-- define a function in the module table.
-- Only functions defined in `module` will be exported to
-- code that imports this module.
-- The suggested convention for making modules that update
-- the config is for them to export an `apply_to_config`
-- function that accepts the config object, like this:
function module.apply_to_config(config)
  config.automatically_reload_config = true
  config.exit_behavior = 'CloseOnCleanExit' -- if the shell program exited with a successful status
  config.exit_behavior_messaging = 'Verbose'
  config.status_update_interval = 1000

  config.scrollback_lines = 20000

  config.hyperlink_rules = {
     -- Matches: a URL in parens: (URL)
     {
        regex = '\\((\\w+://\\S+)\\)',
        format = '$1',
        highlight = 1,
     },
     -- Matches: a URL in brackets: [URL]
     {
        regex = '\\[(\\w+://\\S+)\\]',
        format = '$1',
        highlight = 1,
     },
     -- Matches: a URL in curly braces: {URL}
     {
        regex = '\\{(\\w+://\\S+)\\}',
        format = '$1',
        highlight = 1,
     },
     -- Matches: a URL in angle brackets: <URL>
     {
        regex = '<(\\w+://\\S+)>',
        format = '$1',
        highlight = 1,
     },
     -- Then handle URLs not wrapped in brackets
     {
        regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
        format = '$0',
     },
     -- implicit mailto link
     {
        regex = '\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b',
        format = 'mailto:$0',
     },
  }
end

-- return our module table
return module
