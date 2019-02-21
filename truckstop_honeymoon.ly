\version "2.18.2"

\header {
  title = "Truckstop Honeymoon"
  composer = "Words and Music by Rivka & Mike iLL"
  tag = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4
  b8 a b a g4 fis8 g16 fis | e4 d2. | g4 fis8 g16 fis e4 d | g a8 b a g fis4 |
  g d8 r r4 d8 r | r4 d8 r r4 d | g8 d g a b4 a16 b a g | fis4 g2. |
  g8 a4 b8 a g fis4 | b8 a g4 g fis g2 r | r4 << d g b >> r4 << d, g b >> | << d, g b >> r << d,4. g b >> r8 |
  r4 << d, g b >> r4 << d, g b >> | << d,4. g b >> r8 d,8 r d d | g4 r g g | g g g g |
  g-^ g g g | g g g g  | g-^ g g g | g g g g |
  g g g g | g g g g | b8 a b a g4 b8 g | b4. g d'4 | d2. b8 d |
  b a g a4. fis4 | fis8 g~ g2.~ | g4 d8 e g a b g~ |
  g2 \grace g16 fis4 e | d4 fis g a | g1~ | g |
  g8 g g4 g g | g8 g g4 g g | g8 g g4 g g | g8 g g4
   
  \new Voice = "verse_one" {
  \tuplet 3/2 { d c b} | % Ain't
  b4. d r4 | c b c b8 d~ | d4 r2. | r2. d4 | % changed ... road. Being 
  e4 e r e8 e | e4 e8 e4. e8 g~ | g4 r2. | r2 g4 e | % too broke ... role. That don't
  d4 d8 d~ d2 | r4 d \tuplet 3/2 { d8 d d} d4 | e8 e4. e8 e4. | g4 r g g | % slow ya down. Just more of the ... maxed out
  a4. a8 a4 a8 a~ | a g8 fis4 fis4 fis8 a8~ | a4 a8 a4. a8 a~ | a4 r2. | % cards ... psychic mark
  
  r4 d, d8 d c b | c4 b8 d4. b8 b | c4 c c8 b4 d8~ | d4 r2. | % Late ... Flying J
  r4 e8 e e4 e8 e | e4 g8 g4. d8 d | e4 e8 e e4 e8 e~ | e4 r8 g8 g4 g8 e | % Nuzzled ... buffet. Aside from the 
  d4 r d b | d2. d8 d | e4 e e e8 g~ | g4 r g g | % sun. No one cares ... and the
  a2 a4 a8 a~ | a2 a4 a | a a a8 a4. | c4 r2. | % ride town ... helps forget me where I'm from
  
  r4 c g c~ | c b g c~ | c b g c~ | c r2 c4 | % Wasn't raised in a runcible spoon. A
  c b g c~ | c2 r | r c4 c | c2 c | % year and ... day on a truck stop
  c4 b g2~ | g2 r2 | r1 | r1 | % honey moon
  }
  
  b8 a b a g4 fis8 g16 fis | e4 d2. | g4 fis8 g16 fis e4 d | g a8 b a g fis4 |
  g4 << d b' >> r << d, b' >> | << d, g b >> r << d, g b >> d,8 d | g4 r r r8 d | g8 g d4 r d |
  b'8 a g4 fis a | g2 r | r1 | << d2 g b >> g8 g r d |
  g8 r4. r2 | g8 g fis r8 a r fis8 fis | g4\staccato r2. | a4\staccato fis\staccato a\staccato fis8 fis |
  g8 g d4 a' fis8 fis | g g r4
  
  \new Voice = "verse_two" {
  	d8 e g a |
  }
}

verse_one =  \lyricmode {
	\set associatedVoice = "verse_one"
 	Ain't like things 
 	changed much once we hit the road.
 	Being too broke for a cof -- fee and a roll.
	That don't slow ya down. Just more o' the same
	stub -- born for -- ward march. Maxed out 
	cards and emp -- ty bank ac -- counts on -- ly 
	leave a psy -- chic mark.
	
	Late mor -- ning in a park -- ing lot in a 
	place called Fly -- ing J.
	Nuz -- zled un -- der the in -- ter -- state with an all you can eat buf -- fet. A -- side from the
	son no one cares if we sleep 'till twelve or one. And the
	ride town to town helps for -- get me where I'm from.
	
	Was -- n't raised on a run -- ci -- ble spoon. A
	year and a day on a truck -- stop
	hon -- ey -- moon.
}

verse_two =  \lyricmode {
	Ev -- 'ry thing we
}


harmonies = \chordmode {
  g1 | 
  g | g | g | g |
  g | g | g | g |
  g | g | g | g |
  g | g | g | g |
  g | g | g | g |
  g | g | g | g |
  g | g | g | g |
  g | g | g | g |
  g | g | g | g |
  
  g | g | d | b/dis | % changed much
  e:m | e:m/d | c | c |
  g | g | e:m | e:m |
  d | d | c | c |
  
  g | g | d | b/dis | % late morning
  e:m | e:m/d | c | c |
  g | g | e:m | e:m |
  d | d | c | c |
  
  c | c/b | c/a | c/g |
  d/fis | d/e | g | g/c |
  g | g | g | g |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "verse_one" \verse_one
    \new Lyrics \lyricsto "verse_two" \verse_two
  >>
  \layout { }
  \midi { }
}
