local ls = require("luasnip")
local snip = ls.snippet
local fmta = require("luasnip.extras.fmt").fmta

local hello_world = snip(
	{ trig = "hi" },
	{ t("Hello, world!") }
)

local snip_factory = snip(
	{ trig = "snip" },
	fmta([[
	snip(
	<>
	)
	]], 
	{i(0)})
)

return {
	hello_world,
	snip_factory
}
