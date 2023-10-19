local ls = require("luasnip")
local snip = ls.snippet
local fmta = require("luasnip.extras.fmt").fmta

return {
	-- begin/end environment	
	snip(
		{ trig = "beg" },
		fmta([[
		\begin{<>}
		<>
		\end{<>}
		]],
		{ i(1), i(0), rep(1) }
		)
	),

	-- automatic $$ expansion
	snip(
		{ trig = "$" },
		fmta([[$<>$]], {i(0)})
	),

	-- automatic frac expansion
	snip(
		{ trig = "frac" },
		fmta([[\frac{<>}{}]], {i(0)})
	),

	-- automatic centering mode expansion
	snip(
		{ trig = "\\[" },
		fmta([[\[<>\] ]], {i(0)})
	),
}
