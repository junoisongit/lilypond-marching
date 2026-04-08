\version "2.24.2"
\header {
    title = "quads"
}

drumPitchNames = #(append 
  '(
     (oneH . oneH)
     (oneS . oneS)
     (twoH . twoH)
     (twoS . twoS)
     (thrH . thrH)
     (thrS . thrS)
     (forH . forH)
     (forS . forS)
     (spkH . spkH)
     (spkS . spkS)
     (hspkH . hspkH)
     (hspkS . hspkS)
     )
  drumPitchNames)

#(define marching-tenors
  '(
    (oneH	default		#f	3)
    (oneS	cross 		#f	3)
    (twoH	default		#f	1)
    (twoS	cross		#f	1)
    (thrH	default		#f	-1)
    (thrS	cross		#f	-1)
    (forH	default		#f	-3)
    (forS	cross		#f	-3)
    (spkH	default		#f	6)
    (spkS	cross		#f	6)
    (hspkH	default		#f	7)
    (hspkS	cross		#f	7)
  ))

\score {
\new DrumStaff \with {
  drumStyleTable = #(alist->hash-table marching-tenors)
}
\drummode {
  \time 4/4
  \stemUp
}
}
