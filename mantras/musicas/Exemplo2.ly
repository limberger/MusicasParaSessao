 \header {
title = "Exemplo"
subtitle = "A duet for five singers"
composer = "http://thedailyt.com"
}
% Set paper size
% a6, a5, a4, a3, legal, letter, 11x17
#(set-default-paper-size "a4")
\paper {
#(set-paper-size "a4")
}

<<
  \chords {
    d1 d1
  }
  \new Lyrics \lyricmode {
    Op4 een4 gro4 -- te4 pad4 -- de4 -- stoel,2
  }
>>