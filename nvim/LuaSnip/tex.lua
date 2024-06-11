return {
    s({trig=";bp", snippetType="autosnippet"},
        fmt(
            [[ 
                \documentclass{article}

                \usepackage{amssymb}
                \usepackage{amsmath}
                \usepackage{gensymb}
                \usepackage{amsthm}
                \usepackage{enumerate}
                
                \newtheorem*{proof*}{Proof}
                \newtheorem{lemma}{Lemma}
                \newtheorem{theorem}{Theorem}

                \title{<>}
                \author{Harrex Upston, u7925237}

                \begin{document}
                \maketitle
                \section*{Collaboration Statement}
                \pagebreak
                \section*{<>}
                    <>
                \end{document}
            ]],
        {i(1), i(2), i(3)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";in", snippetType="autosnippet"},
        fmt(
            [[ 
                \int_{<>}^{<>}
            ]],
        {i(1), i(2)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";sm", snippetType="autosnippet"},
        fmt(
            [[ 
                \sum_{<>}^{<>}
            ]],
        {i(1), i(2)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";fr", snippetType="autosnippet"},
        fmt(
            [[ 
                \frac{<>}{<>}
            ]],
        {i(1), i(2)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";rt", snippetType="autosnippet"},
        fmt(
            [[ 
                \sqrt{<>}<>
            ]],
        {i(1), i(2)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";lf", snippetType="autosnippet"},
        fmt(
            [[ 
                \left(<>\right)
            ]],
        {i(1)},
        {delimiters = "<>"}
        )
    ),


    s({trig=";bm", snippetType="autosnippet"},
        fmt(
            [[ 
            \begin{bmatrix}
            <>
            \end{bmatrix}
            ]],
        {i(1)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";bn", snippetType="autosnippet"},
        fmt(
            [[ 
            \begin{bmatrix} <> \end{bmatrix}
            ]],
        {i(1)},
        {delimiters = "<>"}
        )
    ),
    s({trig=";al", snippetType="autosnippet"},
        fmt(
            [[ 
                $$
                \begin{aligned}
                    <>
                \end{aligned}
                $$
            ]],
        {i(1)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";ma", snippetType="autosnippet"},
        fmt(
            [[ 
                $$
                <>
                $$
            ]],
        {i(1)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";lm", snippetType="autosnippet"},
        fmt(
            [[ 
            \begin{lemma} <>
                \begin{proof*} <>
                $$
                    \begin{aligned}
                    <>
                    \end{aligned}
                $$
                \qed
                \end{proof*}
            \end{lemma}
            ]],
        {i(1), i(2), i(3)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";pf", snippetType="autosnippet"},
        fmt(
            [[ 
                \begin{proof*} <>
                    $$
                    \begin{aligned}
                        <>
                    \end{aligned}
                    $$
                    \qed
                \end{proof*}
            ]],
        {i(1), i(2)},
        {delimiters = "<>"}
        )
    ),

    s({trig=";bg", snippetType="autosnippet"},
        fmt(
            [[ 
                $$
                \begin{<>}
                    <>
                \end{<>}
                $$
            ]],
        {i(1), i(2), rep(1)},
        {delimiters = "<>"}
        )
    ),
    




   ---------------------------------------------
   --------------- Greek Letters ---------------
   ---------------------------------------------

    s({trig=";ga", snippetType="autosnippet"},
        fmt(
            [[ 
                \alpha 
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gb", snippetType="autosnippet"},
        fmt(
            [[ 
                \beta
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gc", snippetType="autosnippet"},
        fmt(
            [[
                \chi
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gd", snippetType="autosnippet"},
        fmt(
            [[
                \delta
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";ge", snippetType="autosnippet"},
        fmt(
            [[
                \varepsilon
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gf", snippetType="autosnippet"},
        fmt(
            [[
                \phi
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gg", snippetType="autosnippet"},
        fmt(
            [[
                \gamma
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gh", snippetType="autosnippet"},
        fmt(
            [[
                \eta
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gi", snippetType="autosnippet"},
        fmt(
            [[
                \iota
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gk", snippetType="autosnippet"},
        fmt(
            [[
                \kappa
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gl", snippetType="autosnippet"},
        fmt(
            [[
                \lambda
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gm", snippetType="autosnippet"},
        fmt(
            [[
                \mu
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gn", snippetType="autosnippet"},
        fmt(
            [[
                \nu
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gp", snippetType="autosnippet"},
        fmt(
            [[
                \pi
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gps", snippetType="autosnippet"},
        fmt(
            [[
                \psi
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gr", snippetType="autosnippet"},
        fmt(
            [[
                \rho
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gs", snippetType="autosnippet"},
        fmt(
            [[
                \sigma
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gt", snippetType="autosnippet"},
        fmt(
            [[
                \tau
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";g t", snippetType="autosnippet"},
        fmt(
            [[
                \theta
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gu", snippetType="autosnippet"},
        fmt(
            [[
                \upsilon
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gw", snippetType="autosnippet"},
        fmt(
            [[
                \omega
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gx", snippetType="autosnippet"},
        fmt(
            [[
                \xi
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=";gz", snippetType="autosnippet"},
        fmt(
            [[
                \zeta
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    -- Capital Greek Letters
        
    s({trig=":GD", snippetType="autosnippet"},
        fmt(
            [[
                \Delta
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":GF", snippetType="autosnippet"},
        fmt(
            [[
                \Phi
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":GG", snippetType="autosnippet"},
        fmt(
            [[
                \Gamma
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":GL", snippetType="autosnippet"},
        fmt(
            [[
                \Lambda
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":GP", snippetType="autosnippet"},
        fmt(
            [[
                \Pi
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":GIS", snippetType="autosnippet"},
        fmt(
            [[
                \Psi
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":GS", snippetType="autosnippet"},
        fmt(
            [[
                \Sigma
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":G T", snippetType="autosnippet"},
        fmt(
            [[
                \Theta
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":GU", snippetType="autosnippet"},
        fmt(
            [[
                \Upsilon
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":GW", snippetType="autosnippet"},
        fmt(
            [[
                \Omega
            ]],
        {},
        {delimiters = "<>"}
        )
    ),

    s({trig=":GX", snippetType="autosnippet"},
        fmt(
            [[
                \Xi
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    --------------------------
    -- Capital Greek Letters--
    --------------------------
    s({trig=":BA", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{A}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BB", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{B}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BC", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{C}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BD", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{D}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BE", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{E}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BF", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{F}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BG", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{G}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BH", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{H}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BI", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{I}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BJ", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{J}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BK", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{K}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BL", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{L}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BM", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{M}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BN", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{N}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BO", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{O}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BP", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{P}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BQ", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{Q}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BR", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{R}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BS", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{S}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BT", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{T}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BU", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{U}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BV", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{V}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BW", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{W}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BX", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{X}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BY", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{Y}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
    s({trig=":BZ", snippetType="autosnippet"},
        fmt(
            [[
                \mathbb{Z}
            ]],
        {},
        {delimiters = "<>"}
        )
    ),
}
