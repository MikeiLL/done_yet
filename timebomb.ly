\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Time Bomb"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			r8 c c bes c des c( bes) | des des c des~ des2 | r8 des des c des( e) ees des | ees ees des c~ c2 | % I put together ... demand
			r8 c4 bes8 c ees des c | des des c des~ des2 | r8 des des c des e ees( des) | ees ees des c4 e8 e e | % Don't ... the door. I wanna
			e c c bes c4 c8 bes | c c bes c r bes r c | r c4 bes8 c des c bes  | c c bes c r bes r c | % Know if you can ... from me
			r g' g g g4 g | r8 a a a a4 a | r8 b b b b4 b | r8 c c c c4 c | % It's like a mudslide ... lightening
			g4 g g g | fis8 g4 a r4. | a4 a a a | g8 g a4 b c | % Tick tick ... could be.
			c r2. | d4 r2. | e4 r2. | fis8 fis r2. | % Ten
			g4 r2. | a4 r2. | b4 r2. | c4 r2. | 
			d4 r2. | 
			c4( b a) b | a( g) g2~ | g2 r2 | r4 fis e d | % Wait a minute ... and you are
			c r2 b8 b | b( a) a2 a8 a | a( g) g2. | % Who to me ... no one
			r8 c c bes c4 c8 bes | c16 c c8 bes c4 c4. | bes8. bes16 bes8 r bes8. bes16 bes8 r | bes bes bes bes bes8. bes16 bes4 | % Showed you my knob ... Wind me up ... reasoning
			g8. g16 e4 g e8 e | g g g g4. fis8 fis | fis fis fis fis fis4 fis8 fis | g g fis g4 r4. | % Reasoning please ... wanna relate.
		}
	}
}


text =  \lyricmode {
      \set associatedVoice = "words"
	  \set stanza = #"1. "
		I put to -- ge -- ther this cas -- tle of sand based on the laws of sup -- ply and de -- mand.
		Don't just sit there like a bump on the floor danc -- ing your thumbs a -- round eye -- ing the door. I wan -- na
		know if you can han -- dle a mouth -- full or two or three of un -- su -- gar coa -- ted re -- a -- li -- ty from me.
		It's like a flash fire, a scor -- pi -- on sting. It's like a mud slide, a bolt of light -- ning.
		Tick tick tick tick. Is that me? Tick tick tick tick. Sure as hell could be.
		Ten, nine, eight, se -- ven, six, five, four, three, two...
		Wait a min -- ute... and you are 
		who to me? No -- one. To me no -- one.
		Showed you my knob, but I di -- dn't say to twist it. Wind me up. Wind me up. Tell me that it's rea -- son -- ing.
		Rea -- son -- ing? Please! If you wan -- na de -- bate you can run for head of state. Me? I wan -- na re -- late.
}


harmonies = \chordmode {
  	c1:m | c:m | c:m7.5- | c:m7.5- |
  	
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


" "
  }
}

