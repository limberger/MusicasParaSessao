\version "2.18.2"

\header {
  title = "Seja o Centro!"
  subtitle = "Flor de Cristo"
  subsubtitle = "Shoo"
  date = "04-12-2016"
  composer = "Vineyard"
 }

global = {
  \time 4/4
  \key d \major
}

chordNames = \chordmode {
  \global
   \set chordChanges = ##t
   d1 d d d a:sus4
   a2:sus4  g:/b g1:/b g2.:/b a:sus4 a2.:sus4 d d4 d1  a2:sus4 a4:sus4
    a2:sus4 d2 d2 a2:sus4 a1:sus4 a2:sus4  d:9/b
    d2:9/b a:sus4 g4:/b d2.
}

melody = \relative c'' {
  \global
  \repeat volta 2 { a2 fis4 r4 | b4  a g a~ a2 fis4 r4 |
  fis4 e d e~ e e4 r2
  e4 fis4 d4 d4
  b d d2 }
  fis4 e d e~ e4 e2 r2 fis4 fis4 fis2
  a4 a a a a2 r4  b4 a a2 fis4 e d e~ e2 r2 
  fis4 fis fis2 fis4 e d e2  b4 d2.
  }

words = \lyricmode {
   <<
    \set associatedVoice = "melody"
    {
      \set stanza = #"1. "
      \set associatedVoice = #"melody"
      Je -- sus se -- ja o cen -- tro
      Mi -- nha espe -- ran -- ça
      Mi -- nha lu -- uz
      Je -- su -- us
      se -- ja o fo -- go em meu ser
      se -- ja o ven -- to a so -- prar a a ra -- zao
      de vi -- ver je -- e -- e -- sus je -- sus 
    }
     \new Lyrics {
      \set associatedVoice = #"melody"
      \set stanza = #"2. "
     
     }
   >>
 
}


\score {
  <<
    \new ChordNames  \transpose d a { \chordNames }
    \new Staff \transpose d a  { \melody }
    \addlyrics { \words }     
 
  >>

  \layout {
  }
  \midi { }
}
  