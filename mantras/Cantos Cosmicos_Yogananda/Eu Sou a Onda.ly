\version "2.18.2"

\header {
  dedication=""
  title="Eu sou a onda, Faz de Mim o Mar"
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
  \key c \major
  \time 6/8
  \repeat volta 2 { e4 d8 c4 d8 | e4 d8 e4.  }
  \repeat volta 2 { g4 g8 g4. } \alternative { { f8 f f f f4 } { f8 f f f f f } }
  \repeat volta 2 { d8:m f f f4 f8 } \alternative { {g8 f f f4 f8 } { g8 f f f4. } }
  \repeat volta 2 { e8 e d c4 d8 | e16 e e8 e8 e4. }
  \repeat volta 2 {g16 g g8 g g4. | f16 f f8 f f4. }
  e8 e d c4 d8 | e16 e e8 e e4. 
  e8 e d c4 d8 | e16 e e8 e e4._"Fim"
  \bar "|."
 }
\addlyrics
{
  faz as -- sim, Ó meu Se -- nhor:
  Tu e eu sem -- pre u -- ni -- dos
  sem -- pre u -- ni -- dos. A
  on -- da do mar des -- faz -- se no mar. A faz -- se no mar.
  Eu sou a on -- da, faz de mim o mar!
  Faz de mim o mar, faz de mim o mar!
  Eu sou a on -- da, faz de mim o mar!
  Eu sou a on -- da, faz de mim o mar!
}
harmoniaAa =
\chordmode
{
  \time 4/4
  c2. e:m
  g f f 
  d:m d:m d:m
  c e:m
  g f
  c e:m
  c e:m
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
    \midi {}
  }
}
