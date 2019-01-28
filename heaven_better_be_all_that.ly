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
  \time 3/4 
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			r2. | bes8 bes bes bes bes4~ | bes2. | ces4 aes2 |
			r2. | bes8 bes bes bes bes4~ | bes2. | ces4 aes2 |
			r2. | bes8 bes bes bes bes4~ | bes2. | ces4 aes2 |
			ges4 aes ges4 | r2. | f4 ges8 aes4. | r4 des,8 f4 ees8 |
			ees4 r2 | r4 ees' des | ces2.~ | ces4 f, des | 
			ees4 r2 | r4 ees' des | ces2.~ | ces4 f, des | 
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

