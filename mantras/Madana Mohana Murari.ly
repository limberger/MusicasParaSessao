\version "1.8.17"

\header {
  dedication="E para ser a versão do homem de bem, mas a divisão não está correta"
  title="Madana Mohana Murari"
  subtitle="Versão Homem de Bem"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Thomaz de Lima"
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
  \key g \major
  \time 4/4
  \partial 4
  fis4
   \repeat volta 2 {   a a2  a4 | g g2.  fis2 | a4 fis4   } \alternative { { r2. fis4 } }   
   \repeat volta 2 { r8 e8 fis g (e2) | r8 e8 fis g ( e2 ) |  e4 fis d2 r1   }
    
 }
\addlyrics
{
Ma -- da  -- na Mo -- ha -- na Mu -- ra -- ri Ma
Ha -- ri -- bol_ Ha -- ri -- bol_ Ha -- ri -- bol
}
harmoniaAa =
\chordmode
{
  \time 4/4
  d4 d1 c d d1 
  c1 e:m e2:m d2 d1
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
    \midi {}
  }
}



