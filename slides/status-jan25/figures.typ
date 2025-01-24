#set page(width: auto, height: auto)


#import "@preview/cetz:0.3.0"

#let vektor_axelsen(
  scale-size : 2,
  font-size: 11pt,
) = [
  #set text(size: font-size)
  #cetz.canvas({
    import cetz.draw: *
    let from_cent(
      to,
      earth: (-2.47,-2.47),
      ..args
    ) = {
      intersections("i",
        hide(line(earth, to)),
        hide(line((0,0), (0,10))),
        hide(line((0,0), (10,0)))
      )
      line("i.0", to, ..args)
    }
    scale(scale-size)
    let earth = (-2.47,-2.47)
    // grid((0,0), (3,3), help-lines: true)
    arc((2, 0), start: 26.57deg, stop: 63.43deg, radius: 4.47)
    from_cent((2,3), stroke: (dash: "dotted"), name:"c_vect")
    circle((), radius: 0.05, stroke: red, fill: red)
    content((),anchor: "south-west", padding:.1,[$c_i$])

    from_cent((3,1.78), stroke: (dash: "dotted"), name:"u_vect")
    circle((2,1), radius: 0.05,stroke: blue, fill: blue)
    content((),anchor: "north-west", padding:.1,[$u_j$])

    line((2,3),(2,1), stroke: luma(40%), mark: (end: "stealth", scale: 0.7), name: "v")
    content("v.mid", anchor: "west", padding: .1, [$v_(c,u)$])
    
    on-layer(-1, {
    cetz.angle.angle((2,3), earth, "v.end", radius: 0.75,  label-radius: 75%, label: $theta_(c,u)$, fill: color.mix(green,white))
    cetz.angle.angle((2,1), "u_vect.end", "c_vect.end", radius: 0.75, label-radius:60%, label: $phi_(c,u)$, fill: color.mix(green,white))
    })
  }) 
]


#vektor_axelsen()