local function texto(text)
	send_msg('channel#id'..1014258807, text, ok_cb, false)
end

local function run(msg, matches)
	if matches[2] == 'sudo' then
		if permissions(msg.from.id, msg.to.id, 'plugins') then
			texto('sudo')
		end
	elseif matches[2] == 'admin' then
		if permissions(msg.from.id, msg.to.id, 'gban') then
			texto('admin')
		end
	elseif matches[2] == 'mod' then
		if permissions(msg.from.id, msg.to.id, 'ban') then
			texto('mod')
		end
	elseif matches[2] == 'guest' then
		if permissions(msg.from.id, msg.to.id, 'rules') then
			texto('guest')
		end
	end
end

return {
    description = 'Add gbans into your bot. A gbanlist command.',
    usage = {},
    patterns = {
        "^#(test) (.*)$"
    },
    run = run
}