\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Thousand Spoons"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c'' {
 \clef treble
 \key a \major
 \time 7/8
 \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
 #(ly:expect-warning "cannot end volta")
 	a8 bes cis d e d4 | cis2~ cis4. |
 	cis8 d e f g f4 | e2~ e4. |
 	a,8 bes cis d e d4 | cis8 d e f g f4 | 
 	a,8 bes cis d cis bes4 | ais2~ ais4. |
     \voiceOne
      <<
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 3 {
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4. c a8~ | % I won't be de -- fined by old fa -- shion fai -- ry tales.
			a2~ a4.~ | a2~ a4. |
			cis4 cis4. a4 | a8 g g4. fis4 | f g4. a4 | bes4. c4. a8~ | % Clear walls in -- vi -- si -- ble un -- til I be -- gan to dance.
			a2~ a4.~ | a2~ a4. |
		}
	}
	\new NullVoice = "hidden" {
	  \voiceTwo
      \hideNotes {
			
		}
	}
	
	>>
}
   


chorus =  \lyricmode {
 Full co -- lor, full gen -- der, full won -- der -- ful.
 Full on, full time, a thou -- sand spoons
 on a sil -- ver chain my dream.
 I will not re -- main un -- seen.
}

text =  \lyricmode {
      \set associatedVoice = "words"
	  \set stanza = #"1. "
		I won't be de -- fined by old fa -- shion fai -- ry tales.
		Clear walls in -- vi -- si -- ble un -- til I be -- gan to dance.
}



harmonies = \chordmode {
 a2:maj a4.:maj |
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
  	\new Lyrics \lyricsto "words" \text
   % \new Lyrics \lyricsto "chorus" \chorus
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

" "
  }
}

