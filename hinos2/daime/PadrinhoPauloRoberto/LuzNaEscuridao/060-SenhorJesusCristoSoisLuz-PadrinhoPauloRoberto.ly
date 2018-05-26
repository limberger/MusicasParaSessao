\version "2.19.15"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Senhor Jesus Cristo Sois Luz"
  subtitle="Luz na Escuridão"
  subsubtitle="060"
  poet=""
  meter=""
  piece=""
  composer="Padrinho Paulo Roberto"
  arranger="Shoo"
  opus=""
  instrument="Acordeom"
  copyright="     "
  tagline="Flor de Cristo - http://fb.com/flordaconscienciacristica"
}
harmoniaAa =
\chordmode
{
  \tempo 4=60
  \time 4/4
  \partial 4
  
  d4: |
  d1:  |
  d2.: b4:m  |
  b2.:m   d4:  |
  d1:  |
  d2.: b4:m  |
  b2.:m  r4 |
  d1: |
  d1: |
  d1: |
  g1: |
  g2:  d2: |
  d1: |
  d1: |
  d1: |
  g1: |
  g2: d4: a4: |
}
pautaAa =
\relative c' {
  \clef treble
  \key g \major
  \time 4/4
  \partial 4
  
  a'4 | d2 e4  d | e d e  fis4 ( | fis2 )  r4
  a,4 | d2 e4  d | e d e  fis4 ( | fis2. ) r4 |
  r2 fis4 fis4 | fis4 fis4   g fis4  a fis2 r4 |
  g4 g g g | g g  fis2 |
  fis4 fis4 fis4 fis4  | g fis4  a fis4 ( | fis4 ) r2. |
  g4 g g g | g g  fis2 |
  
  \bar "||"
}
\addlyrics
{ 
Se -- nhor Je -- sus Cris -- to Sois Luz
Se -- nhor Je -- sus Cris -- to Sois Luz
Do -- mi -- nai meu pen -- sa -- men -- to
Ha -- bi -- tai minha cons -- ci -- ência
Sin -- to_em mim Vos -- sa Pre -- sen -- ça
Que -- ro ser Vos -- so Al -- tar

}
\addlyrics
{ 
Eu devo ser a_mo -- ra -- da da Luz
Do Vosso Fo go, que_é_o Di -- vi -- no_Resplendor
O apa -- re -- lho pu -- ro_e san -- to
Con -- sa -- gra -- do ao a -- mor
A Deus sobre to  -- das as coi -- sas
Co mo Vós nos en -- si -- nou

}
\addlyrics
{
Eu Vos ofe -- reço humil -- de -- men -- te
Sin -- ge -- la casa interior da minha mente
Mora em mim, oh, San -- ta Lu -- uz
Que eu alcan -- ce o_meu per -- dão
Te re -- ce -- bo em mim Je -- sus
Sois a nos -- sa sal -- va -- ção
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new FretBoards {\set chordChanges = ##t \harmoniaAa}
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




