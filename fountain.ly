\version "2.18.2"

\header {
  title = "Fountain"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key d \major
  \time 4/4
	<<
	\new Voice = "words" {
		e4 fis8 a~ a2 | e4 d8 b~ b2 | fis4 b8 e8~ e( fis e d) | e4 d8 b~ b4 r |
		e4 fis8 a~ a2 | e4 d8 b~ b2 | fis4 b8 e8~ e( fis e d) | e4 d8 b~ b4 r |
		\time 7/8
		b4 e4. fis4 | a fis4. e4 | d e4. e4 | fis e4. d4 |
		cis e4. fis4 | a fis4. e4 | d e4. e4 | fis e4. d4 |
		b' b4. b4 | b cis4. b4 | b a4. g4 | fis g4. a4 |
		b b4. b4 | cis cis8( b a) b4 | a g4. g4 | fis e8( fis g a b) | b2.~ b8 |
	  }
	>>
}

verse_one =  \lyricmode {
  \set associatedVoice = "words"
  Mouis -- tur -- ize. Mouis -- tur -- ize. Mouis -- tur -- ize. Mouis -- tur -- ize.
  Feast your eyes. Feast your eyes. Feast your eyes. Feast your eyes.
  Your shoul -- ders, your shoul -- ders, your tight, ach -- ing shoul -- ders.
  Lay down on your bel -- ly. I'll rub them all o -- ver.
  What more than our bo -- dies al -- lows us to min -- gle.
  I jin -- gle, you tin -- gle.
  I feel like a foun -- tain.
}

harmonies = \chordmode {
  b1:m  
}

\score {
  
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }

    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \verse_one
  >>
  \layout { }
  \midi { }
}
