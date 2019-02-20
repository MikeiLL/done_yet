\version "2.18.2"

\header {
  title = "Lover of God"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key d \major
  \time 3/4
	<<
	\new Voice = "words" {
	\repeat volta 2 {
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { e4 e e e~} | \tuplet 4/3 { e4 e e g~} |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { e4 e e e~} | \tuplet 4/3 { e4 e e g~} |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { d4 d d b~} | b2. | \tuplet 4/3 { a4 a g g(} | 
			e2.~) | e~ | e1 r2 | r2. |
		} 
	  }
	\new NullVoice = "more_words" {
	\repeat volta 2 {
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { e4 e e e~} | \tuplet 4/3 { e4 e e g~} |\tuplet 4/3 { g4 e d e~} | e2.~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { e4 e e e~} | \tuplet 4/3 { e4 e e g~} |\tuplet 4/3 { g4 e d e~} | e2.~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { d4 d d b~} | b2. | \tuplet 4/3 { a4 a g g(} | 
			e2.~) | e~ | e1 r2 | r2. |
		} 
	  }
	>>
}

verse_one =  \lyricmode {
  \set associatedVoice = "words"
  \set stanza = #"1. "
  Ma -- ry's got a beau -- ti -- ful ha -- lo of gold on her 
  head.
  Ma -- ry's got a beau -- ti -- ful ha -- lo of gold on her 
  head.
  Ma -- ry is the mo -- ther of God, lo -- ver of God.
}

verse_two =  \lyricmode {
  \set associatedVoice = "more_words"
  \set stanza = #"2. "
  
}

harmonies = \chordmode {
  e2.:m | e:m | e:m | e:m | 
  e:m | e:m | e:m | e:m | 
  a:m/e | a:m/e | a:m/e | a:m/e | 
  e:m | e:m | e:m | e:m | 
  c | c | b:9.5- | b:9.5- |
  e:m | e:m | e:m | e:m | 
}

\score {
  
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }

    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \verse_one
    \new Lyrics \lyricsto "words" \verse_two
  >>
  \layout { }
  \midi { }
}
