\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Far Sides of Earth & Mars"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key c \minor
  \time 12/8 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
  <<
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 3 {
			ees4( ges4. ees8 ges4.) ees | bes4.( b4. c2.) | ees4( ges4.) ees8 ges4. ees | bes'2.~ bes4. aes4. |
			ges2. ges4. f4 f8~ | f4 ees~ ees1 | ees2. ees4. d4 d8~ | d4 c2~ c2. |
			ees4 ges4. ees8 ges2. | ees4 ges4. ees8 ges4. f4. | f4( ees2~) ees2. |
			c4 ees4. c8 ees2. | c4 ees4. c8 ees4. d | 
		}
		\alternative {
		 {
		 	d4( c2~) c2.~ | c1 r2 |
		 }
		 {
		 	d4( c2~) c2.~ | c1 r2 |
		 	ees8 c ees4 ees8 c ees4 ees8 c ees4~ | ees8 ees8 c ees4. ees8 c ees4. ees8~ |
		 	ees8 c ees4 ees8 c ees4 ees8 c ees4~ | ees1. |
		 	ees4 ees c8 ees ees2 ees8 c | ees4 ees c8 ees ees2 ees8 f |
		 	g4 ees c f f ees | ees4( c2~) c2. 
		 }
		 {
		 	d4( c2~) c2.~ | c1 r2 |
		 }
		}
	}
	\new NullVoice = "hidden" {
	  \voiceTwo
      \hideNotes {
			ees4 ges4. ees8 ges4. ees | bes4.( b4. c2.)  | ees4 ges4. ees8 ges4. ees | bes'2.~ bes4. aes4. |
			ges2. ges4. f4 f8~ | f4 ees~ ees1 | ees2. ees4. d4 d8~ | d4 c2~ c2. |
			ees4 ges4. ees8 ges2. | ees4 ges4. ees8 ges4. f4. | f1. |
			c4 ees4. c8 ees2. | c4 ees4. c8 ees4. d | d1. |
		}
	}
	
	\new NullVoice = "hidden_two" {
	  \voiceTwo
      \hideNotes {
			ees4 ges4. ees8 ges4. ees | bes4.( b4. c2.)  | ees4 ges4. ees8 ges4. ees | bes'2.~ bes4. aes4. |
			ges2. ges4. f4 f8~ | f4 ees~ ees1 | ees2. ees4. d4 d8~ | d4 c2~ c2. |
			ees4 ges4. ees8 ges2. | ees4 ges4. ees8 ges4. f4. | f1. |
			c4 ees4. c8 ees2. | c4 ees4. c8 ees4. d | 
		}
	}
	>>
}


text =  \lyricmode {
      \set associatedVoice = "words"
	  \set stanza = #"1. "
		Lone -- some hours out a -- mong the stars. And
		when we're con -- nec -- ted, dead zones and sta -- tic
		May 'swell be on far sides of Earth and Mars.
		May 'swell be on far sides of Earth and Mars.
		wind.
		Me an' you me an' you me an' you
		me an' you me an' you 
		me an' you me an' you me an' you.
		We got to -- ge -- ther can we
		keep it to -- ge -- ther?
		Man, I swear I'll do all I can do.
		solve.
}

wordsTwo =  \lyricmode {
	\set associatedVoice = "hidden"
	\set stanza = #"2. " 
      Let -- ters we write, don't send. If not a friend, I'm who? And
      when we're to -- ge -- ther storm clouds come ga -- ther.
      I pray for rain. Rain and a good strong wind.
      I pray for rain. Rain and a good strong 
}

wordsThree =  \lyricmode {
	\set associatedVoice = "hidden_two"
	\set stanza = #"3. " 
      Out in the dark and cold. All of the names we've called 
      our -- selves and each o -- ther ring like a cho -- ir. 
      Dis -- so -- nant chords I'd like to hear re -- solve. 
      Dis -- so -- nant chords I'd like to hear re- 
}

harmonies = \chordmode {
  	ees1.:m | ees:m | ees:m | ees1:m ees8:m d4.|
  	c1.:m | c:m | c:m6 | c:m6 |
  	a:m7.5- | aes:7 | c:m |
  	a:m7.5- | aes:7 | c:m | c2.:m bes:7 |
  	c1.:m  | c:m |
  	c:m | c:m | aes:7 | aes:7 |
  	aes:7 | f:m | f2.:m g:7 | c:m bes:7 |
  	c1.:m  | c:m |
  	
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
  	\new Lyrics \lyricsto "hidden" \wordsTwo
  	\new Lyrics \lyricsto "hidden_two" \wordsThree
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

