\version "2.18.2"

\header {
  title = "Actors or Volunteers"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key bes \major
  \time 6/8 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
  
  \new Voice = "words" {
  		bes8 bes bes( bes4) c8 | c4 bes8 bes4 d8 | d4 bes8 bes4 c8 | c bes4 g8 f4\fermata |
		bes8 bes bes( bes4) c8 | c4 bes8 bes4 d8 | d4 bes8 bes4 c8 | c bes4 g8 f4 |
		f'8 f f4. g8 | g4 f8 f4 d8 | d4 f4. bes8 | g4 g8 g4 g8 | d4 d8 d4 bes8 |
		c4 c8 c4 bes8 | g4 bes4. r8 |
		bes4 d8 c4 bes8 | g4. g4 f8 | f4. g4 bes8 | c4 d8 bes4.
	}
  
}

text =  \lyricmode {
    \new Lyrics {
    \set associatedVoice = "melody"
    	Duh duh duh deh deh duh duh deh deh duh duh deh deh da duh duh.
		Now I lay me down to be -- ing treat -- ed by the ma -- jor doc -- tor.
		Ah la la la la la la luh luh la eh le le le la le le le luh
		le le le la lu la
		la le la la lu lu la la la la la la la
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
  	\new Voice = "voice" { \melody  }
  	\new Lyrics \lyricsto "words" \text
  >>
  
  \layout { }
  \midi { }
}

%Additional Notes
\markup \fill-line {
\column {
" "
" "
" "
" "
" "
  }
}
