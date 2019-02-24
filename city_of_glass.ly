\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "City Made of Glass"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c'' {
  \clef treble
  \key bes \major
  \time 4/4 
	\new Voice = "words" {
		\voiceOne 
		
		 d8 d ees4 f g | f8 f ees4 d r8 bes8 | d4 ees8 f4. ees8 ees | d d c bes4 r8 bes |
		 d4 ees8 f4. g8 g | f f ees d4. r bes8 | d4 ees f8 f ees4 | d8 d c4 bes4\fermata  \tuplet 3/2 f8 f f } |
		 \key bes /minor
		\repeat volta 2 {
			 f bes,4. d4 f |
		}
	}
}


text =  \lyricmode {
	If you beg me to stay I might be per --
	sua -- ded. I've done it be- done it be --
	fore times when you ha -- ted. Now it's your
	turn. Roll o -- ver play dead. Give it to me
	One. Give it to me one time.
	Give it to me one time.
	Give it to me one more time.
}

harmonies = \chordmode {
  	
}
  

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose e c { \harmonies }
    }
    \new Staff {
    <<
    	\new Voice = "voice" { \melody }
  		\new Lyrics \lyricsto "words" \text
    >>
  	}
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
"2. Lately what can I say? You're clearly frustrated."
"I'm running with ghosts of the past. It's complicated."
"Come to my feet. Hear me relate it."
" "
"3. Armstrong baggages last, as I've demonstrated."
"I've had a few lovers before might have related."
"Just so you know, I'm overrated."
" "
"4. Hold me close to your heart. Betrayal has faded."
"We made up and shared a few tears and fornicated."
"But you may find my heart is shaded."
" "
"5. Black holes burst into stars the moment our gaze met."
"My heart up inside of my throat, eyes dilated."
"You lead me in. Somehow we made it."
" "
  }
}

