\version "2.19.15"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Mãe Celestial"
  subtitle="009"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Mestre Irineu"
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
  \partial 4
  
  r4 |
  c1:  |
  c1:  |
  g1:  |
  a1:m  |
  a1:m  |
  a1:m  |
  d1:m  |
  d1:m  |
  g1:  |
  
}
pautaAa =
\relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \partial 4
  
  e4^"repetir 3 vezes cada estrofe" | g2. e4 | g2 g4 g | g4. e8 a4. f8 | e2. 
  c4 | e c e c | a2 a4 a4 | a a b c | d2. d4 | d4. d8 e4. f8 | g2.
  
  \bar "||"
}
\addlyrics
{ 
  Eu pe -- ço_e ro -- go
  Oh! Mãe Ce -- les -- ti -- al
  Que tu -- do_en -- quan -- to eu_te -- nho
  É vós é quem me dá
  Oh! Mãe Ce -- les -- ti -- al
}
\addlyrics
{ 
Eu pe -- ço_e ro -- go
Oh! Pai Ce -- les -- ti -- al
Que tu -- do_en -- quan -- to eu_te -- nho
É Vós é quem me dá
Oh! Pai Ce -- les -- ti -- al
}
\addlyrics
{
Eu pe -- ço_e ro -- go
Oh! Mãe Ce -- les -- ti -- al
Que me dê_a sal -- va -- ção
E_me bo -- te em bom lu -- gar
Oh! Mãe Ce -- les -- ti -- al
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


