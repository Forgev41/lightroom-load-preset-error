local LrApplication = import 'LrApplication'
local LrDialogs = import 'LrDialogs'
local LrTasks = import 'LrTasks'
 
--[[--------------------------------------------------------------------------
Name		inspect
Purpose		module for listing a table
Source		https://github.com/kikito/inspect.lua
----------------------------------------------------------------------------]]
local inspect = require 'inspect'

local myLogger = import 'LrLogger'( 'PresetTest' )
myLogger:enable( "logfile" )

--	Retrieve a specific preset
local function retrievePresetFromFile(presetName)
    local lrPresetFolders = LrApplication.developPresetFolders()
	
    for i, fo in ipairs( lrPresetFolders ) do
		
        local ps = fo:getDevelopPresets()
    
		for j, p in ipairs( ps ) do
			if p:getName() == presetName then
				return p
			end
        end
    end
end

LrTasks.startAsyncTask(function ()
  local catalog = LrApplication.activeCatalog()
 
  local photo = catalog:getTargetPhoto()
  if photo == nil then
    LrDialogs.message("Preset Error Demo", "Please select a photo")
    return
  end

  local presetName = "Exposure 0.50"
  local preset = retrievePresetFromFile(presetName)
	myLogger:info("Preset settings", inspect(preset:getSetting() ) )
  
  photo.catalog:withWriteAccessDo("Preset Error Demo", function()
    local preset = LrApplication.addDevelopPresetForPlugin(_PLUGIN, "Apply preset " .. presetName, preset:getSetting())
	
	myLogger:info("Photo settings before", inspect(photo:getDevelopSettings() ) )
    photo:applyDevelopPreset(preset, _PLUGIN)
	myLogger:info("Photo settings after", inspect(photo:getDevelopSettings() ) )
	
  end, {asynchronous = true})

end)