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
		fmta([[$<>$<>]], {i(1), i(0)})
	),

	-- automatic frac expansion
	snip(
		{ trig = "frac" },
		fmta([[\frac{<>}{<>}<>]], { i(1), i(2), i(0) })
	),

	-- automatic centering mode expansion
	snip(
		{ trig = "\\[" },
		fmta([[\[<>\] ]], {i(0)})
	),
	
	-- italics
	snip(
		{ trig = "it" },
		fmta([[\textit{<>}]], {i(0)})
	),

	-- align environment
	snip(
		{ trig = "align" },
		fmta([[
		\begin{align*}
		<>
		\end{align*}
		]],
		{ i(0) }
		)
	),

	-- itemize environment
	snip(
		{ trig = "itemize" },
		fmta([[
		\begin{itemize}
			\item <>
		\end{itemize}
		]],
		{ i(0) }
		)
	),

	-- enumerate environment
	snip(
		{ trig = "enumerate" },
		fmta([[
		\begin{enumerate}
			\item <>
		\end{enumerate}
		]],
		{ i(0) }
		)
	),

	-- thm environment
	snip(
		{ trig = "thm" },
		fmta([[
		\begin{theorem}
		\thmlabel

		<>
		\end{theorem}
		]],
		{ i(0) }
		)
	),

	-- cor environment
	snip(
		{ trig = "cor" },
		fmta([[
		\begin{theorem}
		\corlabel

		<>
		\end{theorem}
		]],
		{ i(0) }
		)
	),

	-- lem environment
	snip(
		{ trig = "lem" },
		fmta([[
		\begin{theorem}
		\lemlabel

		<>
		\end{theorem}
		]],
		{ i(0) }
		)
	),

	-- prop environment
	snip(
		{ trig = "prop" },
		fmta([[
		\begin{theorem}
		\proplabel

		<>
		\end{theorem}
		]],
		{ i(0) }
		)
	),

	-- claim environment
	snip(
		{ trig = "claim" },
		fmta([[
		\begin{theorem}
		\claimlabel

		<>
		\end{theorem}
		]],
		{ i(0) }
		)
	),
	

	-- ex environment
	snip(
		{ trig = "ex" },
		fmta([[
		\begin{example}
		\exlabel

		<>
		\end{example}
		]],
		{ i(0) }
		)
	),

	-- def environment
	snip(
		{ trig = "def" },
		fmta([[
		\begin{definition}
		\deflabel

		<>
		\end{definition}
		]],
		{ i(0) }
		)
	),

	
	-- proof environment
	snip(
		{ trig = "proof" },
		fmta([[
		\begin{proof}
		<>
		\end{proof}
		]],
		{ i(0) }
		)
	),
	
	-- section 
	snip(
		{ trig = "sec" },
		fmta([[\section{<>}]], {i(0)})
	),
	
	-- subsection
	snip(
		{ trig = "subsec" },
		fmta([[\subsection{<>}]], {i(0)})
	),

	-- subsubsection
	snip(
		{ trig = "subsubsec" },
		fmta([[\subsubsection{<>}]], {i(0)})
	),

	-- wide parens
	snip(
		{ trig = "\\left(" },
		fmta([[\left(<>\right)<>]], {i(1), i(0)})
	),

	-- wide brackets
	snip(
		{ trig = "\\left[" },
		fmta([[\left[<>\right]<>]], {i(1), i(0)})
	),

	-- asy environment
	snip(
		{ trig = "asy" },
		fmta([[
		\begin{asy}
		<>
		\end{asy}
		]],
		{ i(0) }
		)
	),

	-- begin center environment
	snip(
		{ trig = "center" },
		fmta([[
		\begin{center}
		<>
		\end{center}
		]],
		{ i(0) }
		)
	),

	-- begin cases environment
	snip(
		{ trig = "cases" },
		fmta([[
		\begin{cases}
		<>
		\end{cases}
		]],
		{ i(0) }
		)
	),

	-- mathcal expansion no math mode
	snip(
		{ trig = "cal" },
		fmta([[\mathcal{<>}<>]], {i(1), i(0)})
	),

	-- mathcal expansion math mode
	snip(
		{ trig = "mcal" },
		fmta([[$\mathcal{<>}$<>]], {i(1), i(0)})
	),
}
