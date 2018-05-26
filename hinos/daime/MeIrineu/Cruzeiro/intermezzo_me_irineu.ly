% set the starting point to middle C
% first, define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\version "2.16.0"
\header {
   title = "Intermezzo"
   subtitle = "Em Lá Maior"
   composer = "Mestre Irineu"
   subtitle = \date
   tagline="Flor de Cristo - http://fb.com/flordaconscienciacristica"
}
\paper {
  #(set-paper-size "a4")
}
\include "predefined-guitar-fretboards.ly"
% \storePredefinedDiagram \chordmode { c' }
%                        #guitar-tuning
%                        #"x;1-1-(;3-2;3-3;3-4;1-1-);"
osAcordes = \chordmode {
  % insert chords for chordnames and fretboards here
  a1  e2 a1  a1:7 d2 d1 b2:m e a e a e:7 a 
}
\score {
  \relative c' {  
   << 
     \new ChordNames { \osAcordes }
     \new FretBoards { \osAcordes }
     \new Staff { \clef treble \key a \major   \time 4/4 \override Lyrics . LyricText #'color = #blue
        \bar "|:"
       a8 a cis e a a cis gis 
       b2 a4. a,8
       a a cis e g! g e cis
       a a b cis d2 ~
       d8 a b cis d4 d
       d8 fis fis fis e4 e
       e8 cis cis d e4 e
       e8 cis' cis gis b4 b8 b
       a2
       \bar ":|"
     }
     \new Staff { \clef bass   \key a \major
       a,,4 <e' a> cis <e a> % A
       e,   <a' e> cis, <e a> % E A
       a,4 <e' a> cis <e g> % A A7
       cis <e g>   d <fis a>   % A7 D
       d <fis a>   d <fis a>  % D D
       b,  <d fis>   e  <a e>  % bm E
       a,  <cis e>   e  <a e>   % A E
       a,   <cis e>   e  <a d>    % A E7
       <a,  cis e a>2 % A
     }
   >>
  }
  \header {
      piece = "Em Lá Maior"
  }
}



\score {
  \transpose a c' {
    \relative c' {  
      << 
        \new ChordNames { \osAcordes }
        \new FretBoards { \osAcordes }
        \new Staff { \clef treble \key a \major   \time 4/4 \override Lyrics . LyricText #'color = #blue
           a8 a cis e a a cis gis 
           b2 a4. a,8
           a a cis e g! g e cis
           a a b cis d2 ~
           d8 a b cis d4 d
           d8 fis fis fis e4 e
           e8 cis cis d e4 e
           e8 cis' cis gis b4 b8 b
           a2
        }
        \new Staff { \clef bass   \key a \major
           a,,4 <e' a> cis <e a> % A
           e,   <a' e> cis, <e a> % E A
           a,4 <e' a> cis <e g> % A A7
           cis <e g>   d <fis a>   % A7 D
           d <fis a>   d <fis a>  % D D
           b,  <d fis>   e  <a e>  % bm E
           a,  <cis e>   e  <a e>   % A E
           a,   <cis e>   e  <a d>    % A E7
           <a,  cis e a>2 % A
        }
      >>
    }
  }
  \header {
      piece = "Em Dó Maior"
  }
}

