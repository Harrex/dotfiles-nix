return {

    s(
        {trig=";asn", snippetType="autosnippet"},
        fmt(
        [[
            s({trig=";<>", snippetType="autosnippet"},
                fmt(
                    [[ 
                        <>
                    <>,
                {<>},
                {delimiters = "<>"}
                )
            ),

        ]],
        {i(1), i(2), "]]", i(3), "<>"},
        {delimiters = "<>"}
        )
    ),

    s(
        {trig=";sn", snippetType="autosnippet"},
        fmt(
        [[
            s({trig=";<>"},
                fmt(
                    [[ 
                        <>
                    <>,
                {<>},
                {delimiters = "<>"}
                )
            ),

        ]],
        {i(1), i(2), "]]", i(3), "<>"},
        {delimiters = "<>"}
        )
    ),
}


