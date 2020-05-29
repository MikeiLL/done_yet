\version "2.18.2"

\header {
  title = "Emilio's Violin Dance"
  composer = "Words and Music by Rivka & Mike iLL"
  tag = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c''' {
  \clef treble
  \key d \major
  \time 4/4
  \repeat volta 2 {
  	a4. \grace g16 fis4 a,8 a' aes16 g | fis4 r b,8\staccato b\staccato b16( a8.) |
  	fis'4. \grace g16 e4 d8 g8. fis16 | e8. d16~ d2. |
  	e8.\staccato e16~ e8 d e d e16-^ fis8. | r8 \grace {a16 b16} a8 r8 fis8 a8.-^ b16 a4 |
  	r8 fis b8. \grace b16 ( a~) \tuplet 3/2 { a4 fis d} | fis8. e16( fis8) \grace fis16 e8 \grace fis16 e4-^ d |
  }
 
  
  \repeat volta 2 {
  	a,8 fis'16 a,~ a8 d-^~ d a e'16-^ fis8. | a,8 fis'16 a,~ a8 <d a'>4-^ e8\staccato <d fis>4 |
  	a8 fis'16 a,~ a8 d-^~ d a e'16-^ fis8. | a,8 fis'16 a,~ a8 e' d\staccato cis\staccato d4-^ |
  	a8 fis'16 a,~ a8 d-^~ d a e'16-^ fis8. | a,8 fis'16 a, r8 <d b'> <d a'>\staccato <d a'>\staccato <d a'>4-^ |
  	a8 <d fis>16 <d fis> r8 <d a'>4 <d fis>8 cis16-^( d8.) | a8 fis'16 a, r8 <fis' a>-^ <e a>\staccato cis\staccato d4-^ |
  }
  
  \repeat volta 2 {
  	a''4. \grace g16 fis4 a,8 a' aes16 g | fis4 r b,8\staccato b\staccato b16( a8.) |
  	fis'4. \grace g16 e4 d8 g8. fis16 | e4 d2. |
  	e8.\staccato e16~ e8 d e d e16-^ fis8. | r8 \grace {a16 b16} a8 r8 fis8 a8.-^ b16 a4 |
  	r8 fis b8. \grace b16 ( a~) \tuplet 3/2 { a4 fis d} | fis8. e16( fis8) \grace fis16 e8 \grace fis16 e4-^ d |
  }
  d1~ | d4-^ r2. |
}


	


harmonies = \chordmode {
  
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
  >>
  \layout { }
  \midi { }
}
