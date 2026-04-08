\version "2.24.2"
\header {
    title = "snare template"
}

drumPitchNames = #(append 
  '((hit . hit)
    (rimshot . rimshot)
    (rimclick . rimclick)
    (stickclick . stickclick))
  drumPitchNames)

#(define marching-snare
  '(
    (hit           default  #f           1)
    (rimshot       cross    #f           1)
    (rimclick      slash    #f           1)
    (stickclick    diamond  #f           4)
  ))

\score {
\new DrumStaff \with {
  drumStyleTable = #(alist->hash-table marching-snare)
}
\drummode {
  \time 4/4
  \stemUp
% your music goes here
}
}
