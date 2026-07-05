function CustomColorSetup(color)
    color = color or "carbonfox"
    color = vim.trim(color)
    if (color) then
        vim.cmd("colorscheme " .. color)
        setElementData("colorscheme", color, true)
    end
    --[[
    -- transparent background
    local groups = {
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
        'EndOfBuffer',
    }
    for i,v in ipairs(groups) do
        vim.api.nvim_set_hl(0, v, { bg = 'none' })
    end]]
end

local colorCounter = tonumber(getElementData("colorCounter"))
if not colorCounter then
    setElementData("colorCounter", 1);
    colorCounter = 1;
else
    colorCounter = colorCounter - 1;
end

local colors = {
    "rose-pine",
    -- catppuccin
    "catppuccin",
    -- "catppuccin-latte", -- fuck it was light my eyes
    "catppuccin-frappe",
    "catppuccin-macchiato",
    "catppuccin-mocha",
    -- fox
    "nightfox",
    "duskfox",
    "nordfox",
    "terafox",
    "carbonfox",
    -- tokyo
    "tokyonight-night",
    "tokyonight-storm",
    "tokyonight-moon",
    -- kanagawa
    "kanagawa-wave",
    "kanagawa-dragon",
    -- "kanagawa-lotus", -- flashbang
    -- vs code. its good for some languages.
    "vscode"

}
function SetColor(data)
    data = data or 1
    if tonumber(data) then -- if data is number
        data = (data > #colors or data < 1) and 1 or data
        CustomColorSetup(colors[data])
        print("Color Changed: " .. colors[data] .. " - " .. data .. "/" .. #colors)
        colorCounter = data
        setElementData("colorCounter", colorCounter)
    else
        CustomColorSetup(data)
    end
end

function SetNextColor()
    colorCounter = (colorCounter % #colors) + 1
    SetColor(colorCounter)
end

function SetPrevColor()
    colorCounter = ((colorCounter - 2 + #colors) % #colors) + 1
    SetColor(colorCounter)
end

local scheme = getElementData("colorscheme")
if not scheme then
    setElementData("colorscheme", "carbonfox")
    scheme = "carbonfox"
end
CustomColorSetup(scheme)
