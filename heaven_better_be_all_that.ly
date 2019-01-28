\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Heaven Better Be All That"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c'' {
  \clef treble
  \key ees \minor
  \time 6/8 
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			r4. bes16 bes bes bes bes8~ | bes4. ces8 aes4 |
			r4. bes16 bes bes bes bes8~ | bes4. ces8 aes4 |
			r4. bes16 bes bes bes bes8~ | bes4. ces8 aes4 |
			ges8 aes ges4 r | f8 ges16 aes8 r16 r8 des,16 f8 ees16 |
			ees4 r4 ees'8 des | ces2 f,8 des | ees4 r4 ees'8 des | 
			ces2.
		}
	}
}

harmony = \relative c'' {
  \voiceTwo
	
}

text =  \lyricmode {
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	More than this? That's a lot. A lot to ask.
}

harmonies = \chordmode {
  	ees2.:m | aes:m
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
    	\new Voice = "lower" { \harmony }
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
""


" "
  }
}

