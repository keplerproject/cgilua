cgilua.htmlheader ()
cgilua.put ("<h1>Testing Filesystem library</h1>\n")
cgilua.put ("<table>\n<tr><td colspan=2>Testing <b>dirlist</b></td></tr>\n")
dir_t = filesystem.dirlist("/usr/local/cgilua")
for i = 1, table.getn(dir_t) do
	cgilua.put ("<tr><td>"..i.."</td><td>"..dir_t[i].."</td></tr>\n")
end
cgilua.put ("<tr><td colspan=2>Testing <b>dir</b></td></tr>\n")
local i = 0
for file in filesystem.dir ("/usr/local/cgilua") do
	i = i+1
	cgilua.put ("<tr><td>"..i.."</td><td>"..file.."</td></tr>\n")
end
cgilua.put ("</table>\n")