\version "2.18.2"

\header {
  title = "Hurricane"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key c \major
  \time 3/4
	<<
	\new Voice = "words" {
	\repeat volta 2 {
			e4 e e | e d8 c4 c8 | e4 e8 e4 e8 | e4 d8 c~ \tuplet 3/2 {c8 c c} | % Drowned ... if ya
			d4 d d8 d~ | d4( c8) b4 b8 | d4 d8 d4 d8 | d4 c8 b4. | % can't stand ... violins
			e8 e4 e4. | e4 d8 c4 c8 | e e4 e8 e e~ | e4 d8 c4. | % Met a man... over here
			d4 d d8 d~ | d4 c8 b4. | b4 c8 d4.~ | d2 r4 | % Worked ... him here.
			c4 c8 c4 c8 | c4 b8 a4. | c4 c8 c4 c8 | c4 b8 a4 c8 | % Instruments ... someone to
			d4 d8 d4 d8 | d4 c8 b4.~ | b2. | r |
			e8 d e2~ | e2. | r | r |
			e8 d e2~ | e2. | g | r |
			e8 d e2~ | e2. | g~ | g2 f4 |
			e2.~ | e2 d4 | c2. | r |
		} 
	  }
	>>
}

verse_one =  \lyricmode {
  \set associatedVoice = "words"
	Drowned out by vi -- o -- lins. I'm turn -- ing down the vi -- o -- lins if you
	can't stand the si -- lence, im -- a -- gine back the vi -- o -- lins.
	Met a man, kind and fair. He's in here with us o -- ver there. 
	Worked hard to get him here. Keep him here.
	In -- stru -- ments and love af -- fairs fall a -- part with -- out some -- one to 
	care and who knows how to care.  
	Hur -- ri -- cane. 
	Hur -- ri -- cane blow.
	Hur -- ri -- cane blow my thoughts a -- way.
}



harmonies = \chordmode {
  c2. | c | c | c |
  e:m | e:m | e:m | e:m |
  f | f | f | f | 
  e:m | e:m | g | g |
  f | f | f | f | 
  e:m | e:m | g | g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
}

\score {
  
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }

    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \verse_one
  >>
  \layout { }
  \midi { }
}