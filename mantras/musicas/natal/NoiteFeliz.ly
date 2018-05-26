\version "2.16.2"

\header {
  dedication=""
  title="Noite Feliz"
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
\relative c''
{
  \clef treble
  \key c \major
  \tempo 4 = 80
  \time 3/4
  g4. a8 g4 | e2. | g4. a8 g4 | e2. | 
  d'2 d4  | b2. | c2 c4 | g2. | a2 a4 |
  c4. b8 a4 | g4. a8 g4 | e2. | a2 a4 | c4. b8 a4 |
  g4. a8 g4 | e2. | d'2 d4 | f4. d8 b4 | c2. | 
  e2. | c4. g8 e4 | g4. f8 d4 | c2. | <<e2. g c >> 
   \bar "||"
}
\addlyrics
{
  \set stanza = #"1."
Noi4. te8 fe4 liz, noi te fe liz
Ó se nhor, Deus de amor
Po bre zi nho nas ceu em Be lém
Eis na la pa, Je sus nos so bem
Dor me em paz, ó Je sus
Dor me em paz, ó Je sus
}
\addlyrics 
{
  \set stanza = #"2."
Noi te fe liz, noi te fe liz
Eis que no ar vem cantar
Aos pas to res os an jos dos céus
A nun cian do  a_che ga da de Deus
De Je sus, Sal va do or!
De Je sus, Sal va do or!
}
\addlyrics 
{
  \set stanza = #"3."
Noi te fe liz, noi te fe liz
Ó sen hor, Deus de amor
Po bre zi nho nas ceu em Be lém
Eis na la pa, Je sus nos so bem
Dor me em paz, ó Je sus
Dor me em paz, ó Je sus
}
\addlyrics 
{
  \set stanza = #"4."
Noi te fe liz, noi te fe liz
Eis que no ar vem can tar
Aos pas to res os an jos dos céus
A nun cian do a che ga da de Deus
De Je sus, Sal va dor!
De Je sus, Sal va dor!
}
pautaBa =
\relative c
{
  \clef bass
  \key c \major
  \time 3/4
  c4 e4 g4 | c,4 e4 g4 | c,4 e4 g4 | c,4 e4 g4 | d4 f4 g4 |
  d4 f4 g4 | c,4 e4  g4 | c,4 e4 g4 | a,4 c4 f4 | a,4 c4 f4 | c4 e4 g4 |
  c,4 e4 g4 | a,4 c4 f4 | a,4 c4 f4 |   c4 e4 g4 | c,4 e4 g4 | b,4 f'4 g4 |
 | b,4 f'4 g4 | c,4 e4 g4 |  c,4 e4 g4 |  c,4 e4 g4 | b, f' g | c, e g | c,2.
 
  
   \bar "||"
}
harmoniaAa =
\chordmode
{
  \time 3/4
  % Noite Feliz  
  c2.: |
  % Noite Feliz
  c2.: |
  % Õ senhor
  c2.: |
  % Deus de amor
  c2.: |
  % Pobreezinho nas
  g2.:7 |
  % ceu em Belém
  g2.:7 |
  % Eis na lapa Je
  c2.: |
  % sus nosso bem
  c2.: |
  % dorme em paz, õ Je
  f2.: |
  % sus_____
  f2.: 
  % _us
  c2.: |
  c2.: |
  f2.: |
  f2.: | 
  c2.: | 
  c2.: | 
  g2.:7 |
g2.:7 |
c2.: |
c2.: |
c2.: |
g2.:7 |
c2.: |
c2.: 
}
\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \transpose c d \harmoniaAa } 
        \new Staff  \with {instrumentName = #"" shortInstrumentName = #" "} \transpose c d 
\pautaAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \transpose c d \pautaBa
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


