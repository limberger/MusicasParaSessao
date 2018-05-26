\version "2.18.2"

\header {
  title = "Minha Rosa do Jardim"
  subsubtitle = "(cada par de frases 2x)"
  composer = "Padrinho Alfredo"
}
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

 \repeat volta 2 { e4 g g c c g2. a4 g f f e  d e2 }
 \repeat volta 2 { g4 g  e2 e4  c a2 a4 d d g g e c a c c }


}
text = \lyricmode {
Ó mi -- nha vir -- gem Mãe
Vós que me fi -- zestes as -- sim 
Mi -- nha flor, mi -- nha es -- pe -- rança
Minha rosa do jardim
Este perfume de rosa
Este cheiro de jasmim
Minha flor, minha esperança
Minha rosa do jardim
Vou zelando este presente
Que mandastes para mim
MInha flor, minha esperança
Minha rosa do jardim
Eu estou neste jardim
Desta flor imperial
Esta flor, minha linda flor
Do reinado do astral
}
harmonies = \chordmode {
  c1 c1 c2 f g c2 
  c am f g c
  c f g c 
  c am f g c
  c f g c 
  c am f g c
  c f g c 
  c am f g c
}
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \autoBeamOff \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}