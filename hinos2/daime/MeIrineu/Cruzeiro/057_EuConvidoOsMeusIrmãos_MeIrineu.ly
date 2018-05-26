\version "2.19.15"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Eu convido os meus irmãos"
  subtitle="057"
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
  \partial 2
  
  r2 |
  g2:m d2:  |
  g1:m  |
  g2:m bes2: |
  c1:m  |
  c1:m  |
  g1:m  |
  d1:7  |
  g2:m r2  |
}
pautaAa =
\relative c' {
  \clef treble
  \key g \minor
  \time 4/4
  \partial 2
  
  bes''4 g | bes g d bes | g2  bes'4  g | bes g8 g8 bes,4 d | c2. c8 c8  | c4 g' g a | bes g d bes | d c a bes | g2 r2| 
  \bar "||"
}
\addlyrics
{ 
 Eu con -- vi -- do_os meus ir -- mãos
 Que quei -- ram me a -- com -- pa -- nhar
 Pa -- ra nós can -- tar um pou -- co
 Nes -- ta Noi -- te de Na -- tal
}
\addlyrics
{ 
Eu con -- vi -- do_os meus ir -- mãos
Pa -- ra can -- tar com a -- le -- gria
Pa -- ra nós ir fes -- te -- jar
A Je -- sus Fi -- lho de Ma -- ria
}
\addlyrics
{
Eu con -- vi -- do_os meus ir -- mãos
To -- do a -- que -- le que qui -- ser
Pa -- ra nós ir fes -- te -- jar
A Je -- sus, Ma -- ria e Jo -- sé
}
\addlyrics
{
Mi -- nha Sempre Vir -- gem Ma -- ria
Vós só po -- de é_se a -- le -- grar
Por -- que to -- dos nós pe -- di -- mos
Pa -- ra Vós nos a -- ju -- dar
}
\addlyrics
{
O so -- nhar é_uma ver -- da -- de
I -- gual -- men -- te à luz do dia
Re -- pa -- rem nes -- te mun -- do
O so -- nho da Vir -- gem Ma -- ria
}
\addlyrics
{
Meu Di -- vi -- no Se -- nhor Deus
- Vós me dê a san -- ta luz
Pa -- ra sem -- pre eu fes -- te -- jar
O dia que nas -- ceu Je -- sus
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
%%   \midi {}
%%  }
%%}


