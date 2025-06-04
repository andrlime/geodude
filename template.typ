#let big_header(body, primary_color) = {
    show heading.where(
        level: 1
    ): it => text(
        fill: primary_color,
        size: 15pt,
        [
            #upper({it.body})
            #v(-8pt)
        ]
    )
    heading(level: 1, body)
}

#let section_header(body, primary_color) = {
    show heading.where(
        level: 2
    ): it => text(
        fill: primary_color,
        size: 10.5pt,
        [
            #{it.body}
            #v(-10pt)
            #line(length: 100%, stroke: 1pt + primary_color)
        ]
    )
    strong(heading(level: 2, body))
}

#let section(header) = {
    section_header(header, rgb("#282828"))
}

#let icon(name, label, shift: 1.5pt) = {
  box(
    baseline: shift,
    height: 10pt,
    image("./icons/" + name + ".svg")
  )
  h(3pt)
  label
}

#let tabulate(list, separator) = {
    for elem in list {
        if elem == list.last() {
            elem
        } else {
            elem + separator + " "
        }
    }
}

#let profile(
    name,
    linkedin,
    github,
    phone,
    email1,
    email2
) = {
    set align(center)
    big_header(name, rgb("#282828"))
    v(-6pt)
    text(10pt)[
        #tabulate((
            icon("phone", phone),
            icon("email", email1),
            icon("email", email2),
            link("https://www.linkedin.com/in/" + linkedin)[
                #icon("linkedin", "@" + linkedin)
            ],
            link("https://github.com/" + github)[
                #icon("github", "@" + github)
            ],
        ), h(1em))
    ]
    v(-6pt)
}

#let school(
    name,
    degrees, /*(BA, majors, year)*/
    location,
    ..args
) = {
    text(10pt)[
        #strong(name) #h(1fr) #emph(location)
    ]
    linebreak()
    for degree in degrees {
        text(10pt)[
            #text(degree.at(0) + " in " + degree.at(1))
            #h(1fr)
            #text(degree.at(2))
            #linebreak()
        ]
    }
}

#let tags(
    label,
    list
) = {
    text(10pt, hyphenate: false)[
        #strong(label): 
        #tabulate(list, ",")
    ]
    linebreak()
}

#let position(
    position, time_period, location, bullets
) = {
    text(10pt)[
        #text(position)
        #h(1fr)
        #emph(location)
        #h(1em)
        #text(time_period)
    ]
    linebreak()
    text(10pt)[
        #list(
            tight: true,
            ..bullets
        )
    ]
    v(-3pt)
}

#let job(
    company, positions
) = {
    text(10pt)[
        #strong(company)
    ]
    linebreak()
    for p in positions {
        position(p.at(0), p.at(1), p.at(2), p.at(3))
    }
}

#let project(
    title, client, bullets
) = {
    text(10pt)[
        #strong(title) #h(1fr) #emph(client)
    ]
    linebreak()
    text(10pt)[
        #list(
            tight: true,
            ..bullets
        )
    ]
    v(-3pt)
}
