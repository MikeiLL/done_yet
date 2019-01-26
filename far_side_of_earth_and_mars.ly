\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Young Beautiful & Stressed"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key c \minor
  \time 12/8 
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			ees4( ges4. ees8 ges4.) ees | bes1. | ees4( ges4.) ees8 ges4. ees | bes'2.~ bes4. aes4. |
			ges2. ges4. f4 f8~ | f4 ees~ ees1 | ees2. ees4. d4 d8~ | d4 c2~ c2. |
			ees4 ges4. ees8 ges2. | ees4 ges4. ees8 ges4. f4. | f4( ees2~) ees2. |
			c4 ees4. c8 ees2~ ees8 c | c4 ees4. c8 ees4. d | d4( c2~) c2. |
		}
	}
}


text =  \lyricmode {
	Lone -- some hours out a -- mong the stars. And
	when we're con -- nec -- ted, dead zones and sta -- tic
	May 'swell be on far side of Earth and Mars.
	May 'swell be on the far side of Earth and Mars.
}

harmonies = \chordmode {
  	ees1.:m | ees:m | ees:m | ees1:m ees8:m d4.|
  	c1.:m | c:m | c:m6 | c:m6 |
  	a:m7.5- | aes:7 | c:m | c:m |
  	a:m7.5- | aes:7 | c:m | bes:7 |
  	
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

