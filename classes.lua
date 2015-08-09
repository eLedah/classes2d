-- Hooks
addhook("serveraction","_serveraction")
addhook("menu","_menu")

classes = {
	[1] = {
		["UID"] = 1,
		["NAME"] = "Class1",
		["EQUIP"] = {1,2,3}
	},
	
	[2] = {
		["UID"] = 2
		["NAME"] = "Class2"
		["EQUIP"] = {45,83}
	}
}


-- SV ACTION
	function _serveraction(id,action)
		if action == 2 then 
			f2_menu(id)
		elseif action == 3 then
			f3_menu(id)
		end
	end
	
	function f2_menu(id)
		local tmp_text = ""
		for key,value in pairs(classes) do
			tmp_text = tmp_text..classes[key]["NAME"]..","
		end
		tmp_text = string.sub(tmp_text, string.len(tmp_text)-1)
		menu(id,tmp_text)
	end
	
	-- MENU
		function _menu(id,title,button)
		
		end

