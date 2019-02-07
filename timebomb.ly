\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Time Bomb"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key c \minor
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			r8 c c b c des c( b) | des des c des~ des2 | r8 des des c des( ees) des c | ees ees des c~ c2 | % I put together ... demand
			r8 c4 b8 c ees des c | des des c des~ des2 | r8 des des c des ees des( c) | ees ees des c~ c2 |
		}
	}
}


text =  \lyricmode {
      \set associatedVoice = "words"
	  \set stanza = #"1. "
		I put to -- ge -- ther this cas -- tle of sand based on the laws of sup -- ply and de -- mand.
		Don't just sit there like a bump on the floor danc -- ing your thumbs a -- round eye -- ing the door.
}


harmonies = \chordmode {
  	c:m
  	
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
  >>
  
  
  \layout { 
   #(layout-set-staff-size 16)
   }
  \midi { 
  	\tempo 4 = 125
  }
  
}

%Additional Verses
\markup \fill-line {
\column {


" "
  }
}

