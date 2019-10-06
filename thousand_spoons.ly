\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Thousand Spoons"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c'' {
 \clef treble
 \key d \major
 \time 7/8
 \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
 #(ly:expect-warning "cannot end volta")
 	a8 bes cis d e d4 | cis2~ cis4. |
 	cis8 d e f g f4 | e2~ e4. |
 	a,8 bes cis d e d4 | cis8 d e f g f4 | 
 	a,8 bes cis d cis bes4 | ais2~ ais4. |
     \voiceOne
      <<
	\repeat volta 3 {
		\new Voice = "words" {
		\voiceOne 
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4. c a8~ | % I won't be de -- fined by old fa -- shion fai -- ry tales.
			a2~ a4.~ | a2~ a4. |
			cis4 cis4. a4 | a8 g g4. fis4 | f g4. a4 | bes4. c4. a8~ | % Clear walls in -- vi -- si -- ble un -- til I be -- gin to dance.
			a2~ a4.~ | a2~ a4. |
		
		\new Voice = "lil_melody" {
			a8 bes cis d e d4 | cis2~ cis4. |
 			cis8 d e f g f4 | e2~ e4. |
 		}
 		
		cis4 cis4. a4 | a4 g8 g4 fis4 | f g4. a4 | bes4 c4. a4~ | % Danc -- ing my scars o -- pen to see what I'm made out of.
		a2~ a4.~ | a2~ a4. |
		cis4 cis4. a4 | a4 g4. fis4 | f4 g4. a4 | bes4. c4 a4~ | % Jack in the pul -- pit the co -- lor of men -- strual blood.
		a2~ a4.~ | a2~ a4. |
		a2\glissando e'4. | a,2\glissando e'8 % Me me. Full
		}
		\new Voice = "refrain" {
			d4 | d4 d4. c4 | bes4 bes4. a4 | a4 g8 fis2~ | fis4.~ fis4 d'4 | % Full color... Full
			d4~ d4. c4 | bes4~ bes4. a4 | a4 g8 fis2~ | fis4 fis8 g a4 bes8~ | % on, full time... a silver-
			bes4 c4~ c4.~ | c4. bes4 a4~ | a2~ a4.~ | a4 fis8 g a4 bes8~ | 
			bes4 c4~ c4.~ | c4. bes4 a4~ | a2~ a4.~ | a2 r4. |
		}
	}
	\new NullVoice = "hidden" {
	  \voiceTwo
      \hideNotes {
			
		}
	}
	
	>>
}
   
refrain =  \lyricmode {
 Full co -- lor, full gen -- der, full won -- der -- ful.
 Full on, full time, a thou -- sand spoons
 on a sil -- ver chain my dream.
 I will not re -- main un -- seen.
}

text =  \lyricmode {
      \set associatedVoice = "words"
	  \set stanza = #"1. "
		I won't be de -- fined by old fa -- shion fai -- ry tales.
		Clear walls in -- vi -- si -- ble un -- til I be -- gin to dance.
		Danc -- ing my scars o -- pen to see what I'm made out of.
		Jack in the pul -- pit the co -- lor of men -- strual blood.
		Me__ Me__
}


harmonies = \chordmode {
 a2 a4. | a2 a4. |
 d2:min d4.:min | d2:min d4.:min | 
 a2 a4. | d2:min d4.:min | 
 a2 a4. | a2 a4. |
 a2 a4. | g2 g4. |
 f2 f4. | bes2:min/f bes4.:min/f |
 a2 a4. | a2 a4. |
 a2 a4. | g2 g4. |
 f2 f4. | bes2:min/f bes4.:min/f |
 a2 a4. | a2 a4. |
 a2 a4. | d2:min d4.:min | 
 a2 a4. | a2 a4. |
 a2 a4. | g2 g4. |
 f2 f4. | bes2:min/f bes4.:min/f |
 a2 a4. | a2 a4. |
 a2 a4. | g2 g4. |
 f2 f4. | bes2:min/f bes4.:min/f |
 a2 a4. | a2 a4. |
 a2 a4. | a2 a4. |
 
 d2:7 d4.:7 | g2:min g4.:min |
 d2:7 d4.:7 | d2:7 d4.:7 | 
 d2:7 d4.:7 | g2:min g4.:min |
 d2:7 d4.:7 | d2:7 d4.:7 | 
 d2:7 d4.:7 | d2:7 d4.:7 | 
 d2:7 d4.:7 | d2:7 d4.:7 | 
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
   \new Lyrics \lyricsto "refrain" \refrain
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

