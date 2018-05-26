\version "2.19.15"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Força da Paz"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Novo Quilombo"
  arranger="Shoo"
  opus=""
  instrument="Acordeom"
  copyright="     "
  tagline="Flor de Cristo - http://fb.com/flordaconscienciacristica"
}
harmoniaAa =
\chordmode
{
  \tempo 4=60
  \time 4/4
   d4:m  c4:   d4:m a4:m | d2:m bes2: f2: a:m |
   d1:m c4.: f8: f4: a8:m (a2:m )
   d2:m c2: d1:m
}
pautaAa =
\relative c' {
  \clef treble
  \key c \major
  \time 4/4
  
  a'4  g4 a4 | e4  a4 a4 b4 b4  c4 d | b4.
   g8 e'4 e4  | d4. d8 c8 c8 d c8 b4 a8 g2 a2 g4 b4 a1
  \bar "||"
}
\addlyrics
{ 
  For ça da paz
  Cres ça sem pre sem pre mais
  Que rei ne_a paz e aca bem as fron te i ras
  Nos so mos um
}


\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new FretBoards {\set chordChanges = ##t \harmoniaAa}
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \pautaAa
      >>
    }
    \layout {}
    \midi {}
    
  }
}

%%\bookpart {
%%  \header {instrument=""}
%%  \score {
%%    \new StaffGroup {
%%     \override Score.RehearsalMark #'self-alignment-X = #LEFT
%%      <<
%%        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
%%        \new Staff \pautaAa
%%      >>
%%    }
%%    \layout {}
%%    \midi {}
%%  }
%%}


 
