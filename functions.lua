local seconds = 0

local function format_time(s)
    local hours = math.floor(s / 3600)
    local minutes = math.floor((s % 3600) / 60)
    local seconds = s % 60
    return string.format("%02d:%02d:%02d", hours, minutes, seconds)
end

local function start_timer()
    while true do
        print(format_time(seconds))
        seconds = seconds + 1
        os.execute("sleep 1")
    end
end

start_timer()
