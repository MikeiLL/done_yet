\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Where Did We Go Right?"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \transpose c g {
	 \relative c' {
	  \clef treble
	  \key c \major
	  \time 4/4 
  	  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
	<<
		\new Voice = "words" {
			\voiceOne 
	  	\repeat volta 2 {
			g8 g4 g8 a4 c | d8 e4. r2 | % You used to be my lover
			g,4. g8 a4 c | e r2. | % Now you're just my spouse
			g,8 g4 g8 a4 c | c8 d4. r2 | % We used to share our bodies
			g,4. g8 a4 c | d r b( c |% Now we share a house Ooh
			d4. e8 d e d c | b4.) b8 b4 c | c8 d4 d8~ d8. c16 c16 b8.~ | % Ooh I often wonder where did we go 
			b4 d4 r2 | r8 g4 e8~ e8. d16 d16 c8.~ | c4 c r2 | r1 | % wrong Hey, where did we go right?
		}
			\mark \markup { \musicglyph #"scripts.coda" }
			c2( ees | c4) r2. | c8 c c4 ees4 ees8 c~ | c4 r2. | % Right. Travelling through the night
			c8 c c4 ees4 f8 g~ | g4 f2 ees4 | % Carrying our belongings No
			ges( f2) ees4 | c4 r2. | % respite in sight.

			c2( ees | c4) r2. | c8 c4. ees4 ees8 c~ | c4 r2. | % Night. Make our burden light
			c8 c c4 ees4 f | g f2 ees4 | % Leaving our heavy wrongings
			ges f2 ees4 | c4 r2. | % and quarrels behind 

			c2( ees | c4) r2. | c8 c c4 ees4 ees8 c~ | c4 r2. | % Right. 
			c8 c c4 ees4 f | g f2 ees4 | % Carrying our resentments through
			ges( f2) ees4 | c4 r2. | r1 | r | r | % fire and ice.
		
			% ges( f2) ees4 | ges( f2) ees4  | c4 r2. |  % fire through fire and ice.
	}
	
	\new NullVoice = "verse_two" {
		\hideNotes {
			g8 g4 g8 a4 c | d8 e4. r2 | % You used to be my best friend
			g,4. g8 a4 c | e r2. | % Now you're just my man.
			g,8 g4 g8 a4 c | c8 d4. r2 | % You used to pay attention
			g,4. g8 a4 c | d r b( c | % Now you pay the rent Ooh
			d4. e8 d e d c | b4.) b8 b4 c | c8 d4 d8~ d8. c16 c16 b8.~ | % Ooh I often wonder where did we go 
			b4 d4 r2 | r8 g4 e8~ e8. d16 d16 c8.~ | c4 c r2 | r1 | % wrong Hey, where did we go right?
		}
	  }
	
	>>
	\new Voice = "verse_three" {
			g8 g4 g8 a4 c | d8 e4. r2 | % We used to fight like street cats
			g,8 g4 g8 a4 c | e r2. | % We used to fight like dogs
			g,8 g4 g8 a4 c | c4 d r2 | % You used to write me letters
			g,8 g4 g8 a4 c | d r b( c | % I used to sing you songs. Ooh
			d4. e8 d e d c | b4.) b8 b4 c | c8 d4 r8 r4 d4~ | d4. c8 c b4 d8~ | % Ooh I often wonder where did we go wrong
			d4 r2 g4 | e4. d8 d c4. | c4 r2. | r1 ^\markup { D.S. al Coda } |  % Hey, where did we go right?
	  }
	}
}

verse_one =  \lyricmode {
  \set stanza = #"1. "
	You used to be my lo -- ver
	Now you're just my spouse
	We used to share our bo -- dies
	Now we share a house Ooh 
	I of -- ten won -- der where did we go wrong
	Hey, where did we go right?
	
	Right. Tra -- vel -- ling through the night.
	Car -- ry -- ing our be -- long -- ings,
	but at what price?
	
	Night. Make our bur -- den light.
	Lea -- ving our hea -- vy worr -- ies,
	our quar - rels behind.
	
	Light. Tra -- vel -- ling through the night
	Burn -- ing our old re -- sent -- ments
	for warmth and light.
}

verse_two =  \lyricmode {
  \set stanza = #"2. "
  \set associatedVoice = "verse_two"
	You used to be my best friend
	Now you're just my man.
	You used to pay at -- ten -- tion
	Now you pay the rent
	Ooh I of -- ten won -- der where did we go wrong
	Hey, where did we go right?
}

verse_three =  \lyricmode {
  \set associatedVoice = "verse_three"
  \set stanza = #"3. "
	We used to fight like street cats
	We used to fight like dogs
	You used to write me let -- ters
	I used to sing you songs. 
	Ooh I of -- ten won -- der where did we go wrong
	Hey, where did we go right?
}

harmonies = \chordmode {
  	g1 | g | g | g |
  	g | d | d | d | 
  	d | d | d | d |
  	d | g | g |
  	
  	aes | g | aes | g |
  	aes | aes | aes | g |
  	
  	aes | g | aes | g |
  	aes | aes | aes | g |
  	
  	aes | g | aes | g |
  	aes | aes | aes | g |
  	g | g | g |
  	
  	g1 | g | g | g |
  	g | d | d | d | 
  	d | d | d | d |
  	d | d | g | g |
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
    >>
    }
  	\new Lyrics \lyricsto "words" \verse_one
    \new Lyrics \lyricsto "verse_two" \verse_two
    \new Lyrics \lyricsto "verse_three" \verse_three
  >>
  
  
  \layout { 
   #(layout-set-staff-size 16)
   }
  \midi { 
  	\tempo 4 = 125
  }
  
}

