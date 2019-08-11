\version "2.18.2"

\header {
  title = "Heaven Better Be All That"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key d \major
  \time 6/8 
  r4. d( | e8) r d4 b8 g16 a~ | a4( b8 g4) e8 | r8 a,4 b8( d e) |
  g4 a8 b4( d8 | a g) a4 r | r b,8 cis e g | a4 g8 e4 r8 |
  r4 g,4. a8 | \tuplet 5/3 { b4 cis e g a~ } | a4 b8( g e) d'~ |
  d4 b8( a g4 ) |
  
  \new Voice = "verseOne" {
  	d'8( e4) e8. e | d8( b g4) r8 a | % bye bye by air. In
  	a b g e g4~ | g4. e8 r4 | % In body i endure but
  	a4 b8 a g d'~ | d4 b8 a g e~ | e4( g8) r4. | r4 g4. e8~ | % But why I abide by a burden. Bye bye, 
	e4 d8 g4 b8~ | b4 a8( g) a4~ | % bye, but that bye bye bye
	a b8 d4 e16 g~ | g4 a b | a( g) e8 g8~ | g2.~ | % With that put but bye bye abide
	g~ | g2 ~g4( | % abide
	
	b8) r8 r2 | fis8 fis fis fis fis4~ | fis2. | g4 e2 | % Heaven better
	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
	d4 e d | r2. | cis4 d8 e4. | r4 des8 cis4 b8 | % That's a lot ... a lot to
	b4 r2 |
  }
  
   #(ly:expect-warning "cannot end volta") 
   \repeat volta 3 {
   \new Voice = "chorus" {
     \voiceOne
     r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 | % Heaven better
			r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
			r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
			d4 e d | r2. | cis4 d8 e4. | r4 des8 cis4 b8 | % That's a lot ... a lot to
			b4 r2 |
		}
		r4 b' a | g2.~ | g4 cis, g | % ask.
		b4 r2 | r4 b' a | g2.~ | g4 cis, g | 
 }
 \alternative {
   \new Voice = "verse" {
    	
		
   }
   \context Voice = "verse" {
     	
   		}
   \context Voice = "verse" {
     	
		\set Score.repeatCommands = #'(end-repeat)
   		}
	}
}

chorus_text =  \lyricmode {
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	More than this? That's a lot. A lot to ask.
}

firstVerse_test = \lyricmode {
 Bye bye by air. In bo -- dy I en -- dure, but
 But why I a -- bide by a bur -- den
 Bye bye, but that bye bye bye
 With that put but by bye bye a -- bide
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 More than this? That's a lot. A lot to ask.
}

verse_text =  \lyricmode {

	
	
}
harmonies = \chordmode {
	g2. | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	g | g | a | a |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
  	\new Voice = "voice" { \melody  }
  	\new Lyrics \lyricsto "verseOne" \firstVerse_test
  	\new Lyrics \lyricsto "chorus" \chorus_text
  	\new Lyrics \lyricsto "verse" \verse_text
  >>
  
  \layout { }
  \midi { }
}

%Additional Notes
\markup \fill-line {
\column {
" "
" "
" "
" "
" "
  }
}
