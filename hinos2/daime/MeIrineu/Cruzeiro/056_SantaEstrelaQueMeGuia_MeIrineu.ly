\version "2.19.15"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Santa Estrela Que Me Guia"
  subtitle="056"
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
  \partial 4.
  
  r4. |
  g1:  |
  g1:  |
  c1:  |
  a2:m  |
  e2:m7  |
  a2:m  |
  d2:7  |
  g1:  |
  d1:  |
  g2:  |
  g8:
}
pautaAa =
\relative c' {
  \clef treble
  \key g \major
  \time 4/4
  \partial 4.
  
  b'8 b c | d4 a d g | b g2 e8 e8 | e4 c c d  | e2. e8 e8 | 
  a4 a a  b | a g2 b,8 e8 | d4 c a b | g2( g8 ) |
  
  \bar "||"
}
\addlyrics
{ 
  San -- ta Es  -- tre -- la que me gui -- a
  Vós me dê a San -- ta Luz
  Os três Reis do O -- ri -- en -- te
  Que vi -- si -- ta -- ram, Je -- sus
}
\addlyrics
{ 
Vi -- va Deus lá nas al -- tu -- ras
Vi -- va a Noi -- te de Na -- tal
Vi -- va o do -- no des -- te dia
Que nós va -- mos fes -- te -- jar
}
\addlyrics
{
- - Já fa -- zem mui -- tos a -- nos
- Que meu Je -- sus nas -- ceu
Va -- mos to -- dos com_a -- le -- gri -- a
Fes -- te -- jar ao Se -- nhor Deus
}
\addlyrics
{
- - Meu Di -- vi -- no Se -- nhor Deus
- A Vós eu vou pe -- dir
Vós nos dê_o Vos -- so con -- for -- to
Pa -- ra to -- dos nós se -- guir
}
\addlyrics
{
- - A Sem -- pre Vir -- gem Ma -- ria
É quem vem nos en -- si -- nar
Pa -- ra nós can -- tar com a -- mor
Nes -- ta Noi -- te de Na -- tal
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new FretBoards {\set chordChanges = ##t \harmoniaAa}
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
%%      \override Score.RehearsalMark #'self-alignment-X = #LEFT
%%      <<
%%        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
%%        \new Staff \pautaAa
%%      >>
%%    }
%%    \layout {}
%%    \midi {}
%%  }
%%}


