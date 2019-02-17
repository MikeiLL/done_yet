\version "2.18.2"

\header {
  title = "I'm Just Tired of Living"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key e \minor
  \time 4/4
   \new Voice = "words" {
		b4 d e4. b8 | b a4. r4 b, | e1 | r | % I'm ... that's all
		b'4 d e4. b8 | b a4. r4 b, | e2 e4. e8 | g g g g \tuplet 3/2 { r4 b g } | % I'm ... that's all ... shit a-
		a1 | a8 a a4 r2 | b4 r b8 b r a~ | a a4 a8 g g4 e8~ | e1 | % round heavy shit ... put it down
		a8 a a4 r4. e8 | a a a4 r4. a8~ | a4. a4 e8 a4 | ais8 ais4 ais8 r2 | % Spousal shit. ... ego trips.
		r1 | r2 b8 d4 e8~ | e4. b8 b a4. | r2 r8 b4. | % I'm not tired o' work -- in'. Just 
		a4. a8 g e4. | r1 | % tired o' thin -- kin'.
		r2 b'8 b b4 | a4 a8 g a g4 a8~ | a1~ | a2 b8 b b4 | a2 a4. a8 | % May -- be ... tired, tired of
		g e e2. | r4 a a4. g8 | a8 a4. r2 | r4 a a4. a8 | b8 b b b a a a a | % be -- ing me... strugglin' to
		b1 | r1 |
		e4 
	}
		<< g,,4 b4 >> << g4 b4 >> << b4 d4 >> | r << g,4 b4 >> << a8 c8 >> << g8 b8 >> << e,4 g4 >>
		
		\context Voice = "words" {
			e''4
		}
		
		<< g,,4 b4 >> << g4 b4 >> << b4 d4 >> | r << g,4 b4 >> << a8 c8 >> << g8 b8 >> << e,4 g4 >>
}

text =  \lyricmode {
	I'm just tired of liv -- in' that's all.
	I'm just tired of liv -- in' that's all. Tired of car -- ry -- ing my shit a --
	round. Hea -- vy shit, but but I can't seem to put it down.
	Spou -- sal shit. Pa -- ren -- tal shit. Slide shows from old e -- go trips.
	I'm not tired o' work -- in'. Just 
	tired o' thin -- kin'.
	May -- be it's re -- spon -- si -- bi -- li -- ty. May -- be I'm tired, tired of
	be -- ing me.
	Not tired of fee -- ling. Just tired of strug -- gl -- in' to strug -- gl -- in' to
	feel.
	Blah. I feel blah.
}

harmonies = \chordmode {
 	e:min
}

\score {
  
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }

    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \text
  >>
  \layout { }
  \midi { }
}

%Additional Verses
\markup \fill-line {
\column {
	" "
	
	}
}
