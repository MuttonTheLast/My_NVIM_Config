

-- Path to userdata.json inside Neovim's data directory
local config_file = vim.fn.stdpath("data") .. "/userdata.json"

-- Internal cache
local cache_data = {}

-- Load JSON file into cache
local function load()
    local f = io.open(config_file, "r")
    if f then
        local content = f:read("*a")
        f:close()
        local ok, decoded = pcall(vim.json.decode, content)
        if ok and type(decoded) == "table" then
            cache_data = decoded
        else
            cache_data = {}
        end
    else
        cache_data = {}
    end
end

-- Save cache back to JSON file
local function save()
    local f = io.open(config_file, "w")
    if f then
        f:write(vim.json.encode(cache_data))
        f:close()
    end
end

-- Public API
function getElementData(key)
    if key then
        return cache_data[key]
    end
    return nil
end

function setElementData(key, value, saveit)
    
    cache_data[key] = value
    if saveit and saveit == true then
        save()
    end
end

function delElementData(key, saveit)
    cache_data[key] = nil
    
    if saveit and saveit == true then
        save()
    end
end

function saveElements()
    save()
end

-- Initialize cache when module loads
load()

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    config._save()
  end,
})
