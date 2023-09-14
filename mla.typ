#let mla(
    heading: [],
    title: [],
    lastname: [],
    content: [],
    citations: []
) = {
    page(
        margin: (x: 1in, y: 1in),
        header: [
            #set align(right)
            #set text(font: "Times New Roman", size: 12pt)
            #lastname #counter(page).display("1")
        ]
    )[
    #set par(leading: 2em)
    #show par: set block(spacing: 2em)

    #set align(left)
    #heading

    #set align(center)
    #title

    #set align(left)
    #set par(first-line-indent: 0.5in)
    #content

    #set par(first-line-indent: 0in)
    #set align(center)
    Works Cited

    #set align(left)
    #citations
    ]
}