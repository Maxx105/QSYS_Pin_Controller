json = require("rapidjson")

-- Controls
local pinNames = Controls["PinNames"]
local pin = Controls["Pin"]
local newPinName = Controls["NewPinName"]
local newPinPin = Controls["NewPinPin"]
local createPin = Controls["CreatePin"]
local status = Controls["Status"]
local initTimer = Timer.New()

local pinData = {}
local newPinData = ""

function setPinNamesTbl(data)
  local pinNamesTbl = {}
  for i, v in ipairs(data) do 
    table.insert(pinNamesTbl, v.name)
  end
  pinNames.Choices = pinNamesTbl
end

function setError(code, data)
  if code ~= 200 and code ~= 204 then 
    status.String = json.decode(data).code..": "..json.decode(data).message
  end
end

function handleGet(tbl, code, d, e) 
  print(string.format("Response Code for GET: %i\t\tErrors: %s\rData: %s",code, e or "None", d))
  setError(code, d)
  pinData = json.decode(d).items
  setPinNamesTbl(pinData)
end

function handlePost(tbl, code, d, e)
  print(string.format("Response Code for POST: %i\t\tErrors: %s\rData: %s",code, e or "None", d))
  setError(code, d)
  getPinData()
end

function getIndexInTable(tbl, val)
  local index={}
  for k,v in pairs(tbl) do
    index[v]=k
  end
  return index[val]
end

function setPin()
  local index = getIndexInTable(pinNames.Choices, pinNames.String)
  pin.String = pinData[index].pin
end

function clearStatus()
  status.String = ""
end

--http
function getPinData() 
  HttpClient.Download { 
    Url = "http://127.0.0.1/api/v0/systems/1/ucis/pins", 
    Headers = { ["Content-Type"] = "application/json" } , 
    Timeout = 5, 
    EventHandler = handleGet
  }
end

function postPinData(data) 
  newPinName.String = ""
  newPinPin.String = ""
  HttpClient.Upload { 
    Url = "http://127.0.0.1/api/v0/systems/1/ucis/pins", 
    Method = "POST",
    Headers = { 
      ["Content-Type"] = "application/json"
    }, 
    Timeout = 5, 
    Data = data,
    EventHandler = handlePost
  }
end

pinNames.EventHandler = setPin
createPin.EventHandler = function ()
  if newPinName.String ~= "" and newPinPin.String ~= "" then
    print("Pin added!")
    status.String = "Pin added!"
    postPinData(json.encode({{
      name = newPinName.String,
      pin = newPinPin.String
    }}))
    else 
      print("Please enter new pin name and string")
      status.String = "Please enter new pin name and string"
  end
end

initTimer:Start(3)
initTimer.EventHandler = function()
  initTimer:Stop()
  getPinData()
end

clearStatus()
