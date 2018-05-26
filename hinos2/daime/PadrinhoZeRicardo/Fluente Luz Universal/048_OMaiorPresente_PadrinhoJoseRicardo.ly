\version "2.14.2"
\header {
  title="O MAIOR PRESENTE"
  subtitle="Luz Fluente Universal"
  subsubtitle="048" arranger = "Shoo" instrument = "marcha" lastupdated = \date   
  composer="Ben Hershy"
  tagline="Flor de Cristo - http://fb.com/flordaconscienciacristica"
}
pautaAa  =
\relative c'
{
  \clef treble
  \key c \major
  \time 4/4
  \partial 4
  \repeat volta 2 {
  g'4~ g4 g4 a4 g | f e g2 | g4 a g f | e g2 r4 |
  c,4 c e d |
  c b a e'4  | d4 c e d | c2 c4 r4 |
  c4 c e d | c b a e' |  d4 c e d | c2 c4 r4 } \break
  \repeat bolta 2 {
   a2 b4 c | b c  a g | c e2 r4 |
   a,2 b4 c | b c  d  e4 | d2 r2 | \break
   g2 g4 f | e d c e c2 a4 r2 |
   g'2 g4 f | e  d c e2 |
   a,4 b c b c a g c e
   c4 g' g g f e d e c ( c2. ) }
}
\addlyrics 
{
Eu de -- se -- jo pra vo -- cê
E pe -- ço pa -- ra mim
Es -- tar sem -- pre sob o man -- to
Da Vir -- gem Ma -- ri -- a
Es -- tar sem -- pre sob o man -- to
Da Vir -- gem Ma -- ri --  a

As -- sim, se -- lo_a nos -- sa u -- ni -- ão
Na -- da mais há pra di -- ze -- er
Tu -- do fi -- ca assim co -- mo Deus quer
Tu -- do fi -- ca mui -- to bem
Sob o man -- to da Ra -- i -- i --nha
Da paz, da pu -- re -- za e do amor


}
%%48- O MAIO PRESENTE
%%
%%G7       AM                   G7
%%EU DESEJO PRA VOCÊ
%%   AM                  C
%%E PEÇO PARA MIM
%%             C                          AM
%%ESTAR SEMPRE SOB O MANTO
%%    G7                    C
%%DA VIRGEM MARIA
%%
%%AM                                      C
%%ASSIM SELO A NOSSA UNIÃO
%%AM                                     G7
%%NADA MAIS HÁ PRA DIZER
%%G7                                                         AM 
%%TUDO FICA ASSIM COMO DEUS QUER
%% G7                               C
%%TUDO FICA MUITO BEM
%%AM                                C    
%%SOB O MANTO DA RAINHA
%%         G7                                      C
%%DA PAZ DA PUREZA E DO AMOR

harmoniaAa =
\chordmode
{
   \time 4/4
  \partial 4
  g4:7 |
  g2:7
  a2:m |
  a2:m
  g2:7 |
  g4:7
  a2.:m |
  a4:m 
  c2: c4: |
  c1: |
  c2:
  a2:m |
  a1:m
  g1:7 |
  c1: |
  c2:
  a2:m |
  a1:m
  g1:7 |
  
  

  a1:m  | 
  a2.:m  
  c4: |
  c1: |
  a1:m |
  a1:m |
  g1:7 |  
  g1:7 |  
  g1:7 |  
  g2:7
  a2:m |
  g1:7 |  
  g1:7 |  
  c2:   a2:m |
  a1:m |
  c1: |
  g1:7 |
  g2.:7
  c4: | c1:
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



