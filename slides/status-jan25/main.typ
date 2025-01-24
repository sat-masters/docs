#import "@preview/touying:0.5.5": *
#import themes.university: *
#import "@preview/numbly:0.1.0": numbly    
#import "@preview/subpar:0.2.0":*
#show: university-theme.with(
  aspect-ratio: "16-9",
  // align: horizon,
  // config-common(handout: true),
  config-info(
    title: [Network Communication Between LEO Satellites],
    subtitle: [Utilizing existing mega constellation infrastructure for LEO satellite missions.],
    author: ([Laursen, A.W. &  Larsen, J.M.]),
    date: datetime.today(),
    institution: [Electronic Systems, Aalborg University],
  ),
)
// #set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide(authors: ([Albert Werner Laursen], [Jens Moeslund Larsen]))

== Outline <touying:hidden>

#components.adaptive-columns(outline(title: none, indent: 1em,depth: 1))

= Problem
#import "figures.typ": *
// Figurer:
// 1. VLEO, LEO, LEO++
// 2. Vektor Axelsen
// #figure(
//   vektor_axelsen(scale-size:4, font-size:24pt)
// )
// 3. Resultater for div. optim. prob.

// 4. Cones + lidt at putte i dem ;-) & dead spots

// 5. Plot af visible satellites

// 6. evt. plot af throughput for diskrete modcods
// 7. Jorden opdelt i cells


== Definition of the problem 

- Multiple LEO missions have high latency sensitivity or high throughput requirements. 
  - Weather missions
  - Emergency responder missions 
  - Military mission
  - Hyperspectral imaging
  - 6G-gNB
- Traditional downlink methods have: 
  - Low average throughput 
  - High average latency

Average metrics are important for missions spanning the globe

#pagebreak()
#import "@preview/metro:0.3.0": * 
#slide(composer: (1fr,1.5fr))[
=== Current solutions to the problem: 
  - Private groundstations
    - Price 
    - Time to market
  - Shared groundstations  
    - KSAT, AWS, Azure 
    - Limited resources
    - Still no full coverage
  ][
  #figure(
  image("image.png"),
  caption: [Downlink for smallsat, bandwidth #qty(250, "MHz") ]  
)
  ]

  
#pagebreak()
== Proposed solution
#slide(composer: (2fr,1fr))[
Utilizing existing infrastructure from mega constellations
  - Starlink 
  - OneWeb
  - Kuiper
Minimizing or eliminating the deadzones for the SUT satellite.
  
][
  #set text(size: 16pt)
#grid(
  figure(
    image("starlink.png"),
    caption: [Starlink Constellation @StarlinkSatelliteTracker]
  
  ),
  [],
  figure(
    image("OneWeb.png"),
    caption: [OneWeb constellation @StarlinkSatelliteTracker]
  ),
  rows: (1fr,0.01fr,1fr),
  
  
  
)
  
]
#pagebreak()
== Focus of this thesis
#slide[
  
An ISL selection algorithm for LEO satellite user terminals (SUT).

- For mega constellations assumed connected to the internet.
- Focus on selection of constellation satellites over link establishment. 
][
  
#figure(
box(image("on_the_use_leo.png"), clip: true, inset: (bottom: -45%,left:-100%,top:-11%),width: 100%),
caption: [Use Case Examples from @capezUseMegaConstellation2024]
  
)
]

= System model

// == Client models

// - High throughput
//   - Hyperspectral imaging
// - Low latency
//   - Emergency responder missions
// - High throughput and low latency
//   - 6GnB

== Satellite models
#slide()[
- Radiation pattern
  - User Satellite
  - Network Satellite
- Channel parameters
  #figure(image("radiation.png"), caption: [Radiation pattern example @capezUseMegaConstellation2024])
][  
  #figure(vektor_axelsen(scale-size: 3.3, font-size:18pt), caption: [Angles between user $u_j$ and network satellite $c_i$])
]

#slide(composer: (1fr,1.8fr))[
- Starlink 
  - Shorter connections
  - Higher throughput
- OneWeb
  - Longer connections 
  - Lower throughput
- Tradeoff

][
  #figure(
    box(image("ow_sl_visibility.png"), clip: true, inset: (bottom: -1.8cm)),
    caption: [Visibility analysis of NS from SUT perspective @al-hraishawiMultiLayerSpaceInformation2021]
    
  )
]

= Preliminary results

== Initial Optimization

- Choosing the best link for each time slot
  - Greedy / Iterative algorithm
- Optimizing for throughput

$
  op("maximise", limits:#true)_x& quad &f(x)&= 1/T sum_C sum_U sum_T x_(c,u,t) R_(c,u,t) + dots\
  "subject to"& &sum_C x_(c,u,t) &<= 1 #h(2.5cm) forall u,t\
  && x_(c,u,t) &in {0,1} quad forall c,u,t
$

== Results
=== OneWeb
#grid(
  figure(image("OW_all_policies.png"),caption: [Solution using algorithms]),
  figure(image("Optim_solved_OW.png"),caption: [Solution using LP]),
  columns: (2fr, 1.5fr)
  
)
   


= Current / Future work

== Discrete MODCODs 
-  Since the intersatellite links use MODCODs the achievable throughput is discrete
#figure(
  image("OW_modcods.png",width: 70%),
  caption: [Example of applying modcods to the shannon capacity],
)

== Satellite utilization
#slide[
  
- Utilization modeling 
- Models based on earth cell not satellite
- Simple model (high / low utilization)
- queuing model (M/M/1)
\
- Satellite coordinates in ECI 
- Cell coordinates in ECEF
][
#figure(
  image("Cell_earth.png"),
  caption: [Europe divided into cells @StarlinkSatelliteTracker]
)
  
]

== Optimization reframing
#slide(composer: (2fr,1.1fr))[
- Utilization as a RV with known distribution.
- Introducing requirements
- Minimize chance of failure to meet requirements
$
  op("minimize", limits:#true)_x& quad &g_u (x) &= PP (1/T sum_T R_t (alpha,c,u) <= Q_u )
$
#table(
  columns: 2,
  stroke: none,
  [*$R_t (dot)$*], [Rate function],
  [*$alpha$*], [Utilization of satellite],
  [*$Q_u$*], [Requested rate for SUT $u$]
)  
][
  #figure(
  table(
    columns: 2,
    stroke : none,
    row-gutter: 3%,
    table.hline(stroke: 2pt),
    [*QoS*], [*Use Case*],
    table.hline(),
    [Low End], [UE],
    [Common Case], [UE or gNB],
    [High End], [UE or gNB],
    [High End+], [gNB],
    table.hline(stroke: 2pt),
  )  ,
  caption: [Use Case Examples from @capezUseMegaConstellation2024]
    
     
    
  //   - Weather missions
  // - Emergency responder missions 
  // - Military mission
 
  // - 6G-gNB
    
  )
]

== Implementation (hurdles)
- The optimization problem becomes a large very sparse problem to solve
  - Reduce the compute complexity by representing the problem in a sparse way
- Seperate the problem into a deterministic part (done on central server), and a stochastic part(done on the SUT)? 

== Bibliography
#bibliography("bib.bib")