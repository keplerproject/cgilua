-- $Id: test_main.lua,v 1.1 2004/03/25 19:31:05 tomas Exp $
if ap then handler = ap.handler() end
cgilua.htmlheader()
for i,v in pairs (cgi) do
	if type(v) == "table" then
		local vv = "{"
		for a,b in pairs(v) do
			vv = string.format ("%s%s = %s<br>\n", vv, a, tostring(b))
		end
		v = vv.."}"
	end
	cgilua.put (string.format ("%s = %s<br>\n", i, tostring(v)))
end
cgilua.put"<br>\n"
cgilua.put("ap="..tostring(ap).."<br>\n")
cgilua.put("lfcgi="..tostring(lfcgi).."<br>\n")
if handler then cgilua.put(handler) end