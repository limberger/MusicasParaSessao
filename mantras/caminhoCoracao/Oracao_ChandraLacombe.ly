\version "2.14.2"
\header {
  title="Oração"
  subtitle=""
  subsubtitle="" arranger = "Shoo"  
  composer="Chandra Lacombe"
  tagline="Flor de Cristo - http://fb.com/flordaconscienciacristica"
}
pautaAa  =
\relative c'
{
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 {
  a'4^"repetir 7 vezes" g a e a c a2
  a4 g a e a c g2
  a4 g a e a c a2
  a4 g a e a c g2
  r2.
  g4 f f g f e e f e d d a' b g2
  r4
  g4 | f f g f e e f e d d a' b g2.
  
  }
}
\addlyrics 
{  
Do -- ce no -- me de Je -- sus
Do -- ce no -- me de Ma -- ria
En -- vi -- ai -nos vos -- sa paz
Vos -- sa Luz e A -- le -- gria

Es -- tre -- la_A -- zul do Dhar -- ma
Fa -- rol do nos -- so de -- ver
Li -- vrai -nos do mal Kar -- ma
En -- si -- na -nos a Vi -- ver
}
harmoniaAa =
\chordmode
{
   \time 4/4
  a1:m |
  a1:m |
  a1:m |
  a2:m 
  d2:m |
  a1:m |
  a1:m |
  a1:m |
  a2:m 
  g2:  |
  g1: |
  
  f1:  |
  e1:m |
  d1:m |
  g1:  |
  f1:  |
  e1:m |
  d1:m |
  g1:  |
  
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
       \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \pautaAa
      >>
    }
    \layout {}
    \midi {}

  }
}
