\version "2.18.2"

\header {
  title = "Better Never"
  composer = "Words and Music by Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

bassline = \relative c, {
	\clef bass
  	\key f \minor
  	\time 4/4
  	f8 r4 f8 c'8 r4 c8 | b8 r4 b8 aes8 r4 aes8 |
}

melody = \relative c'' {
  \clef treble
  \key f \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \partial 4 b8 c |
  des8 c4 c8~ c4 b8 c~ | c4 r2 b8 c | des8 c4 c8~ c4 b8 c~ | c4 r aes2 |
  g4 r2. | r2 b8 b4 b8~ | b4 c r2 | r2. b8 c |
  des8 c4 c8~ c4 b8 c~ | c4 r2 b8 c | des8 c4 c8~ c4 b8 c~ | c4 r aes2 |
  g4 r2. | r2 b8 b4 b8~ | b4 c r2 | r1 |
  f4 aes b8 aes4 b8~ | b4 c r2 | f4 aes b8 aes4 b8~ | b4 c r2 | 
  f4 aes b8 aes4 b8~ | b4 c r2 | f4 aes b8 aes4 b8~ | b4 c r2 | 
}

text =  \lyricmode {
	Ev' -- ry bo -- dy want -- ed me. Ev' -- ry one I'd take or leave, but
	you, Bel -- la -- don -- na.
	In the park be -- hind the trees. I was just a -- bout to leave, but
	you, Bel -- la -- don -- na.
	Touch me, Bel -- la -- don -- na.
	Hold me, Bel -- la -- don -- na.
	Twist me, Bel -- la -- don -- na.
	Fold me, Bel -- la -- don -- na.
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
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}
\new Voice = "bassline" { \bassline }
