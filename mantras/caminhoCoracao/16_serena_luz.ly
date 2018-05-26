\version "2.19.15"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Serena Luz"
  subtitle="Caminho Coração"
  subsubtitle="38"
  poet=""
  meter=""
  piece=""
  composer="Prem Baba"
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
  \partial 2.
  
  d2.:  |
  a1:  |
  g1:  |
  d1:  |
  g1:  |
  a1:  |
  a1:  |
  d1:  |
  g1:  |
  a1:  |
  g1:  |
  d1:  |
  
}

pautaAa =
{
  \clef treble
  \key d \major
  \time 4/4
  \partial 2.
  a'4  d''4 cis''4 | a'1 | r4   b'4   a'4 d'4 | fis'1  | r4 b4  d'4 cis'4  | a1 |
  r4 e'8 e'8 b4 d'4 | fis'1 | r4 b4 d'4 cis'4 | a1 | r4 e'8 e'8 b4 cis'4 | d'1
  
  \bar "||"
}
\addlyrics
{
  I lu mi nou e cla re ou,
  Di vi no Deus com seu res plen dor
  Lá das al turas traz o seu fres cor
}
\addlyrics
{
  I lu mi nou e cla re ou,
  Di vi no Deus com seu res plen dor
  Do co ra ção ve em o fres cor
}
\addlyrics
{
  Di vi na Mãe de ca ri dade,
  Mos tra_a bon dade acal man do a dor
  Flo rin do_os cam_pos co om_ seu a mor 
}
\addlyrics
{
  Pe di con for_to e_en ten di men_to,
  Cla reou a luz de conhe ci men to
  Em concen tra ção no Deus ver da dei_ro
}
\addlyrics
{
  Vou re ce bendo e_agra de cen do,
  A sere na luz aos pés do_Cru zei ro
  Com a uni ão de quem humil de veio
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


