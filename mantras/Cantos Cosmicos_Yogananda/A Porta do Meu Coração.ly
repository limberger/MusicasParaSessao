\version "1.8.17"

\header {
  dedication=""
  title="A Porta do meu Coração"
  subtitle="Cantos Cósmicos"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Paramahansa Yogananda"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline="Flor de Cristo"
}

pautaAa =
\relative c'
{
  \clef treble
  \key d \major
  \time 4/4
  \partial 8
   a8 \repeat volta 2 {   \mark \markup { \musicglyph #"scripts.segno" } a4 b d d | e e e2 | g4 g fis e }
   \alternative {{ d4 e b4. a8 }
                 { d4 e4 a2-"Fim" }} \break
   \repeat volta 2 { g4 g g2 | fis4 fis e2 | d4 e fis e | d e b2 } \break
   \repeat volta 2 { a4 b d d | e e e e | d e fis e | d e b2 } \break
   \repeat volta 2 { g'4 g g g | fis fis e e | d e fis e }
   \alternative {{ d e b b  }{ d e b b8 a8-\markup { \italic "D.C. " \musicglyph #"scripts.segno" } 
   }}
 }
\addlyrics
{
A por -- ta do meu co -- ra -- çao te -- "nho a" -- ber -- ta 
pa -- ra Ti A pa -- ra Ti.
Vem a mim, vem a mim, vem ao me -- nos u -- ma vez!
"Que os" meus di -- as nao se pas -- sem, sem Te ver, o meu Se -- nhor!
Noi -- "te e" di -- a, noi -- "te e" di -- a, Te pro -- cu -- ro noi -- "te e" di -- a
noi -- "te e" di -- a. A
}
harmoniaAa =
\chordmode
{
  \time 4/4
  e8:m e1:m e:m d c c
  e:m b:m e:m g
  e1:m e:m d c
  e:m b:m e:m g
  
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames   {\set chordChanges = ##t \harmoniaAa}
        \new Staff  \with {instrumentName = #"" shortInstrumentName = #""}  \pautaAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument=""}
  \score {
    \transpose d c
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


