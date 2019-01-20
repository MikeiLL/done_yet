\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Young Beautiful & Stressed"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key a \minor
  \time 4/4 
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			e2. d4 | d c8 b4. c4 | b1~ | b | % Endless days
			d2. c8 c~ | c4 b8 a4. gis4 | a2 r | r1 | % Dragged
			e'2. d4 | d c8 b4. c4 | b1 | r | % Now they
			d2. c8 c~ | c4 b8 a4. gis4 | a2 r | r1 | % Were they
			e'2. e4 | e g8 g4. g4 | g2 a4 d,~ | d1 | % Sleep my
			r2 e8 e d d~ | d4. c b8 c~ | c2 r | r1 | % Morning will come
			e2. e4 | a a8 a4. g4 | g2 a4 f~ | f1 | % Drag us
			r2 e8 e d4 | d c8 b4. c4 | a2 r | r1 | % Only our love
			d2 d | c4 b8 a4. gis4 | a4 r2. | r1 | % Some will say
			d1 | c4 b8 a4. gis4 | a4 r2. | r1 | % Young, beautiful
		}
	}
}

harmony = \relative c'' {
  \voiceTwo
	c2. b4 | b a8 gis4. a4 | f1~ | f |
}

text =  \lyricmode {
	End -- less days of sum -- mers past
	Dragged a -- long when we were small
	Now they seem to go so fast
	Were they e -- ver ours at all?
	Sleep, my dar -- ling. Let your dreams be sweet.
	Mor -- ning will come soon e -- nough.
	Drag us back on -- to our wea -- ry feet.
	On -- ly our love can pull us through.
	Some will say that we are blessed.
	Young, beau -- ti -- ful and stressed.
}

harmonies = \chordmode {
  	a1:m |a:m |d:m |d:m |
  	e:7 | e:7 | a:m | a:m |
  	a:m |a:m |d:m |d:m |
  	e:7 | e:7 | a:m | a:m |
  	a:m |a:m |d:m |d:m |
  	e:7 | e:7 | a:m | a:m |
  	a:m |a:m |d:m |d:m |
  	e:7 | e:7 | a:m | a:m |
  	d:m | e:7 | a:m | a:m |
  	d:m | e:7 | a:m | a:m |
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
    	\new Voice = "lower" { \harmony }
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
"2. "
""
""
" "

" "
  }
}

