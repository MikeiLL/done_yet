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
  	b4 r2. | r2 g4 a~ |a4 r2. | r2 e8 fis g a | % had to spend
  	g1( | fis2)~ fis8 fis4 fis8 | e2. r4 | r2 g4 e |
  	d4 e8 d4. r4 | r1 | d4 e8 g4. r4 | r1 | 
  	fis8 fis4. fis8 fis4 fis8~ | fis4. fis8 g8 fis4. | e1 | r2 
  	
  	d8 e g a | % If I'm gonna starve
  	b4 r2. | r2 g4 a~ |a4 r2. | r2 e8 fis g a |
  	g1( | fis2)~ fis8 fis4 fis8~ | fis e~ e2. | r2 g4 e % ... drinkin
  	d4 d d8 e4. | r2. d8 d | d4 d8 d4 e4 g8~ | g2 r4. fis8 | % ... alright ya 
  	fis4. fis8 fis fis4 fis8~ | fis4 fis g fis8 e~ | e1~ | e2 r4. d'8 |
  	
  	d8 d d d d4 d8 e~ | e4 d d8 b4. | d8 d d4 d d8 e~ | e d4 c b b8~ | % This is what they call freedom ... make it
  	b g a e g4 g8 e | g4 e8 b'4. r4 | c4 c b8 b b b | a4 a8 b4 b c8~ | % Evry single .... fates ... all our ti-
  	c2 b4 a8 c~ | c4. c8 b4 a8 c~ | c4 r2. | r1 | r | c4 c c8 b a g~ | % ... truckstop honeymoon__
  	g1 | r |
  }
  
  b8 a b a g4 fis8 g16 fis | e4 d2. | g4 fis8 g16 fis e4 d( | g) a8 b a g fis4 | 
  g8 d g b a4 b | g8 d g b a4 g | g8 d g b a g fis a | g4 d g\staccato d\staccato |
  g\staccato d8.\staccato d16\staccato g4\staccato d\staccato | g8 g d4 a' fis | g8 g d4 a' fis | g8 g d4 a' fis | 
  g8 g d4 a' fis8 fis | g8 g b4 a fis8 fis | g8 g b b a4 fis | g d r d | 
  b'4. a8 g4 fis8 g16 fis | e4 d2. | g4 \tuplet 3/2 { fis8 g fis } e4 d | g a8 b a g a4 |
  d4 \tuplet 3/2 { b8 d b } a4 g | d'4 \tuplet 3/2 { c8 d c } b4 a | a8 b16 a g4 fis a8 g | d8 g b d, a' g fis a |
  d,8 g b d, a' g fis a | << d,4 g b >> << d,4 g b >> << d,4 g b >> << d,4 g b >> |
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
	hon -- ey -- moon __.
}

verse_two =  \lyricmode {
	Ev -- 'ry thing we
	had to spend. Spent it on a 
	one way tic -- ket. Now we're
	down and out, hight and dry.
	No -- thin' but our looks to get us
	by.
	
	If I'm gon -- na 
	starve to -- night. Then I wan -- na
	starve by your side. Drin -- kin'
	truck -- stop cof -- fee and I'll
	tell you it's all -- right. You
	know that you look gorge -- ous when you 
	cry.
	
	If this is what they call free -- dom, I'll take it.
	This is bad as it's gets we'll make it.
	Ev -- ry sin -- gle turn some -- thin's test -- ing me.
	Fate's just jeal -- ous 'cause we're spen -- din' all our
	time cha -- sin' signs for des -- ti -- ny.
	
	Truck -- stop ho -- ney -- moon
}

verse_three = \lyricmode {
	
	We were near -- ly half in -- sane and broke down
	by the time we left our strange home -- town.
	Living at the edge of bored to death and a
	place called no sur -- prise where the
	only thing that e -- ver chan -- ges is what gets you
	high. I'd already 
	
	kicked dope and a bad slut ha -- bit twice at least. And I'd just been re --
	placed by a pro -- per queen at a west side hair sa -- lon. If we had
	what to lose it was get -- ting old on Mary -- jane and Jack. And a --
	way was the on -- ly worth -- while place to get.
	
	If this is what they call free -- dom, I'll take it.
	This is bad as it's gets we'll make it.
	Ev -- ry sin -- gle turn some -- thin's test -- ing me.
	Fate's just jeal -- ous 'cause we're spen -- din' all our
	time cha -- sin' signs for des -- ti -- ny.
	
	Truck -- stop ho -- ney -- moon
}

verse_four =  \lyricmode {
	If I e -- ver knew your strength, if I e -- ver
	be -- lieved in your resolve to a --
	chieve e -- ven your wild -- est dreams,
	no -- thing is as dire as it seems.
	
	E -- ven as the sky turns pink
	on a -- no -- ther night here at the brink,
	we're got love to make, re -- cords to break, and
	no -- thing but ro -- mance to fill the hours.
	
	If this is what they call free -- dom, I'll take it.
	This is bad as it's gets we'll make it.
	Ev -- ry sin -- gle turn some -- thin's test -- ing me.
	Fate's just jeal -- ous 'cause we're spen -- din' all our
	time cha -- sin' signs for des -- ti -- ny.
	
	Truck -- stop ho -- ney -- moon
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
  
  
  g | g | g | g |
  g | g | g | g |
  g | g | g | g |
  g | g | g | g |
  g | g |  
  
  g | g | d | b/dis | % 
  e:m | e:m/d | c | c |
  g | g | e:m | e:m |
  d | d | c | c |
  
  g | g | d | b/dis | % 
  e:m | e:m/d | c | c |
  g | g | e:m | e:m |
  d | d | c | c |
  
  f:6 | e:m7 | ees:maj7 | b2:sus/fis b:7 |
  e1:m7/d | e:m/cis |
  a:m | a:m7 | a:m6 | a:m7 |
  a:m/d | a:m/d | a:m/d | a:m/d |
  g
  
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
