local ls = require("luasnip")
local snip = ls.snippet
local fmta = require("luasnip.extras.fmt").fmta

return {
  -- "hi" --> "hello, world!" 
  snip(
    { trig = "hi" },
    { t("Hello, world!") }
  ),
	
	-- meta snippet to create more snippets
 	snip(
    { trig = "snip" },
    fmta([[
		snip(
			<>
		)
		]], 
		{i(0)})
  ),
}
