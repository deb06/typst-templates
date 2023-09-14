#let cornell_note(
  title: [],
  date: [],
  name: [],
  topic: [],
  notes: [],
  main_ideas: [],
  summary: [],
) = {
  let col_header = rgb("#778da9");
  let col_title = rgb("#415a77");
  let col_bg = rgb("#e0e1dd");
  set align(left)
  set text(font: "Times New Roman", size: 12pt)

  page(
    numbering: "1",
    margin: (x: 32pt, y: 70pt),
    header: locate(
      loc => if [#loc.page()] == [1] {
        [
        #align(left,)[
          #set text(
            size: 24pt,
            fill: col_title,
          )
          //Alternatively just have the header every page by removing the locate function
          = #title
        ]
        ]
      } else {[]}
    )
  )[
    #set align(left)
    #set text( size: 12pt)
    #box(
      height: 50pt,
      width: auto,
      [#set text(size: 12pt)
      *Date*: #date \
      *Name*: #name \
      *Topic*: #topic \
      ],
    )

    #table(
      stroke: 0.5pt, //There is still a rendering issue here with a larger stroke or with 0 stroke. Could be just a typst issue not really sure.
      columns: (1fr, 3fr),
      fill: (col, row) =>
      if row == 0 {
        col_header
      } else if row == 1 and col == 0 {
        col_bg
      } else if row == 1 and col == 1 {
        luma(240)
      },
      [
      #set align(center)
      === Main Ideas
      ],
      [
      #set align(center)
      === Notes
      ],
      [
      #main_ideas
      ],
      [
      #notes
      ],
    )

    #table(
      stroke: 0.5pt,
      columns: (1fr),
      fill: (_, row) =>
      if row == 0 { col_header }
      else if row == 1 { col_bg },
      align(
        center,
      )[
        #set text(size: 14pt)
        === Summary
        ],
      [
      #summary
      ],
    )
    ]
}
