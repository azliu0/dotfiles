return {
	require("luasnip").snippet(
		{ trig = "beg" },
		require("luasnip.extras.fmt").fmta([[
		\begin{<>}
		<>
		\end{<>}
    ]],
    { i(1), i(0), rep(1) }
    )
	),
}
