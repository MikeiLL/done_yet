\version "2.18.2"

\header {
  title = "Saddest Day of All"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
	\new Voice = "words" {
	\repeat volta 2 {
			r2 g8 a g b~ | b4 a8 g4. d8 c~ | c4 r c' c | b a g8 a4. | % This is the ... cry
			g4 r4 g8 a g b~ | b4 a8 g4. b8 a~ | a4 r c c8 b~ | b4 a8 a4. g8 g~ | % This is the ... can tell
			g4 r g8 a g b~ | b4 a8 g4. d8 c~ | c4 r c' c8 b~ | b4 a8 a4. g8 g~ | % If there's a window ... dust and soil
			g4 r g8 a g b~ | b4 a8 g4. d8 c~ | c4 r c' c8 b~ | b4 a8 a4. g8 g~ | % If there's a story ... find the words
			g4 r g8 a g b~ | b4 a8 g4 d c8~ | c4 r c'8 c4 b8~ | b4 a8 a4. g8 g~ | % May as well ... here to see
			g4 r g8 a4 b8~ | b4 a8 g4 d c8~ | c4 r c'8 c4 b8~ | b4 a8 a4. g4 | % Noone left ... but 
			r2 d'~ | d2.( g4 | e8 d4) d4. b4 | a8 g g e g4 a8 b~ | % Oh god ... deserve
			b4 r d2~ | d2.( g4 | e8 d4) d4. b4 | a8 g4. g8 g4. | % Oh God  ... more
			g4 r2. | % try.
		} 
	  }
}

verse_one =  \lyricmode {
  \set associatedVoice = "words"
	This is the sad -- dest day of all. Pull my pants on and I cry.
	This is the sad -- dest day of all. And there's no -- one I can tell.
	If there's a win -- dow in my soul, glass is caked with dust and soil.
	If there's a sto -- ry to be told I will ne -- ver find the words.
	May as well leave the lights turned off. There ain't no -- thing here to see.
	No place left to go but down. No -- one left to ask but
	Oh God, please give me what I don't de -- serve.
	Oh God, please give me one more try.
}



harmonies = \chordmode {
  g1 | g | a:m | a:m |
  g | g | a:m | a:m |
  g | g | a:m | a:m |
  g | g | a:m | a:m |
  g | g | a:m | a:m |
  g | g | a:m | a:m |
  g | g | a:m | a:m |
  g | g | a:m | a:m |
  g
}

\score {
  
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }

    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \verse_one
  >>
  \layout { }
  \midi { }
}
