\version "2.19.45"
\paper {
	line-width = 4.6\in
}

#(define (parenthesis-ignatzek-chord-names in-pitches bass inversion context) 
(markup #:line ("(" (ignatzek-chord-names in-pitches bass inversion context) ")"))) 

melody = \relative c'' {
  \clef treble
  \key e \minor
  \time 6/8 
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			b4. e, | g4 b g | a2 g4 | a b g |
			f4. e~ | e2. | r4. e'4. | d8 e d c d b |
			c2. | c4 c c | c b4. r8 | e,4 g b |
			a2. | g4 a f | f4. e~ | e4. r |
		}
	}
}

harmony = \relative c'' {
  \voiceTwo
	g4. g | e4 g e | fis2 b'4 | c d b |
	a4. g~ | g2. | r4. g | b8 b b a b g |
	g2. | fis4 fis fis | fis g4. r8 | g4 e g |
	c2. | d4 b a | a4. g~ | g4. r |
}

text =  \lyricmode {
	If you beg me to stay I might be per --
	sua -- ded. I've done it be- done it be --
	fore times when you ha -- ted. Now it's your
	turn. Roll o -- ver play dead.
}

harmonies = \chordmode {
  	e2.:m | a:m | a:m | a:m |
  	e:m | e:m | e:m | e:m |
  	a:m | a:m | e:m | e:m |
  	f:7 | f:7 | e:m | e:m |
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