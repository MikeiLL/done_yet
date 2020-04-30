\version "2.18.2"

\header {
  title = "Actors or Volunteers"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key bes \major
  \time 6/8 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
  
  \new Voice = "words" {
  		bes8 bes bes( bes4) c8 | c4 bes8 bes4 d8 | d4 bes8 bes4 c8 | c bes4 g8 f4\fermata |
		bes4 bes8 bes4 c8 | c4 bes8 bes4 d8 | d4 bes8 bes4 c8 | c bes4 g8 f4 |
		f'8 f f4. g8 | g4 f8 f4 d8 | d4 f2~ | f4. r4 bes8 | 
		g4 g8 g4 f8 | d4 d8 d4 bes8 |
		c4 c8 c4 bes8 | g4 bes4. r8 |
		bes4 d8 c4 bes8 | g4. g4 f8 | f4. g4 bes8 | c4 d8 bes4.
		
		bes4 bes8 bes4 c8 | c4 bes8 bes4 d8 | d4 bes8 bes4 c8 | c4 bes8 g8 f4\fermata | % open up the door and see the man who's asking for some money
		bes8 bes bes bes4 bes8 | c c bes bes8 bes4 | \tuplet 4/3 { d8 bes bes bes } bes8. bes | c8 bes4 g8 f4 | % Is it a man or is it a woman definitely someone really skinny.
		bes4. bes | c8 bes4 bes4. | bes'8 g g g g g | a4 g8 d4. | % Dark skin, missing teeth. Shouldn't have traded the car away.
		d4 d8 d4 d8 | ees4 d8 c4 bes8 | c16 bes8.~ bes8 bes4. | % Now I've got a one that's got no title signed.
		
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
		
		O -- pen up the door and see the man who's ask -- ing for some mo -- ney.
		Is it a man or is it a wo -- man de -- fi -- nite -- ly some -- one real -- ly skin -- ny.
		Dark skin, mis -- sing teeth. Should -- n't have tra -- ded the car a -- way.
		Now I've got a one that's got no ti -- tle signed.
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
