\version "2.16.2"

\header {
  dedication=""
  title="Bom Natal"
  subtitle="Natal"
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

pautaAa =
\relative c'
{
  \clef treble
  \key c \major
  \tempo 4 = 80
  \time 4/4
  \repeat volta 2 { e d c d8 e | f4 e d e8 f | g4 f e f8 g | } \alternative { { a4 g f e8 f | d1 } {a'4 g f g8 a  } } |
  b1 | c4 b a g8 a | b4 a g f8 g | a4 g f e8 f | d1 | d8 e f g e4 d | e8 f g a f4 e | fis8 g a b g4 fis4 | b1 |
  c4 b a g8 a | b4 a g f8 g | 
  a4 g f e8 f | d2 d4 e | c1 
   \bar "||"
}
\addlyrics
{
  \set stanza = #"1."
  Que -- ro ver vo -- cê nao cho -- rar
  Nao o -- lhar pra tras 
  Nem se arre -- pen -- der do que faz
  
  re -- sis -- tir -- e -- sor -- rir
  Se vo -- ce  pode ser as -- sim
  Tao e nor me as sim eu vou crer
  Que o Na tal_e xis te que nin guem e tris te
  Que no mun do_ha sempre a mor
  Bom Na tal, um fe liz Na tal
  Muito a -- mor e paz
  Pra vo -- ces Pra vo -- ces
  
}
\addlyrics
{
  \set stanza = #"2."
  Que -- ro ver o a -- mor cres -- cer
  Mas se a_dor nas -- cer
  Vo -- ce
}
harmoniaAa =
\chordmode
{
  \time 4/4
  % Noite Feliz  
  c1: | d:m | e:m | f: | g:7 |
  f: | g: | f: |  e:m | d:m | g: | e:m | d:m | b:7 | e:m | f: | e:m | d:m | g: | c:
}
\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t  \harmoniaAa } 
        \new Staff  \with {instrumentName = #"" shortInstrumentName = #" "} \pautaAa
%%        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \transpose c d \pautaBa
      >>
    }
    \layout {}
    \midi {}

  }
}

%% \bookpart {
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
}


