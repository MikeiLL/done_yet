\version "2.18.2"

\header {
  title = "Monkeys in a Circle"
  composer = "Words and Music by Rivka & Mike iLL"
  tag = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key d \major
  \time 4/4
  \repeat volta 2 {
  fis8 fis fis e d4 b8 b | d8 d d4 d b | % Very far
  fis'8 fis fis e d4 b4 | d d8 b d4 b | % Many many
  fis'4 fis8 e d4 b4 | d d8 b d4 b | % One at a time 
  fis'8 fis fis e d4 b4 | \tuplet 3/2 { d4 d d} d4 r | % Jumping
  d4 d d r | d' d d r |
  }
  
}

text =  \lyricmode {

 {
 \set stanza = #"1. " 
   Ve -- ry far a -- way in the Mick -- ey Mac jun -- gle
   Ma -- ny ma -- ny mon -- keys danced in a cir -- cle
   One at a time they dance in the mid -- dle.
  }
	
}


harmonies = \chordmode {
  c1 | d1 | c1 | d1 |
  c1 | d1 | c1 | d1 |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}
