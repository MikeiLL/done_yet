\version "2.18.2"

\header {
  title = "Truckstop Honeymoon"
  composer = "Words and Music by Rivka & Mike iLL"
  tag = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  b8 a b a g4 fis8 g16 fis | e4 d2. | g4 fis8 g16 fis e4 d | g a8 b a g fis4 |
  g d8 r r4 d8 r | r4 d8 r r4 d | g8 d g a b4 a16 b a g | fis4 g2. |
  g8 a4 b8 a g fis4 | b8 a g4 g fis g2 r | r4 << d g b >> r4 << d, g b >> | << d, g b >> r << d,4. g b >> r8 |
  r4 << d g b >> r4 << d, g b >> | << d,4. g b >> r8 d,8 r d d | g4 r g g | g g g g |
  g-^ g g g | g g g g  | g-^ g g g | g g g g |
  g g g g | g g g g | b8 a b a g4 b8 g | b4. g d4 | d2. b8 d |
  b a g a4. fis4 | fis8 g~ g2.~ | g4 d8 e g a b g~ |
  g2 \grace g16 fis4 e | d4 fis g a | g1~ | g |
  g8 g g4 g g | g8 g g4 g g | g8 g g4 g g | g8 g g4 g g | 
}

text =  \lyricmode {
 
	
}


harmonies = \chordmode {
  g1 | 
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
