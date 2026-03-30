/// Justified header for #entry_detailed
/// - 
/// - 
#let detailed_header(left, right) = {
  
  __justify_align([
    #set text(
      size: 12pt,
      weight: "bold",
      fill: color-darkgray,
    )
    #left
  ], [
    #set text(
      size: 12pt,
      weight: "thin",
      style: "italic",
      fill: state-color-accent.get(),
    )
    #right
  ])

}

#let detailed_header2(left, right) = {

  __justify_align([
    #set text(
      size: 12pt,
    )
    smallcaps[#left]
  ], [
    #set text(
      size: 12pt,
      weight: "thin",
      style: "italic",
      fill: color-darkgray,
    )
    #right
  ])
}


// layout utility
#let __justify_align(left_body, right_body) = {
  block[
    #box(width: 3fr)[#left_body]
    #box(width: 1fr)[#align(right)[#right_body]]
  ]
}

#let __justify_align_3(left_body, mid_body, right_body) = {
  block[
    #box(width: 1fr)[#align(left)[#left_body]]
    #box(width: 1fr)[#align(center)[#mid_body]]
    #box(width: 1fr)[#align(right)[#right_body]
    ]
  ]
}

// Entry for Education, Experience, Research, Teaching, etc.
// Matches Awesome-CV style: "with" left top, "what" left below, "where" right top, "when" right below; description + detail bullets with #resume-item
#let entry_detailed(
  with: none,             // e.g., "Standford University"; "Microsoft"
  what: none,             // e.g., "Ph.D. in Physics"; "Post-Doctoral Fellow"
  where: none,            // e.g., "Springdale, Arizona"; "Vienna, Austria"
  when: none,             // e.g., "2017--2024" or "2025--present"
//  bullets: none,          // bullet content, first is brief description
) = {
  
  set block(above: 0.5em, below: 0.5em)

  #detailed_header(with, where)
  #detailed_header2(what, when)

//  #detailed_list(bullets)

}

#let bullet_list(bullets) = {

  set text(
    size: 10pt,
    style: "normal",
    weight: "regular",
    fill: color-darknight,
  )
  set par(leading: 0.65em)
  set list(indent: 1em)

  list(bullets)

}

