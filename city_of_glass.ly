\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "City Made of Glass"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key bes \major
  \time 4/4 
	\new Voice = "words" {
		\voiceOne 
		
		 d8 d ees4 f g | f8 f ees4 d r8 bes8 | d4 ees8 f4. ees8 ees | d d c bes4. r8 bes |
		 d4 ees8 f4. g8 g | f f ees d4. r8 bes | d4 ees f8 f ees4 | d8 d c4 bes4\fermata  
		 \key bes \minor
		\repeat volta 2 {
			 \tuplet 3/2 { f'8 f f } |
			 f bes,4. des4 f | ees2 r4. f8 | f2.~ f8 ees | ees2 r4 \tuplet 3/2 { f8 f f } |
			 f bes,4. des4 f | ees r2 \tuplet 3/2 {des4 ees8 } | f1 | r2 \tuplet 3/2 { r4 bes bes} |
			 bes2 aes8 f4 aes8~ | aes4 r2 des,4 | ees8 f4. ees4 des | ees4 r2 bes4 | bes1 | aes8 aes4.~ aes4 bes |
			 bes2. r4 | r2.
		}
	}
}


text =  \lyricmode {
	Met an old man on Jef -- fer -- son Street. He played this song with a coup -- le o' strums. His
	old gui -- tar had a coup -- le o strings and from his lips an old cig -- ar -- ette hung. 
	
	  <<
    {
      \set stanza = #"1. "
		This is a
		ci -- ty made of glass. A -- gain. A -- gain. This is a
		ci -- ty made of glass to the end. And the mean -- ing of that is
		ve -- ry plain in fact. A -- men, bro -- ther. A -- men.
    }
    \new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"2. " 
		This is a
		ci -- ty made of sand. A -- gain. A -- gain. This is a
		ci -- ty made of sand to the end. And the mean -- ing of that is
		ve -- ry plain in fact. A -- men, bro -- ther. A -- men.
    }
    \new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"3. " 
		This is a
		ci -- ty made of steel. A -- gain. A -- gain. This is a
		ci -- ty made of steel to the end. And the mean -- ing of that is
		ve -- ry plain in fact. A -- men, bro -- ther. A -- men.
    }
    \new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"4. " 
		This is a
		ci -- ty made of ice. A -- gain. A -- gain. This is a
		ci -- ty made of ice to the end. And the mean -- ing of that is
		ve -- ry plain in fact. A -- men, bro -- ther. A -- men.
    }
    \new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"5. " 
		This is a
		ci -- ty made of coal. A -- gain. A -- gain. This is a
		ci -- ty made of coal to the end. And the mean -- ing of that is
		ve -- ry plain in fact. A -- men, bro -- ther. A -- men.
    }
  >>
}



harmonies = \chordmode {
  	bes1 | bes | bes | bes | 
  	bes | bes | bes | bes | 
  	
  	bes:m | aes | bes:m | aes |
  	bes:m | aes | bes:m | aes |
  	bes:m | aes | bes:m | aes |
  	bes:m | aes | bes:m | aes |
  	
}
  

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies 
    }
    \new Staff {
    <<
    	\new Voice = "voice" { \melody }
  		\new Lyrics \lyricsto "words" \text
    >>
  	}
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

  }
}

