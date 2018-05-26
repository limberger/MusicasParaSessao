\version "2.16.2"

\header {
  dedication=""
  title="Bom Natal"
  subtitle="Natal"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger="Shoo"
  opus=""
  instrument="Acordeom"
  copyright="     "
  tagline="Flor de Cristo - http://fb.com/flordaconscienciacristica"
  meter="  "
}

pautaAa =
\relative c'
{
  \clef treble
  \key ees \major
  \tempo 4 = 80
  \time 4/4
  \partial 8
  bes8  | ees8 ees ees ees f ees d c | d2. r8 bes8 | d d d ees f d c bes | ees2. r8 bes8 |
  ees8 ees ees ees f ees d c | d2. r8 bes8 | d d d ees f d c bes | ees2. r8 bes8 | ees ees ees ees ees ees f g | 
  c,4 f aes c | bes8 ees bes g aes4 d, | ees2 r1 bes1 | bes'8 bes bes bes aes g4 c8 ( | c2. ) r8 c8 |
  aes aes aes aes g f4 bes8 ( | bes2. ) r8 bes8 | g g g g f ees4 d8 ( | d2. )  r8 bes8 | d d d d c c4 bes8 ( |
  bes2. ) r8 bes8 | \repeat volta 2 { bes'8 bes bes bes bes c4 bes8 ( | bes8 ) aes4. ( aes4 ) r8 c8 | aes aes aes aes aes bes4 aes ( |
  aes8 ) g4. ( g4 ) bes | g8 g g g g aes4 g8 ( | g8 ) f f f f g4  aes8 } 
  \alternative { { ( aes8 ) f f f ees d4 bes'8 ( bes2. ) r8 bes,8 } { ( aes8 ) f f f ees d4 ees"To Coda"  } }
  }
   \bar "||"
}
\addlyrics
{
  \set stanza = #"1."
  Ho je uma cri an ça me pa rou 
}

harmoniaAa =
\chordmode
{
  \time 4/4
  \partial 8
  r8 |
  ees1: | bes: | bes: | ees: | 
  ees: | bes:  | bes: | ees: | ees: |
  aes2: f:m | ees: bes: | ees1: | ees: | aes: 
  
}
\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t  \harmoniaAa } 
        \new Staff  \with {instrumentName = #"" shortInstrumentName = #" "} \pautaAa
%%        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \transpose c d \pautaBa
      >>
    }
    \layout {}
    \midi {}

  }
}

%% \bookpart {
%%  \header {instrument=""}
%%  \score {
%%    \new StaffGroup {
%%      \override Score.RehearsalMark #'self-alignment-X = #LEFT
%%      <<
%%        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
%%        \new Staff \pautaAa
%%      >>
%%    }
%%    \layout {}
%%    \midi {}
%%  }
}


