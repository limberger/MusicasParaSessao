\version "2.18.2"

\header {
  title = "Sinais de Fumaça"
  composer = "Flávio Passos"
  subtitle = "Flor"
}

global = {
  \time 4/4
  \key e \major
  \tempo 4=157	
  
}

chordNames = \chordmode {
  \global
  \set chordChanges = ##t
  r2 cis2.:7 fis2:7m  | e2 cis2:7 
  b:7 fis4.:7m b2:7 fis2:7m fis8:7m 
    b2:7 fis:7m gis2:7 cis2:7  
  
}

melody = \relative c'' {
  \global
  r2 \repeat volta 2 { cis8 cis8 cis8 cis8 cis8 cis8  fis8
  fis8 fis8 fis e fis  gis e cis4 }
  e8 e  dis  e fis dis cis a cis b cis dis b cis r4
  
  e8 e  dis  e fis gis a gis fis e dis  b fis' e cis
 
  
}

words = \lyricmode {
Ao ven -- to so -- pra fu -- ma -- ça em si -- nal de Gra -- ti -- dão



Pois o fo -- go da for -- na -- lha_ar -- de -- em meu co -- ra -- ção

Pois o fo -- go da for -- na -- lha ar -- de -- em meu co -- ra -- ção



No calor deste amor ouço o som do acordeom

No calor deste amor ouço o som do acordeom

É o início dos festejos de meu Senhor São João

É o início dos festejos de meu Senhor São João


Cada lenha da fogueira faz sua participação

Cada lenha da fogueira faz sua participação

Empilhadas em conjunto que fazem a união

Empilhadas em conjunto que fazem a união


A de cima ou a de baixo não importa a posição

A de cima ou a de baixo não importa a posição

Todas tem o seu lugar dentro da celebração

Todas tem o seu lugar dentro da celebração


Um sorriso entre as estrelas é o senhor da criação

Um sorriso entre as estrelas é o senhor da criação

Desejando a cada filho plena realização

Desejando a cada filho plena realização
 
}


\score {
  <<
    
    \new ChordNames \chordNames
    % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { indent = 2\cm 
  \context {
    \StaffGroup
    \override StaffGrouper.staff-staff-spacing.basic-distance = #8
  }
  }
  
  
  \midi {  }
}
\markup {
  \fill-line {
    \column {
      \left-align {
\line {  [ Ao vento sopra fumaça em sinal de Gratidão ] }
\line {  [ Pois o fogo da fornalha arde em meu coração ] }
\line { . }
\line { [ No calor deste amor ouço o som do acordeom ] }
\line { [ É o início dos festejos de meu Senhor São João ] }
\line { . }
\line { [ Cada lenha da fogueira faz sua participação ] }
\line {  [ Empilhadas em conjunto que fazem a união ] }
\line { . }
\line { [ A de cima ou a de baixo não importa a posição ] }
\line { [ Todas tem o seu lugar dentro da celebração ] }
\line { . }
\line { [ Um sorriso entre as estrelas é o senhor da criação ] }
\line { [ Desejando a cada filho plena realização ] } 

      }
    }
  }
}
