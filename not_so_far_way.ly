\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Not So Far 'Way"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key e \minor
  \time 3/4 
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			e8( dis e4) g | b8( ais b4) d | e8( fis e4) d | d8( b~) b2 | % Well dear one
			a8( g a4) g( | a8) g a4 g | a8 g a g a g | b b4. g4 | % What can we do
			fis2.~ | fis~ | fis | b8 a4. fis4 | % 'Way... not so far
			e2.~ | e | r | r | % 'Way.
			b'8 b4. a4 | b8 b4. a4 | b8 b4. a4 | b8 b4. a4 | % Nothing and
			g4 g a | e e a | g g a | e e g | % Seeing and dreaming and
			b2 a4 | b2 a4 | b4 b a | b2 a4 | % You and Me and every
			g4 g a | e e a | g g a | e e g |  % Dancing and jumping
			e2.~ | e~ | e | b'8 a4. fis4 |  % 'round.... far 
			e2.~ | e~ | e4 r2 | r2. |
		}
	}
}

harmony = \relative c'' {
  \voiceTwo
	
}

text =  \lyricmode {
	Well dear one, dear one, dear one.
	What can we do to get our fa -- ces so they're not so far 'way?
	Not so far 'way.
	No -- thing and no -- thing and no -- thing and no -- thing I'm
	See -- ing and drea -- ming and li -- ving and schem --ing that
	You and me and ev' -- ry -- bo -- dy are
	Dan -- cing and jum -- ping and funk -- ing and breah -- ing a --
	round. Not so far 
	'way.		
}

harmonies = \chordmode {
  	e2.:m | e:m | e:m | e:m |
  	a:m | a:m | a:m | a:m | 
  	d | d | d | d |
  	e:m | e:m | d | d |
  	g | g | g | g |
  	a:m | a:m | a:m | a:m | 
  	g | g | g | g |
  	a:m | a:m | a:m | a:m | 
  	d | d | d | d |
  	e:m | e:m | d | d |
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

  }
}

