\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Heavenly Rain"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4 
  <<
	\new Voice = "words" {
		\voiceOne 
			
	}
	
	>>
}

harmony = \relative c {
  \voiceTwo
  \key e \minor
  \clef bass
  
}

text =  \lyricmode {
<<
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"1. " 
      	One two three four
		Five Six Seven Eight

		Me and my peops are
		Pretty great pretty great

		We’ve got a little story
		We’d like to share

		To everyone here
		And everyone there

		Once there was
		And once there wasn’t

		A couple of hundred
		A hundred dozen

		Prayers in the wind
		Like stars in the sky

		Somebody out there
		Hear my cry

		Singing it once
		Dancing it twice

		I’m gonna love me
		Love my life

		All of my troubles
		All of my pain

		Washed away by
		Heavenly rain

		Heavenly raindrops
		Falling all around

		Falling like drum beats
		Listen to the sound

		One two three four
		Five six seven eight

		Me and my peops are
		Really great really great.
      }
    	
>>

}


verseFive = \lyricmode {
	\new Lyrics {
      \set associatedVoice = "hidden"
      \set stanza = #"5. " 
    }
}

harmonies = \chordmode {
}
  

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies 
    }
    \new PianoStaff {
    <<
    	\new Voice = "voice" { \melody  }
  		\new Lyrics \lyricsto "words" \text
    	\new Voice = "chords" { \harmony  }
    >>
  	}
  >>
  
  \layout { 
   #(layout-set-staff-size 22)
   }
  \midi { 
  	\tempo 4 = 125
  }
  
}


%Additional Verses
\markup \fill-line {
\column {
	"Monotone:"
	"Guess I'm tryina build an ounce of confidence back."
	"Why would someone want someone this broken in half?"
	"Floating through the air like a plain white baloon,"
	"Out of touch, out of mind, out of tune."
	""
	"Sung:"
	"Away, away, away, away."
  }
}

