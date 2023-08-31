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
    margin: (x: 32pt, y: 70pt),
    header: align(
      left,
    )[
      #set text(
        size: 24pt,
        fill: col_title,
      )
      = #title
      ],
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
      stroke: 0pt,
      columns: (1fr, 4fr),
      fill: (col, row) =>
      if row == 0 {
        col_header
      } else if row == 1 and col == 0 {
        col_bg
      },
      [
      #set align(center)
      == Main Ideas
      ],
      [
      #set align(center)
      == Notes
      ],
      [
      #main_ideas
      ],
      [
      #notes
      #v(420pt) // FIXME: this feels jank
      ],
    )

    #table(
      stroke: 0pt,
      columns: (531.28pt),
      rows: (20pt, 140pt),
      fill: (_, row) =>
      if row == 0 { col_title }
      else if row == 1 { col_bg },
      align(
        center,
      )[
        #set text(size: 14pt)
        === Summary
        ],
      [ #summary ],
    )
    ]
}
