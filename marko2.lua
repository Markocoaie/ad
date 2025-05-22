local url = "https://raw.githubusercontent.com/Markocoaie/ad/refs/heads/main/marko.lua"  -- replace with your raw paste URL

local success, code = pcall(function()
    return game:HttpGet(url)
end)

if success and code then
    local func, loadError = loadstring(code)
    if func then
        func()
    else
        warn("Failed to load script: "..tostring(loadError))
    end
else
    warn("Failed to fetch script from URL")
end
