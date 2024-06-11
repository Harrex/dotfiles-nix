return {

    s(
        {trig=";bp", snippetType="autosnippet"},
        fmt(
        [[
            public class <> {
                public static void main(String[] args) {
                    <>
                }
            }
        ]],
        {i(1), i(2)},
        {delimiters = "<>"}
        )
    ),
}
