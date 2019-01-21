\version "2.19.82"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Find Me"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 6/8 
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			f2( e8 f | d4.) r | e4 f r |
			r2 r8 g | a4 bes2 |r2 r8 c |
			c4.( bes4) a8 | a4. a4 f8 | g4 a8 g4 a8 |
			f8( e f4) r | r2. |
		}
	}
}

harmony = \relative c'' {
  \voiceTwo
	
}

text =  \lyricmode {
	You find me, re -- mind me good- bye good- 
	bye just a tem -- po -- ra -- ry spell
}

harmonies = \chordmode {
  	 
}

\score {
  <<
    \new ChordNames {
      \set chordChanf = ##t
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
"2. Your eyes are the sun an moon."

" "
  }
}

