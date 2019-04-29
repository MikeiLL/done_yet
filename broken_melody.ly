\version "2.18.2"

\header {
  title = "Broken Melody"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

bassline = \relative c, {
	\clef bass
  	\key bes \minor
  	\time 4/4
  	b4 r2. |
}

melody = \relative c'' {
  \clef treble
  \key bes \minor
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
  <<
	  \new Voice = "words" {
		  \repeat volta 2 {
			 
		  }
			aes8 aes aes4 g8 g g4 | aes g f r | aes8 aes aes4 aes bes | c r c4. c8  |
			c1~ | c4 r c4. c8 | c1~ | c4 r c4 des | 
			\tuplet 3/4 { ees4 des c } | des1 | ees4. ees8 ees ees4 ees8~ | ees2 f4. f8 | 
			f4. f8~ f2~ | f4 r f4. f8 | f1~ | f4 r f ges | 
			aes ges f ges~ | ges1 | f2 f4 f~ | f f2 f4~ | 
			f1~ |f | r | r |
	  }
  >>
}


text =  \lyricmode {
      \set associatedVoice = "words"
	  \set stanza = #"1. "
		
}

wordsTwo =  \lyricmode {
	\set associatedVoice = "words"
	\set stanza = #"2. " 
	All the pri -- zes you a -- chieved, all the child -- ren that you saved, but 
	you, Bel -- la -- don -- na.
	All the de -- mons that you faced, all the hu -- mans you ap -- praised, but
	you, Bel -- la -- don -- na.
	Love -- ly, Bel -- la -- don -- na.
	Lone -- ly, Bel -- la -- don -- na.
	Twist me, Bel -- la -- don -- na.
	Fold me, Bel -- la -- don -- na.
}

harmonies = \chordmode {
	bes:min
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff  {
    <<
    	\new Voice = "upper" { \melody }
    >>
  	}
  	\new Lyrics \lyricsto "words" \text
  	\new Lyrics \lyricsto "words" \wordsTwo
  >>
  
  \layout { }
  \midi { }
}

% Additional Notes
\markup \fill-line {
"Bass line:"
}

\new Voice = "bassline" { \bassline }
