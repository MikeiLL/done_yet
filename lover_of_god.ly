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
	
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { e4 e e e~} | \tuplet 4/3 { e4 e e g~} |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { e4 e e e~} | \tuplet 4/3 { e4 e e g~} |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { d4 d d b~} | b2. | \tuplet 4/3 { a4 a g g(} | 
			e2.~) | e~ | e4 r2 | r2. |
			
			\tuplet 4/3 { e'4 e e e~} | \tuplet 4/3 { e4 e e e~} | e4. e4 g8~ |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e~} | \tuplet 4/3 { e4 e e e~} | e4. e4 g8~ |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { d4 d d b~} | b2. | \tuplet 4/3 { a4 a g g(} | 
			e2.~) | e~ | e4 r2 | r2. |
			
			\tuplet 4/3 { e'4 e e e~} | \tuplet 4/3 { e4 e e e} | e4 e g~ |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e~} | \tuplet 4/3 { e4 e e e} | e4 e g~ |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { d4 d d b~} | b2. | \tuplet 4/3 { a4 a g g(} | 
			e2.~) | e~ | e4 r2 | r2. |
			
			\tuplet 4/3 { e'4 e e e~} | \tuplet 4/3 { e4 e2 e4~} | e4 e g~ |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e~} | \tuplet 4/3 { e4 e2 e4~} | e4 e g~ |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { d4 d d b~} | b2. | \tuplet 4/3 { a4 a g g(} | 
			e2.~) | e~ | e4 r2 | r2. |
			
			\tuplet 4/3 { e'4 e e e} | \tuplet 4/3 { e4 e e e~} | e4. e4 g8~ |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { e4 e e e~} | e4. e4 g8~ |\tuplet 4/3 { g4 e d e~} | 
			e2.~ | e~ | e~ | e |
			\tuplet 4/3 { e4 e e e} | \tuplet 4/3 { d4 d d b~} | b2. | \tuplet 4/3 { a4 a g g(} | 
			e2.~) | e~ | e4 r2 | r2. |
	  }
	\new NullVoice = "more_words" {
	\repeat volta 2 {
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
  
  I'm go -- ing in -- to a card -- board box when I'm 
  dead.
  I'm go -- ing in -- to a card -- board box when I'm 
  dead.
  Ma -- ry is the mo -- ther of God, lo -- ver of God.
  
  Vi -- sion of Ma -- ry won't you ease this ter -- ri -- ble 
  dread?
  Vi -- sion of Ma -- ry won't you ease this ter -- ri -- ble 
  dread?
  Ma -- ry is the mo -- ther of God, lo -- ver of God.
  
  Bo -- som of Ma -- ry soaked with fe -- ver and 
  sweat.
  Bo -- som of Ma -- ry soaked with fe -- ver and 
  sweat.
  Ma -- ry is the mo -- ther of God, lo -- ver of God.
  
  Ma -- ma would you lie with me one last time in this 
  bed?
  Ma -- ma would you lie with me one last time in this 
  bed?
  Ma -- ry is the mo -- ther of God, lo -- ver of God.
}

verse_two =  \lyricmode {
  \set associatedVoice = "more_words"
  \set stanza = #"2. "
}

harmonies = \chordmode {
  \repeat unfold 5 {
  e2.:m | e:m | e:m | e:m | 
  e:m | e:m | e:m | e:m | 
  a:m/e | a:m/e | a:m/e | a:m/e | 
  e:m | e:m | e:m | e:m | 
  c | c | b:9.5- | b:9.5- |
  e:m | e:m | e:m | e:m | 
  }
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
