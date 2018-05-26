\version "2.19.15"

\header {
  dedication=""
  title="Minha Rosa do Jardim"
  subtitle="Padrinho Alfredo"
  subsubtitle="154"
  poet=""
  meter=""
  piece=""
  composer="Padrinho Alfredo"
  arranger="Shoo"
  opus=""
  instrument="Acordeom"
  copyright="     "
  tagline="  "
}

pautaAa =
\relative c''
{
  \clef treble
  \key c \major
  \time 4/4
   \partial 4 
   \repeat volta 3 {
  e4 | g4 g4  c4 c4 | g2  a4 g4 | e4 e4 d4 c4 | e2 r4
  e4 | g4 g4  c4 c4 | g2  a4 g4 | e4 e4 d4 c4 | e2 r4 
  g4  | g4 e2     e8 e8 | c4 a4  d4 d4 | g4 g4 e4 e4 | d4 d4 c2 | 
  r2 r4  g'4 | g4 e2     e8 e8 | c4 a4  d4 d4 | g4 g4 e4 e4 d4 d4 c2
    }
   \bar "||"
}
\addlyrics
{
Ó mi4 nha vir4 gem Mãe2
Vós que me fi zestes as4 sim2
Ó mi4 nha vir4 gem Mãe2
Vós que me fi zestes as4 sim2
Mi nha flor, mi nha es pe ran ça
Mi nha ro sa do jar dim
Mi nha flor, mi nha es pe ran ça
Mi nha ro sa do jar dim
}
\addlyrics 
{
Este per fu me de ro sa
Este chei ro de jas mim
Este per fu me de ro sa
Este chei ro de jas mim
Mi nha flor, mi nha es pe ran ça
Mi nha ro sa do jar dim
Mi nha flor, mi nha es pe ran ça
Mi nha ro sa do jar dim
}
\addlyrics 
{
Vou ze lando este pre sen te
Que man das tes para mim
Vou ze lando este pre sen te
Que man das tes para mim
Mi nha flor, mi nha es pe ran ça
Mi nha ro sa do jar dim
Mi nha flor, mi nha es pe ran ça
Mi nha ro sa do jar dim
}
\addlyrics 
{
Eu es tou neste jar dim
Des ta flor im pe ri al
Eu es tou neste jar dim
Des ta flor im pe ri al
Mi nha flor, mi nha es pe ran ça
Mi nha ro sa do jar dim
Mi nha flor, mi nha es pe ran ça
Mi nha ro sa do jar dim
}
harmoniaAa =
\chordmode
{
  \time 4/4
  \partial 4

  c4:  |
  c2: 
  c2: |
  c2: 
  c4: 
  f4:|
  g4:
  g4:
  c2: |
  c2:
  c4:
  c4: |
  c2: 
  c2: |
  c2: 
  c4: 
  f4:|
  g4:
  g4:
  c2: |
  c2:
  c4:
  c4: |
  c4:
  c4:
  c4:
  a8:m 
  f8: |
  f1: |
  f4:
  g2:
  g4: |
  c1: |
    c4:
  c4:
  c4:
  a8:m 
  f8: |
  f1: |
  f4:
  g2:
  g4:
  c1:

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

\bookpart {
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new Staff \pautaAa
      >>
    }
    \layout {}
    \midi {}
  }
}


