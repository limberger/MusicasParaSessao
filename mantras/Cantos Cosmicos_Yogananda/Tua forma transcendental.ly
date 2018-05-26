\version "2.18.2"

\header {
  dedication=""
  title="Tua forma transcendental"
  subtitle=""
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
  \key d \major
  \time 4/4
  \partial 8
   a8 \repeat volta 2 {   \mark \markup { \musicglyph #"scripts.segno" } a4 b d d | e e e2 | g4 g fis e }
   \alternative {{ d4 e b4. a8 }
                 { d4 e4 a2-"Fim" }} \break
   \repeat volta 2 { g4 g g2 | fis4 fis e2 | d4 e fis e | d e b2 } \break
   \repeat volta 2 { a4 b d d | e e e e | d e fis e | d e b2 } \break
   \repeat volta 2 { g'4 g g g | fis fis e e | d e fis e }
   \alternative {{ d e b b  }{ d e b b8 a8-\markup { \italic "D.C. " \musicglyph #"scripts.segno" } 
   }}
 }
\addlyrics
{
Tua Forma Transcendental, Senhor, como o Ceu Azul
Mil estrelas dao a Tua Aura a Luz
Com Teu Poder sustenta o Universo
Es o Principio Eterno da Criacao
As Gopis te chamam, a Ti, Meu Senhor
A Fonte Suprema de Todo Amor

Hare Krishna, Hare Krishna
Krishna, Krishna, Hare, Hare
Hare Rama, Hare Rama
Rama, Rama, Hare, Hare

Tu estas Presente em nosso coracao
Es a Super Alma. Teu Mantra e OM
Queres demonstrar com Teu Perdao
Que a Unica Religiao e o Amor
Viver como irmaos, quer O Senhor
Em um Mundo novo, sem afliçao

Hare Krishna, Hare Krishna
Krishna, Krishna, Hare, Hare
Hare Rama, Hare Rama
Rama, Rama, Hare, Hare
}
harmoniaAa =
\chordmode
{
  \time 4/4
  e8:m e1:m e:m d c c
  e:m b:m e:m g
  e1:m e:m d c
  e:m b:m e:m g
  
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
    \transpose d c
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