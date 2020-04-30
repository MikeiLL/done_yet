\version "2.18.2"

\header {
  title = "Twenty Twelve"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }


melody = \relative c' {
  \clef treble
  \key aes \minor
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
	\new Voice = "words" {
	
		
	}
}

text =  \lyricmode {
  \set associatedVoice = "words"
  
	Be -- lieve or don't be -- lieve you won't be -- lieve what we got.
	A tall tale sto -- ry re -- al -- is -- tic or not.
	Spun out kid we used to hang out with used to throw e -- vents on the ship at the dock.
	
	Bet -- ter believe I'm paranoid and contemplating what keeps people in denial with their eyes glued shut.
	We worship at the feet of anybody who vies to convince us convince us of comforting lies

}




harmonies = \chordmode {
	
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
  
  \layout { }
  \midi { }
}

% Additional Notes
\markup \fill-line {
" "
}

