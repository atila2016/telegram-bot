local function run(msg)
if permissions(msg.from.id, msg.to.id, "gban_installer") then
gban_id(172767635)
gban_id(164340906)
gban_id(127039864)
gban_id(165913691)
gban_id(91054649)
gban_id(151590904)
gban_id(67018895)
gban_id(166904913)
gban_id(118682430)
gban_id(81578020)
    if msg.to.type == 'chat' then
        send_msg('chat#id'..msg.to.id, '10 accounts globally banned. ☠', ok_cb, false)
    elseif msg.to.type == 'channel' then
        send_msg('channel#id'..msg.to.id, '10 accounts globally banned. ☠', ok_cb, false)
    end
    else
        return '🚫 '..lang_text(msg.to.id, 'require_sudo')
    end
end

    return {
        description = 'Add gbans into your bot. A gbanlist command.',
        usage = {},
        patterns = {
            "^#(install) (gbans)$"
        },
        run = run
    }
