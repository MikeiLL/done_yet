\version "2.18.2"

\header {
  title = "I'm Just Tired of Living"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

bass = \relative c, {
  \clef bass
  \key e \minor
  \time 4/4
	\new Voice = "bassline" {
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
		e1 | b2 c2 | e1 | b2 c2 |
	}  
}
  
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
		g e e2. | r4 a a4. g8 | a8 a4. r2 | r4 a a4. a8 | b8 b b b c c c c | % be -- ing me... strugglin' to
		b1~ | b | r |
		e4 
	}
		<< g,,4 b4\staccato >> << g4 b4 >> << b4 d4\staccato >> | r << g,4 b4\staccato >> << a8 c8 >> << g8 b8 >> << e,4 g4\staccato >>
		
		\new Voice = "chorus" {
			e''4
		}
		
		<< g,,4 b4\staccato >> << g4 b4 >> << b4 d4\staccato >> | r << g,4 b4\staccato >> << a8 c8 >> << g8 b8 >> << e,4 g4\staccato >>
		
		\new Voice = "chorus_two" {
			e''4
		}
		
		<< g,,4\staccato b4 >> << g4 b4 >> << b4 d4\staccato >> | r << g,4 b4\staccato >> << a8 c8 >> << g8 b8 >> << e,4 g4\staccato >>
		
		\new Voice = "chorus_three" {
			e''4
		}
		
		<< g,,4\staccato b4 >> << g4 b4 >> << b4 d4\staccato >> | r << g,4 b4\staccato >> << a8 c8 >> << g8 b8 >> << e,4 g4\staccato >>
		
		\new Voice = "verse_two" {
			r4 a' a a8 g | a4 a2 a8 g | \tuplet 3/2 { a4 a g } a4 r | \tuplet 3/2 { r g4 e g g a }% Woke up ... tongue I'm developing
			g( e) e2~ | e4. r8 e4 e | \tuplet 3/2 { e4 e e~ } e r | r1 |% cancer ... which one
			b'8 d4 e fis g8~ | g a4 bes bes a8~ | a2. g4 | a4 g8 a4. a4 | % I don't want ... see no
			g8( e) e2.~ | e1 | % body
			r1 | r2 b4 b | b2 b4 b | a a a8 g g e | e1~ | e1 \bar "|." % Let's just say ... at all
		}
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
	Blah. 
	
}

chorus =  \lyricmode {
	Blah.
}

chorus_two = \lyricmode {
	Blah.
}

chorus_three = \lyricmode {
	Blah.
}

verse_two =  \lyricmode {
	Woke up with a cold sore on the tip of my tongue. I'm de -- ve -- lop -- ing 
	can -- cer. Just don't know which one.
	I don't want no -- bo -- dy to see me. Don't wan -- na see no -- bo -- dy.
	Let's just say I don't feel like a -- ny -- thing at all.
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
	\new PianoStaff  <<
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \text
    \new Lyrics \lyricsto "chorus" \chorus
    \new Lyrics \lyricsto "chorus_two" \chorus_two
    \new Lyrics \lyricsto "chorus_three" \chorus_three
    \new Lyrics \lyricsto "verse_two" \verse_two
    \new Voice = "bass" { \bass }
    >>
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
