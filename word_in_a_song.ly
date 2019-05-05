\version "2.18.2"

\header {
  title = "Word in a Song"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

bassline = \relative c {
	\clef bass
  	\key bes \minor
  	\time 4/4
  	bes4 r2. | r4 \tuplet 3/2 { f8 fis g } aes4 f |
}

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
  \new Voice = "words" {
		\repeat volta 2 {
			c4 c c | bes2 r4 | a4 bes a | f2 r4 |
			c'4 c c | bes2 r4 | bes c d | d( c) r |
			c4 c c | bes2 r4 | a bes a | g( f) r |
			a a a | g2 r4 | d f f | f2 r4 |
		}
	}
}

text =  \lyricmode {
<<
    \new Lyrics {
    \set associatedVoice = "melody"
    \set stanza = #"1. " 
		First we in -- hale. Then we ex -- hale.
		Life is is trip. Hea -- ven and hell.
		If we re -- main, won't be for long.
		One day we're here. One day we're gone.
	}
	
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"2. " 
      	First there was dark. Then there was sound.
		Big gold -- en sun, wa -- ter and ground.
		So we are told, fol -- low a -- long.
		God is a word. Word in a song.
    }
    	
>>
}



harmonies = \chordmode {
	f2. | c:min | c: min | f |
	f | c:min | c: min | f |
	f | c:min | c:dim | bes |
	bes | bes:min | f |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
  	\new Voice = "voice" { \melody  }
  	\new Lyrics \lyricsto "words" \text
  >>
  
  \layout { }
  \midi { }
}

% Additional Notes
\markup \fill-line {
"Bass theme:"
}

\new Voice = "bassline" { \bassline }
