\version "2.16.2"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Bandeira do Divino"
  subtitle="Versão Ivan Lins"
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
#(set-default-paper-size "a4")
\paper {
#(set-paper-size "a4")
}
pautaAa =
\relative c''
{
  \clef treble
  \key e \major
  \tempo 4 = 80
  \time 4/4
  e1 
   \bar "||"
}
harmoniaAa =
\chordmode
{
  \time 4/4
  e1: e1:  e1: e1:  a1: a1: a1: a1:  | 
  a1: fis1:7 fis1:7  fis1:7 fis1:7 b1:4 7  b1:7 e1: e1: e1: | 
  e1: e1: e1: e1: e1: e1: a1: a1: a1:  |
  a1: fis1:7 fis1:7  fis1:7  fis1:7  fis1:7  fis1:7 fis1:7   b1:4 7 b1:4 7 b1:7 b1:7 e1: e1: e1: |
  e1: f1: f1: f1: f1:  bes1:  bes1:  bes1: |
   bes1:  bes1: g1:7 g1:7 g1:7 g1:7 g1:7  c1:4 7 c1:7  f1: f1: f1: |
   f1: f1: f1: f1: f1: f1: f1: bes1: bes1: bes1: |
   bes1: bes1: g1:7 g1:7  g1:7  g1:7  g1:7  c1:4 7 c1:7 c1:7 f1: f1: f1: |
   f1: fis1: fis1: fis1: fis1: fis1: fis1: b1: b1: b1: b1:
   b1:  gis1:7 gis1:7 gis1:7 gis1:7 gis1:7 cis1:4 7 cis1:7 fis1:
   f1:7 f1:7  f1:7 f1:7 f1:7 f1:7 b1: b1: b1:
   b1: b1: gis:7 gis:7 gis:7 gis:7 cis1:4 7 cis1:7 f1: fis:7+ 9 fis:6
  
}
letra=\lyricmode
{
 \normalsize {
  Os devotos do Divino vão abrir sua morada \break
  Pra bandeira do menino ser bem-vinda, ser louvada, ai, ai \break
  Deus nos salve esse devoto pela esmola em vosso nome \break
  Dando água a quem tem sede, dando pão a quem tem fome, ai, ai\break
  A bandeira acredita que a semente seja tanta\break
  Que essa mesa seja farta, que essa casa seja santa, ai, ai\break
  Que o perdão seja sagrado, que a fé seja infinita\break
  Que o homem seja livre, que a justiça sobre - viva, ai, ai\break
  Assim como os três reis magos que seguiram a estrela guia\break
  A bandeira segue em frente atrás de melhores dias\break
  No estandarte vai escrito que ele voltará de novo\break
  E o rei será bendito, ele nascerá do povo, ai, ai\break
 }
}
\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
 %%       \new FretBoards {\set chordChanges = ##t \harmoniaAa }
        \new ChordNames {\set chordChanges = ##t  \harmoniaAa } 
        \new Lyrics { \letra }
%%        \new Staff  \with {instrumentName = #"" shortInstrumentName = #" "} \transpose c d \pautaAa
%%        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \transpose c d \pautaBa
      >>
    }
    \layout {}
    \midi {}

  }
}