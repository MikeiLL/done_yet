\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Imaginary Children"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
 \clef treble
 \key g \major
 \time 4/4
 \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
 #(ly:expect-warning "cannot end volta")
 \repeat volta 3 {
 <<
	   \new Voice = "chorus" {
		 \voiceOne
		 g8 g4 g4. g8 g | a4 g8 g4. g4 | b8( g4) g4. r | r1 | % This ... children
		 b4 b8 b4. b4 | c8 b4. c4 d~ | d2 r | r2. b4 | % Nurtured ... con
		 b2 b4 b | c4 b8 b4. c4 | d4 g2 c4~ | c4 r2. | % ceived ... moments
		 b4 b8 b4. b4 | c8 b4. b4 a8 g~ | g2 r | r1 |
	   }
 >>
	}
	\alternative {
		\context Voice = "verse" {
		   
	   }
		\context Voice = "verse" {
		   
	   }
		\context Voice = "verse" {
		   
	   }
	}
}


chorus =  \lyricmode {
	This is for my im -- a -- gin -- a -- ry child -- ren.
	nur -- tured in the bel -- ly of Soul. Con -- 
	ceived in in -- tox -- i -- ca -- ted mo -- ments.
	Bright -- en -- ing the sha -- dows of the world.
}


verse =  \lyricmode {
}


harmonies = \chordmode {
 g1 | c:9 | g1 | c:9 | 
}

\score {
 <<
   \new ChordNames {
     \set chordChanges = ##t
     \harmonies
   }
   \new Staff  {
     \new Voice = "main" { \melody }
   }
   \new Lyrics \lyricsto "chorus" \chorus
   \new Lyrics \lyricsto "verse" \verse
 >>

  
  \layout { 
   #(layout-set-staff-size 20)
   }
  \midi { 
  	\tempo 4 = 125
  }
  
}

%Additional Verses
\markup \fill-line {
\column {
""
  }
}

