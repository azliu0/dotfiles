local ls = require("luasnip")
local snip = ls.snippet
local fmta = require("luasnip.extras.fmt").fmta
local i = ls.insert_node

-- Begin/End environment
local begin_end_env = snip(
    { trig = "beg" },
    fmta(
        [[
        \begin{<>}
        <>
        \end{<>}
        ]],
        { i(1), i(0), rep(1) }
    )
)

-- Automatic $$ expansion
local dollar_expansion = snip(
    { trig = "$" },
    fmta(
        [[$<>$<>]],
        { i(1), i(0) }
    )
)

-- Automatic frac expansion
local frac_expansion = snip(
    { trig = "frac" },
    fmta(
        [[\frac{<>}{<>}<>]],
        { i(1), i(2), i(0) }
    )
)

-- Automatic centering mode expansion
local centering_mode = snip(
    { trig = "\\[" },
    fmta(
        [[\[<>\] ]],
        { i(0) }
    )
)

-- Italics
local italics = snip(
    { trig = "it" },
    fmta(
        [[\textit{<>}]],
        { i(0) }
    )
)

-- Align environment
local align_env = snip(
    { trig = "align" },
    fmta(
        [[
        \begin{align*}
        <>
        \end{align*}
        ]],
        { i(0) }
    )
)

-- Itemize environment
local itemize_env = snip(
    { trig = "itemize" },
    fmta(
        [[
        \begin{itemize}
            \item <>
        \end{itemize}
        ]],
        { i(0) }
    )
)

-- Enumerate environment
local enumerate_env = snip(
    { trig = "enumerate" },
    fmta(
        [[
        \begin{enumerate}
            \item <>
        \end{enumerate}
        ]],
        { i(0) }
    )
)

-- Theorem environment
local theorem_env = snip(
    { trig = "thm" },
    fmta(
        [[
        \begin{theorem}
        \thmlabel
        <>
        \end{theorem}
        ]],
        { i(0) }
    )
)

-- Corollary environment
local corollary_env = snip(
    { trig = "cor" },
    fmta(
        [[
        \begin{corollary}
        \corlabel
        <>
        \end{corollary}
        ]],
        { i(0) }
    )
)

-- Lemma environment
local lemma_env = snip(
    { trig = "lem" },
    fmta(
        [[
        \begin{lemma}
        \lemlabel
        <>
        \end{lemma}
        ]],
        { i(0) }
    )
)

-- Proposition environment
local proposition_env = snip(
    { trig = "prop" },
    fmta(
        [[
        \begin{proposition}
        \proplabel
        <>
        \end{proposition}
        ]],
        { i(0) }
    )
)

-- Claim environment
local claim_env = snip(
    { trig = "claim" },
    fmta(
        [[
        \begin{claim}
        \claimlabel
        <>
        \end{claim}
        ]],
        { i(0) }
    )
)

-- Example environment
local example_env = snip(
    { trig = "ex" },
    fmta(
        [[
        \begin{example}
        \exlabel
        <>
        \end{example}
        ]],
        { i(0) }
    )
)

-- Definition environment
local definition_env = snip(
    { trig = "def" },
    fmta(
        [[
        \begin{definition}
        \deflabel
        <>
        \end{definition}
        ]],
        { i(0) }
    )
)

-- Proof environment
local proof_env = snip(
    { trig = "proof" },
    fmta(
        [[
        \begin{proof}
        <>
        \end{proof}
        ]],
        { i(0) }
    )
)

-- Section
local section = snip(
    { trig = "sec" },
    fmta(
        [[\section{<>}]],
        { i(0) }
    )
)

-- Subsection
local subsection = snip(
    { trig = "subsec" },
    fmta(
        [[\subsection{<>}]],
        { i(0) }
    )
)

-- Subsubsection
local subsubsection = snip(
    { trig = "subsubsec" },
    fmta(
        [[\subsubsection{<>}]],
        { i(0) }
    )
)

-- Wide parentheses
local wide_parens = snip(
    { trig = "\\left(" },
    fmta(
        [[\left(<>\right)<>]],
        { i(1), i(0) }
    )
)

-- Wide brackets
local wide_brackets = snip(
    { trig = "\\left[" },
    fmta(
        [[\left[<>\right]<>]],
        { i(1), i(0) }
    )
)

-- Asymptote environment
local asymptote_env = snip(
    { trig = "asy" },
    fmta(
        [[
        \begin{asy}
        <>
        \end{asy}
        ]],
        { i(0) }
    )
)

-- Center environment
local center_env = snip(
    { trig = "center" },
    fmta(
        [[
        \begin{center}
        <>
        \end{center}
        ]],
        { i(0) }
    )
)

-- Cases environment
local cases_env = snip(
    { trig = "cases" },
    fmta(
        [[
        \begin{cases}
        <>
        \end{cases}
        ]],
        { i(0) }
    )
)

-- Mathcal expansion no math mode
local mathcal_expansion = snip(
    { trig = "cal" },
    fmta(
        [[\mathcal{<>}<>]],
        { i(1), i(0) }
    )
)

-- Mathcal expansion math mode
local mathcal_math_mode = snip(
    { trig = "mathcal" },
    fmta(
        [[$\mathcal{<>}$<>]],
        { i(1), i(0) }
    )
)

-- Return all snippets in a table
return {
    begin_end_env,
    dollar_expansion,
    frac_expansion,
    centering_mode,
    italics,
    align_env,
    itemize_env,
    enumerate_env,
    theorem_env,
    corollary_env,
    lemma_env,
    proposition_env,
    claim_env,
    example_env,
    definition_env,
    proof_env,
    section,
    subsection,
    subsubsection,
    wide_parens,
    wide_brackets,
    asymptote_env,
    center_env,
    cases_env,
    mathcal_expansion,
    mathcal_math_mode
}

