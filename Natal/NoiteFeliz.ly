\version "2.18.2"

\header {
  title = "Noite Feliz!"
  composer = "FRANZ GRUBBER"
  arranger = "Mario Mascarenhas"
  footer =  "Copiado por SHoo!!! - Flor de Cristo"
}

global = {
  \time 3/4
  \key c \major
}

chordNames = \chordmode {
  \global
  c2. c c c g:7
  g:7 c c f f c c f f c c g:7 g:7 c c c g:7 c c
  
}

melody = \relative c'' {
  \global
  g4.\p-3 a8-4 g4-3  | e2.-1 | g4. a8 g4  | e2. | d'2-5 d4 | 
  b2.        | c2-4 c4 | g2. | a2 a4 | c4.-5 b8 a4 | g4. a8 g4 |
  e2. | a2-3 a4 | c4.-5 b8 a4 | g4. a8 g4 | e2.-1 | d'2\<-5 d4-3\! |
  f4.\> d8 b4\! | c2.-3 | e2.\pp-5 | c4.-"rallentando..." g8 e4 | g4. f8 d4 | c2. <e g c>2.
}
acompanhamento = \relative c {
  \global
  \clef bass
  c4 e g | c, e g | c, e g | c, e g | b, f' g |
  b, f' g | c, e g | c, e g | c, f a | c, f a | c, e g 
  c, e g | c, f a | c, f a | c, e g | c, e g | b, f' g |
  b, f' g | c, e g | c, e g |  c, e g |  b, f' g | c, e g | c,2.
}

words = \lyricmode {
   <<
    \set associatedVoice = "melody"
    {
      \set stanza = #"1. "
      \set associatedVoice = #"melody"
       Noi -- te fe -- liz, noi -- te fe -- liz
       Ó se -- nhor, Deus de_a -- mor
       Po -- bre -- zi -- nho nas -- ceu em Be -- lém
       Eis na la -- pa, Je -- sus nos -- so bem
       Dor -- me em paz, ó Jesus us
       Dor -- me em paz, ó Je -- sus
    }
     \new Lyrics {
      \set associatedVoice = #"melody"
      \set stanza = #"2. "
      Noi -- te fe -- liz, noi -- te fe -- liz
      Eis que no ar vem can -- tar
      Aos pas -- to -- res os an -- jos dos céus
      A -- nun -- cian -- do a che -- ga -- da de Deus
      De Je -- sus, Sal -- va -- dor!
      De Je -- sus, Sal -- va -- dor!
     }
     \new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"3. "

Noi -- te fe -- liz, noi -- te fe -- liz
Ó se -- nhor, Deus de amor
Po -- bre -- zi -- nho nas -- ceu em Be -- lém
Eis na la -- pa, Je -- sus nos -- so bem
Dor -- me em paz, ó Je -- sus
Dor -- me em paz, ó Je -- sus
     }
     \new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"4. "

Noi -- te fe -- liz, noi -- te fe -- liz
Eis que no ar vem can -- tar
Aos pas -- to -- res os an -- jos dos céus
A -- nun -- cian -- do a che -- ga -- da de Deus
De Je -- sus, Sal -- va -- dor!
De Je -- sus, Sal -- va -- dor! 

     }
   >>
 
}

\score {
  <<
    \new ChordNames \chordNames
    \new FretBoards \chordNames
    \new Staff = "up" { \melody }
    \new Staff = "down" { \acompanhamento }
 
  >>

  \layout {
  }
  \midi { }
}
\score {
  <<
    \new ChordNames \transpose c g { \chordNames }
    \new FretBoards \transpose c g { \chordNames }
    \new Staff \transpose c g { \melody }
    \addlyrics { \words }     
    \new Staff \transpose c g { \acompanhamento }
 
  >>

  \layout {
  }
  \midi { }
}
  