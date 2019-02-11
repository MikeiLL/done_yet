\version "2.18.2"

\header {
  title = "Turn Together – Rikki's Song"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
	\new Voice = "words" {
	\repeat volta 2 {
		c4 c d f | f a8 g4 f8 d4 | f a8 g4 f8 f4 | \time 2/4 g a |
		\time 4/4 c~ \tuplet 3/2 {c8 bes a } g2 | r1 |
		bes4 bes8 bes4 bes8 c4 | d d8 d4 d8 c4 | bes8 bes bes bes4 bes8 c4 | \time 2/4 d f8 f |
		\time 4/4 d4 d8 d4 bes8 d4 | bes8 c4. r2 | r1 |
		c8 c a a g4 f | c8 c a a g4 f | c g( a8~) a2 | r1 |
		} 
	  }
}

text =  \lyricmode {
  Let's all face the facts to -- ge -- ther let's turn to -- ge -- ther to face the 
  truth.
  Blas -- ting mu -- sic with sil -- ken blin -- ders on. Sing -- ing the sto -- ries we seem to 'ave
  ta -- cit -- ly a -- greed u -- pon.
  Pass a -- no -- ther king down. Pass a -- no -- ther queen down the line.
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
    \new Lyrics \lyricsto "words" \text
  >>
  \layout { }
  \midi { }
}
