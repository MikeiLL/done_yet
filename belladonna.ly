\version "2.18.2"

\header {
  title = "Belladonna"
  composer = "Words and Music by Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

bassline = \relative c, {
	\clef bass
  	\key f \minor
  	\time 4/4
  	f8 r4 f8 des'8 r4 des8 | c8 r4 c8 aes8 r4 aes8 |
}

melody = \relative c'' {
  \clef treble
  \key f \minor
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
  <<
	  \new Voice = "words" {
		  \repeat volta 2 {
			\partial 4 b8 c |
			  des8 c4 c8~ c4 b8 c~ | c4 r2 b8 c | des8 c4 c8~ c4 b8 c~ | c4 r aes4 r |
			  g4 r2. | r2 b8 b4 b8~ | b4 c r2 | r2. b8 c |
			  des8 c4 c8~ c4 b8 c~ | c4 r2 b8 c | des8 c4 c8~ c4 b8 c~ | c4 r aes4 r |
			  g4 r2. | r2 b8 b4 b8~ | b4 c r2 | r1 |
			  f,4 aes b8 aes4 b8~ | b4 c r2 | f,4 aes b8 aes4 b8~ | b4 c r2 | 
			  f,4 aes b8 aes4 b8~ | b4 c r2 | f,4 aes b8 aes4 b8~ | b4 c r2 | 
		  }
			aes8 aes aes4 g8 g g4 | aes g f r | aes8 aes aes4 aes bes | c r c4. c8  |
			c1~ | c4 r c4. c8 | c1~ | c4 r c4 des | 
			\tuplet 3/4 { ees4 des c } | des1 | ees4. ees8 ees ees4 ees8~ | ees2 f4. f8 | 
			f4. f8~ f2~ | f4 r f4. f8 | f1~ | f4 r f ges | 
			aes ges f ges~ | ges1 | f2 f4 f~ | f f2 f4~ | 
			f1~ |f | r | r |
	  }
  >>
}


text =  \lyricmode {
      \set associatedVoice = "words"
	  \set stanza = #"1. "
		Ev' -- ry bo -- dy want -- ed me. Ev' -- ry one I'd take or leave, but
		you, Bel -- la -- don -- na.
		In the park be -- hind the trees. I was just a -- bout to leave, but
		you, Bel -- la -- don -- na.
		Love -- ly, Bel -- la -- don -- na.
		Lone -- ly, Bel -- la -- don -- na.
		Hurt me, Bel -- la -- don -- na.
		Hold me, Bel -- la -- don -- na.
		Sec -- ond thought, sec -- ond thought let's just not.
		Sec -- ond thought let's just not.
		Gol -- den eyes. I -- vory smile. Love my -- 
		self in your gaze. Won -- der if it's safe.
		Jet com -- plex -- ion. Jas -- per voice. Love my
		self in your song. Won -- der if it's
		wrong.
}

wordsTwo =  \lyricmode {
	\set associatedVoice = "words"
	\set stanza = #"2. " 
	All the pri -- zes you a -- chieved, all the child -- ren that you saved, but 
	you, Bel -- la -- don -- na.
	All the de -- mons that you faced, all the hu -- mans you ap -- praised, but
	you, Bel -- la -- don -- na.
	Love -- ly, Bel -- la -- don -- na.
	Lone -- ly, Bel -- la -- don -- na.
	Twist me, Bel -- la -- don -- na.
	Fold me, Bel -- la -- don -- na.
}

harmonies = \chordmode {
	r4
  	f1:min | f:min | f:min | f:min |
  	f:min | f:min | f:min | f:min |
  	f:min | f:min | f:min | f:min |
  	f:min | f:min | f:min | f:min |
  	f:min | f:min | f:min | f:min |
  	f:min | f:min | f:min | f:min |
  	f:min | f:min | f:min | f:min |
  	f:min | f:min | bes:/d | bes:/d |
  	bes:min | bes:min | f:7 | f:7 |
  	bes:min | bes:min | ees:/g | ees:/g |
  	ees:min | ees:min | aes | aes | 
  	g | ges | f1:min | f:min
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
  	\new Lyrics \lyricsto "words" \wordsTwo
  >>
  
  \layout { }
  \midi { }
}

% Additional Notes
\markup \fill-line {
"Bass line:"
}

\new Voice = "bassline" { \bassline }
