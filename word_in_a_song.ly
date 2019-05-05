\version "2.18.2"

\header {
  title = "One Day we're Gone"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
  <<
  \new Voice = "words" {
		\repeat volta 2 {
			c4 c c | bes2 r4 | a4 bes a | f2 r4 |
			c'4 c c | bes2 r4 | bes c d | d( c) r |
			c4 c c | bes2 r4 | a bes a | g( f) r |
			a a a | g2 r4 | d f f | f2 r4 |
			r2. | r | r |
		}
	}
  
  \new NullVoice = "hidden" {
			c'4 c c | bes2 r4 | a4 bes a | f2 r4 |
			c'4 c c | bes2 r4 | bes c d | d c r |
			c4 c c | bes2 r4 | a bes a | g( f) r |
			a a a | g2 r4 | d f f | f2 r4 |
			r2. | r | r |
	}
	>>
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
		Old peo -- ple talk, fol -- low a -- long.
		One day we're here. One day we're gone.
    }
	
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"3. " 
      	Deep in the woods. Lost in the dark.
      	Ten mil -- lion thoughts tied up in knots.
      	I need a friend. Tell me I'm wrong.
      	One day we're here. One day we're gone.
    }
	
>>
}


wordsTwo =  \lyricmode {
	\new Lyrics {
      \set associatedVoice = "hidden"
      \set stanza = #"4. " 
      	Woke up to -- day. Most of us did.
      	Might be our last. Try to de -- ny it.
      	Laugh when I can. Sing when there's song.
      	One day we're here. One day we're gone.
    }
}


harmonies = \chordmode {
	f2. | c:min/ees | c: min/ees | f |
	f | c:min/ees | c: min/ees | f |
	f | c:min/ees | c:dim/ees | bes |
	bes | bes:min | bes:min | f |
	f | f | f |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
  	\new Voice = "voice" { \melody  }
  	\new Lyrics \lyricsto "words" \text
  	\new Lyrics \lyricsto "hidden" \wordsTwo
  >>
  
  \layout { }
  \midi { }
}

