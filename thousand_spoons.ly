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
 \set Score.voltaSpannerDuration = #(ly:make-moment 7/8)
 \override Glissando.style = #'zigzag
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
		a2.-\bendAfter #5 r8 | r4 r4. r4 | a2.-\bendAfter #5 r8 | r4 r4. % Me me. Full
		}
		\new Voice = "refrain" {
			d4 | d4 d4. c4 | bes4 bes4. a4 | a4 g8 fis2~ | fis4.~ fis4 d'4 | % Full color... Full
			d4~ d4. c4 | bes4~ bes4. a4 | a4 g8 fis2~ | fis4 fis8 g a4 bes8~ | % on, full time... a silver-
			bes4 c4~ c4.~ | c4. bes4 a4~ | a2~ a4.~ | a4 fis8 g a4 bes8~ | 
			bes4 c4~ c4.~ | c4. bes4 a4~ | a2~ a4.~ | a4 fis8 g a4 bes8~ | 
			bes4 c4~ c4.~ | c4. bes4 a4~ | a2~ a4.~ | a2 r4. |
		}
	}
	\new NullVoice = "hidden" {
	  \voiceTwo
      \hideNotes {
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4 c4. bes8 a | % Sor -- ry. So sor -- ry do I make you un -- com -- fort -- a -- ble?
			a2~ a4.~ | a2~ a4. |
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4 c4. bes4 | % I am what I am so don't wor -- ry you're not re -- spon -- si -- ble.
			bes4 a8 a~ a4.~ | a2~ a4. |
			r4 r4. r4 | r4 r4. r4 | r4 r4. r4 | r4 r4. r4 |
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4 c4. bes4 | % Science must bend to the be -- ings it's claim -- ing to class -- i -- fy.
			bes4 a8 a~ a4.~ | a2~ a4. |
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4 c4. bes4 | % Ab -- stract sta -- tis -- tics  beau -- ro -- crats use to YOU -- den -- ti -- fy
			bes8 a a4~ a4.~ | a2~ a4. |

		}
	}
	\new NullVoice = "hidden_two" {
	  \voiceTwo
      \hideNotes {
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4 c4. a4~ | % I let my hair grow and you want to dock my pay.
			a2~ a4.~ | a2~ a4. |
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4 c4. a4~ | % I like my nose ring and you want it hidden a -- way.
			a4~ a4.~ a4~| a2~ a4. |
			r4 r4. r4 | r4 r4. r4 | r4 r4. r4 | r4 r4. r4 |
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4 c4. a4~ | % Fade in -- to no -- thing is al -- ways the sta -- tus quo.
			a2~ a4.~ | a2~ a4. |
			cis4 cis4. a4 | a4 g4. fis4 | f g4. a4 | bes4 c4. a4~ | % In -- tim -- i -- da -- ted, per -- haps if you got to know
			a2~ a4.~ | a2~ a4. |

		}
	}
	
	>>
}
   
refrain =  \lyricmode {
 Full co -- lor, full gen -- der, full won -- der -- ful.
 Full on, full time, a thou -- sand spoons
 on a sil -- ver chain my dream.
 I will not re -- strain my being.
 I will not re -- main un -- seen.
}

verse_one =  \lyricmode {
      \set associatedVoice = "words"
	  \set stanza = #"1. "
		I won't be de -- fined by old fa -- shion fai -- ry tales.
		Clear walls in -- vi -- si -- ble un -- til I be -- gin to dance.
		Danc -- ing my scars o -- pen to see what I'm made out of.
		Jack in the pul -- pit the co -- lor of men -- strual blood.
		Me__ Me__
}

verse_two =  \lyricmode {
      \set associatedVoice = "hidden"
	  \set stanza = #"2. "
		Sor -- ry. So sor -- ry do I make you un -- com -- fort -- a -- ble?
		I am what I am so don't wor -- ry you're not re -- spon -- si -- ble.
		Sci -- ence must bend to the be -- ings it's claim -- ing to class -- i -- fy.
		Ab -- stract sta -- tis -- tics  that beau -- ro -- crats use to YOU -- den -- ti -- fy
}

verse_three =  \lyricmode {
      \set associatedVoice = "hidden_two"
	  \set stanza = #"3. "
		I let my hair grow and you want to dock my pay.
		I like my nose ring and you want it hidden a -- way.
		Fade in -- to no -- thing is al -- ways the sta -- tus quo.
		In -- tim -- i -- da -- ted, per -- haps if you got to know
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
 a2 a4. | a2 a4. |
 d2:min d4.:min | d2:min d4.:min | 
 a2 a4. | g2 g4. |
 f2 f4. | bes2:min/f bes4.:min/f |
 a2 a4. | a2 a4. |
 a2 a4. | g2 g4. |
 f2 f4. | bes2:min/f bes4.:min/f |
 a2 a4. | a2 a4. |
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
   \new Lyrics \lyricsto "words" \verse_one
   \new Lyrics \lyricsto "hidden" \verse_two
   \new Lyrics \lyricsto "hidden_two" \verse_three
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

