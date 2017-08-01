\version "1.8.17"

\header {
  dedication=""
  title="Espírito e Natureza"
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
  \key e \major
  \time 4/4
   e4  e fis fis |a a8 a gis gis  fis ( gis ) | e4 fis8 ( gis ) fis4 fis  \break
   \repeat volta 2 {
     a4 a8 a gis gis fis ( gis ) | e4 fis8 ( gis ) fis4 fis 
    } \break
   \repeat volta 2 {
     a4 a8 a gis gis fis4 | e8 e fis gis fis4 fis 
   } \break
   \repeat volta 2 {
     a4 a8 a gis gis fis4 | e8 e fis gis fis4 fis
   }
}
\addlyrics
{
Ra -- dha Ra -- dha Ra -- dha Go -- vin -- da Jai!_ Ra -- dha_ Ra -- dha,
Ra -- dha, Go -- vin -- da, Jai!_ Ra -- dha,_ Ra -- dha!
Dan -- "ça o" Es -- pi -- ri -- to com a Na -- tu -- re -- za,
Vi -- "va o" Es -- pi -- ri -- to! Vi -- "va a" Na -- tu -- re -- za!
}
harmoniaAa =
\chordmode
{
  \time 4/4
  e2: fis:m | a1: | e2: fis:m | 
  a1: | e2: fis:m |
  a2 gis:m | e  fis:m |
  a2 gis:m | e fis:m
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
    \transpose e d
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


