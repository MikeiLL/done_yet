\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Where Did We Go Right?"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \transpose c g {
	 \relative c' {
	  \clef treble
	  \key c \major
	  \time 4/4 
		\new Voice = "words" {
			\voiceOne 
			g8 g4 g8 a4 c | d8 e4. r2 | % You used to be my lover
			g,4. g8 a4 c | e r2. | % Now you're just my spouse
			g,8 g4 g8 a4 c | c8 d4. r2 | % We used to share our bodies
			g,4. g8 a4 c | d r b( c |% Now we share a house Ooh
			d4. e8 d e d c | b4.) b8 b4 c | c8 d4 d8~ d8. c16 c16 b8.~ | % Ooh I often wonder where did we go 
			b4 d4 r2 | r8 g4 e8~ e8. d16 d16 c8.~ | c4 c r2 | r1 | % wrong Hey, where did we go right?
		
			g8 g4 g8 a4 c | d8 e4. r2 | % You used to be my best friend
			g,4. g8 a4 c | e r2. | % Now you're just my man.
			g,8 g4 g8 a4 c | c8 d4. r2 | % You used to pay attention
			g,4. g8 a4 c | d r b( c | % Now you pay the rent Ooh
			d4. e8 d e d c | b4.) b8 b4 c | c8 d4 d8~ d8. c16 c16 b8.~ | % Ooh I often wonder where did we go 
			b4 d4 r2 | r8 g4 e8~ e8. d16 d16 c8.~ | c4 c r2 | r1 | r | r | % wrong Hey, where did we go right?

			c2( ees | c4) r2. | c8 c c4 ees4 ees8 c~ | c4 r2. | % Right. Travelling through the night
			c8 c c4 ees4 f | g f2 ees4 | % Carrying our belongings No
			ges f2 ees4 | c4 r2. | % respite in sight.

			c2( ees | c4) r2. | c8 c c4 ees4 ees8 c~ | c4 r2. | % Right. Travelling through the night
			c8 c c4 ees4 f | g f2 ees4 | % Carrying our belongings But
			ges( f2) ees4 | c4 r2. | % at what price

			c2( ees | c4) r2. | c8 c c4 ees4 ees8 c~ | c4 r2. | % Right. Travelling through the night
			c8 c c4 ees4 f | g f2 ees4 | % Carrying our resentments through
			ges( f2) ees4 | c4 r2. | r1 | r | r | % fire and ice.
			
			g8 g4 g8 a4 c | d8 e4. r2 | % We used to fight like street cats
			g,8 g4 g8 a4 c | e r2. | % We used to fight like dogs
			g,8 g4 g8 a4 c | c8 d4. r2 | % You used to write me letters
			g,8 g4 g8 a4 c | d r b( c | % I used to sing you songs. Ooh
			d4. e8 d e d c | b4.) b8 b4 c | c8 d4 r8 r4 d4~ | d4. c8 c b4 d8~ | % Ooh I often wonder where did we go wrong
			d4 r2 g4 | e4. d8 d c4. | c4 r2. | r1 |  % Hey, where did we go right?
			
			c2( ees | c4) r2. | c8 c c4 ees4 ees8 c~ | c4 r2. | % Right. Travelling through the night
			c8 c c4 ees4 f | g f2 ees4 | % Carrying our belongings No
			ges f2 ees4 | c4 r2. | % respite in sight.

			c2( ees | c4) r2. | c8 c c4 ees4 ees8 c~ | c4 r2. | % Right. Travelling through the night
			c8 c c4 ees4 f | g f2 ees4 | % Carrying our belongings But
			ges( f2) ees4 | c4 r2. | % at what price

			c2( ees | c4) r2. | c8 c c4 ees4 ees8 c~ | c4 r2. | % Right. Travelling through the night
			c8 c c4 ees4 f | g f2 ees4 | % Carrying our resentments through
			ges( f2) ees4 | ges( f2) ees4  | c4 r2. |  % fire through fire and ice.
		}
	}
}

text =  \lyricmode {
	You used to be my lo -- ver
	Now you're just my spouse
	We used to share our bo -- dies
	Now we share a house Ooh 
	I of -- ten won -- der where did we go wrong
	Hey, where did we go right?
	
	You used to be my best friend
	Now you're just my man.
	You used to pay at -- ten -- tion
	Now you pay the rent
	Ooh I of -- ten won -- der where did we go wrong
	Hey, where did we go right?
	
	Right. Tra -- vel -- ling through the night
	Car -- ry -- ing our be -- long -- ings,
	no res -- pite in sight.
	
	Right. Tra -- vel -- ling through the night
	Car -- ry -- ing our be -- long -- ings,
	but at what price?
	
	Right. Tra -- vel -- ling through the night
	Car -- ry -- ing our re -- sent -- ments
	through fire and ice.
	
	We used to fight like street cats
	We used to fight like dogs
	You used to write me let -- ters
	I used to sing you songs. 
	Ooh I of -- ten won -- der where did we go wrong
	Hey, where did we go right?
	
	Right. Tra -- vel -- ling through the night
	Car -- ry -- ing our be -- long -- ings,
	no wor -- ry in sight.
	
	Right. Tra -- vel -- ling through the night
	Car -- ry -- ing our be -- long -- ings,
	but at what price?
	
	Right. Tra -- vel -- ling through the night
	Car -- ry -- ing our re -- sent -- ments
	through fire, through fire and ice.
}

harmonies = \chordmode {
  	g1 | g | g | g |
  	g | d | d | d | 
  	d | d | d | d |
  	d | g | g |
  	
  	g | g | g | g |
  	g | d | d | d | 
  	d | d | d | d |
  	d | g | g | g |
  	g |
  	
  	aes | g | aes | g |
  	aes | aes | aes | g |
  	
  	aes | g | aes | g |
  	aes | aes | aes | g |
  	
  	aes | g | aes | g |
  	aes | aes | aes | g |
  	g | g | g |
  	
  	% Verse three
  	g | g | g | g |
  	g | d | d | d | 
  	d | d | d | d |
  	d | d | g | g | 
  	
  	aes | g | aes | g |
  	aes | aes | aes | g |
  	
  	aes | g | aes | g |
  	aes | aes | aes | 
  	
  	aes | aes | aes | aes | 
  	g | 
  	
  	aes | aes | aes | aes | 
  	g |
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

  }
}

