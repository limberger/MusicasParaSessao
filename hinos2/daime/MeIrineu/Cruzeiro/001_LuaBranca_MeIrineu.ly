\version "2.16.2"

\header {
  dedication=""
  title="Lua Branca"
  subtitle="Mestre Irineu"
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

pautaAa =
\relative c'
{
  \clef treble
  \key c \major
  \time 3/4
   \partial 4
  c4 | f2 a4 | c c d | d2 c4 | e,2. |
  c4 e4 g4 | ais2 d4 | d2 c4 | f,2. |
  f4 a4 c4 | c d f | e2. | d2. |
  e4 d c | g ais e | g2. | f2. |
  c4 f e d2. c4 f e d2
  
   \bar "||"
}
\addlyrics
{
Deus te2  sal4"ve, oh!"4 Lu a | Bra -- an -- ca2.
Da luz tão pra2 -- te -- a2 -- a -- da
Tu sois mi -- nha Pro -- te -- to -- ra
De Deus tu sois es -- ti -- ma -- da
Oh! Mãe Divina do coração
Lá nas alturas onde estás
Mi -- nha Mãe lá no Céu
Dai-me o perdão

}
\addlyrics 
{
Das flores do meu país
Tu sois a mais delicada
De todo meu coração
Tu sois de Deus estimada
Oh! Mãe Divina do coração
Lá nas alturas onde estás
Mi -- nha Mãe lá no Céu
Dai-me o perdão
}
\addlyrics 
{
Tu sois a flor mais bela
Aonde Deus pôs a mão
Tu sois minha advogada
Oh! Virgem da Conceição
Oh! Mãe Divina do coração
Lá nas alturas onde estás
Mi -- nha Mãe lá no Céu
Dai-me o perdão
}
\addlyrics 
{
Estrela do Universo
Que me parece um jardim
Assim como sois brilhante
Quero que brilhes a mim
Oh! Mãe Divina do coração
Lá nas alturas onde estás
Mi -- nha Mãe lá no Céu
Dai-me o perdão
}

harmoniaAa =
\chordmode
{
  \time 3/4
  \partial 4

  f4:  |
  f2.: |
  f2.: |
  c2.: |
  c2.: |
  c2.: |
  bes2.: |
  d2.:m |
  f2.: |
  f2.: |
  f2.: |
  c2.: |
  d2.:m |
  c2.: |
  c2.: |
  c2.: |
  f2.: |

}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \pautaAa
      >>
    }
    \layout {}
    \midi {}

  }
}

\bookpart {
  \header {instrument=""}
  \score {
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


