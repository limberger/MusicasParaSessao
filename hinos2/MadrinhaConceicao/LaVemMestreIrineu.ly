\version "2.18.2"

\header {
  title = "Lá vem Mestre Irineu"
  composer = "Madrinha Conceiçao"
  subtitle = "Flor"
}

global = {
  \time 4/4
  \key d \major
  \tempo 4=157	
  
}

chordNames = \chordmode {
  \global
  \set chordChanges = ##t
  d1 a1 d1 a1 d1 a1 d1 b:7m e1:m
  g1 g4 e2.:m g1 g4 e2.:m g1 g2 a2 g4. a a  d8 d2

  d4  a1 d1 a1 d1 a1 d1 b:7m e1:m
  g1 g2 e2:m g1 g2 e2:m g1 g2 a2 g4. g4 a4.  d1
  
  
}

melody = \relative c'' {
  \global
  r2. fis4 \bar "|" e g fis   e   d  r4. fis8   
  fis4 | e g fis  | e  d r4. fis8   | 
  fis4 e g fis  | e  d d   r8 b8  |
  b4   b b b    |  a e'2 r4       |  
  g g g g g fis e r |
  g 
  g g g g fis e r |
  g g g g g fis a
  g g fis8 fis4
  e8 e4 d8 d4 d r8 r4 |

  fis4 e g fis  | e  d r4. fis8   |
  fis4 e g fis  | e  d r4. fis8   | 
  fis4 e g fis  | e  d d   r8 b8  |
  b4   b b b    |  a e'2. r4       |  
  g g g g g fis e r |
  g 
  g g g g fis e r |
  g g g g g fis a
  g g fis8 fis4
  e8 e4 d8 d4 d r8 r4 |

}

words = \lyricmode {
  La Vem Mes -- tre Iri -- neu 
  Com seu ca -- ja --  do na mão
  A -- ben -- ço -- an -- do a to -- dos
  Que es -- tão nes -- te sa -- lão

  Nos -- so Mes -- tre vem Fe -- liz
  A -- den -- trar a nos -- sa festa
  Traz a for -- ça da fa -- lan -- ge
  Dos ca -- bo -- clos da Flo -- res -- ta

  Lá vem mes -- tre Iri -- neu
  Com seu ca -- ja -- do na mão
  A -- ben -- ço -- an -- do a to -- dos
  Que es -- tão nes -- te sa -- lão

  Nos -- so mes -- tre vem Fe -- liz
  A -- den -- trar a nos -- sa festa
  Traz a for -- ça da fa -- lan -- ge
  Dos ca -- bo -- clos da Flo -- res -- ta

  Nos -- so Gran -- de Com -- pa -- nhei -- ro
  Foi Mes -- tre na Dis -- ci -- pli -- na
  Quan -- do im -- plan -- tou na ter -- ra
  Es -- ta di -- vi -- na dou -- tri -- na

  Con -- ti -- nua no es -- pa -- ço
  Do as -- tral su -- pe -- rior
  Ze -- lan -- do pe -- la Dou -- tri -- na
  Au -- men -- tan -- do seu va -- lor


  Nos -- so Gran -- de Com -- pa -- nhei -- ro
  Foi Mes -- tre na Dis -- ci -- pli -- na
  Quan -- do im -- plan -- tou na ter -- ra
  Es -- ta di -- vi -- na dou -- tri -- na

  Con -- ti -- nua no es -- pa -- ço
  Do as -- tral su -- pe -- rior
  Ze -- lan -- do pe -- la Dou -- tri -- na
  Au -- men -- tan -- do seu va -- lor
  
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
