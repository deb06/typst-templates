#let cornell_note(
    title: [],
    date: [],
    name: [],
    topic: [],
    notes: [],
    main_ideas: [],
    summary: [],

) = {
    page(
        margin: (x: 32pt, y: 70pt),
        header: align(left)[
            #set text(
                font: "Times New Roman",
                size: 24pt,
                fill: rgb("#415a77")
            )
            = #title
        ]
    )[
        #box(
            height: 50pt,
            width: auto,
            [
            #set text(
                font: "Times New Roman",
                size: 12pt,
            )
            *Date*: #date \
            *Name*: #name \
            *Topic*: #topic \
            ]
        )
        #table(
            stroke: 0pt,
            columns: (1fr, 3fr),
            rows: (20pt, 440pt),
            fill: (col, row) => 
            if row == 0 { rgb("#778da9") }
            else if row == 1 and col == 0 { rgb("#e0e1dd") }
            else if row == 1 and col == 1 { luma(240) },

            align(center)[
                #set text(
                    font: "Times New Roman",
                    size: 14pt
                )
                === Main Ideas
            ],
            align(center)[
                #set text(
                    font: "Times New Roman",
                    size: 14pt
                )
                === Notes
            ],
            align(left)[
                #set text(
                    font: "Times New Roman",
                    size: 12pt
                )
                #main_ideas
            ],
            align(left)[
                #set text(
                    font: "Times New Roman",
                    size: 12pt
                )
                #notes  
            ]
        )
        #table(
            stroke: 0pt,
            columns: (531.28pt),
            rows: (20pt, 140pt),
            fill: (_, row) => 
            if row == 0 { rgb("#778da9") }
            else if row == 1 { rgb("#e0e1dd") },
            align(center)[
                #set text(
                font: "Times New Roman",
                size: 14pt
                )
                === Summary
            ],
            align(left)[
                #set text(
                    font: "Times New Roman",
                    size: 12pt,
                )
                #summary            
            ]
        )
    ]
}