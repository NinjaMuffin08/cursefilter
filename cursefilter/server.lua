Cursewords = {
	
	" paska",
	" paskoja",
	" vitun",
	" saatana",
	" vittu",
	" vituiks",
	" vitun",
	" vituttaa",
	" homo",
	" hintti",
	" hinttari",
	" runkkari",
	" autisti",
	" perkele"
	
}

function hasCurseWords(str)
	for i = 1, #Cursewords, 1 do
		if string.match(str, Cursewords[i]) then
			return true
		end
	end
	return false
end

AddEventHandler('chatMessage', function(source, name, msg)
  sm = stringsplit(msg, " ");
  if sm[1] == "/ooc" and hasCurseWords(msg) then
    CancelEvent()
	DropPlayer(source, "Autokick: OOC-Chatissa ei kiroilla. :/")
  end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

