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
  	d'8( e4) e8. e | d( b g4) r4 |
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
 Bye bye by air.
}

verse_text =  \lyricmode {

	
	
}
harmonies = \chordmode {
	
	b2.:min | b:min | e:min | e:min |
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
"Maybe substitute \"follow along\" with \"shut up and learn\"."
" "
  }
}
