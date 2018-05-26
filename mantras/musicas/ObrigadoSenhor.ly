\version "2.19.15"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Obrigado Senhor"
  subtitle="009"
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
}
harmoniaAa =
\chordmode
{
  \tempo 4=60
  \time 4/4
  
  
  d7:  |  g1:  |  g1:  |  a1:m  |  a1:m  |
  d1:  |  d1:  |  g1:  |  g1:7 |
  c1: | d1: | g2: fis:dim | e1:m | c1: |
  d1: | g1: | g1:7 | c1: |
  d1: | g2: fis:dim | e1:m | c1: |
  d1: | g2: c2: | g1: | g2: d:7 |
  g1: | g1: | a:m | a:m | d: |
  d: | g: | g2: d:7 | g1: | g: |
  a:m | a:m | d: | d: | g:
  
}
pautaAa =
\relative c' {
  \clef treble
  \key g \major
  \time 4/4
   \repeat volta 2 { r4 g'8 g b4 a8 b | b1 ( | b4 ) b8 b8 b4 a8 b | c2 c2 ( | c4 )  c8 c c4 b8 c | 
   d2 d2 ( | d4 ) d8 d d4 c8 c | b1  } r4 g8 g8  \tuplet 3/2 { e'4 d4 e4 } | 
   e2 e4 g | fis4. e8 e e e d | d2 d4 c | b4. d8 \tuplet 3/2 { d4 d c } | c2 c4 b4 |
   a4 c8 c \tuplet 3/2 { c4 b c } | d d8 d8 \tuplet 3/2 {d4 g fis} | f4. g,8 \tuplet 3/2 { e'4 e d } | e2 e4 g | 
   fis4. e8 \tuplet 3/2 { e4 e d } | d2 d4 c | b4. e8 \tuplet 3/2 { d4 d c } | c2 c4 b | 
   a4. c8 \tuplet 3/2 { c4 b a } | g2  \tuplet 3/2 { c4 b a } | g1 \inStaffSegno r4 g8 g b4 b8 a | 
   b2 b2 ( | b4 b8 ) b b4 a8 b | c2 c2 ( | c4 ) c8 c c c b c | d2 d ( | 
   d4 d8 ) d d d c c | b1 | r4 g8 g b4 b8 a | b2 b2 ( | b4 b8 ) b b4 a8 b | 
   c2 c2 ( | c4 c8 ) c c4 b8 c8 | d2  d ( | d4 d8 ) d d4 c8 c | b4_ "D.S. al Fine" \bar "|."
  
  \bar "||"
}
\addlyrics
{ 
  Obrigado senhor porque Es meu amigo
  Porque sempre comigo Tu estas a falar
  No perfume das flores na harmonia das cores
  E no mar que murmura o teu nome a rezar
  Escondido tu estas no verde das florestas
  Nas aves em festa no sol a brilhar
  Nas sombras que abrigam na brisa amiga
  Na fonte que corre ligeira a cantar
  Te agradeco ainda, porque na alegria
  Ou na dor de cada dia posso te encontrar
  Quando a dor me consome murmuro o teu nome
  E mesmo sofrendo eu posso cantar
  Obrigado Senhor
  Obrigado Senhor
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


