\version "2.18.2"

\header {
  title = "Good Old New Age Love Fest"
  composer = "Words and Music by Rivka & Mike iLL"
  tag = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key c \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \partial 8*7 g4. c4 ees |
  g1~ | g8 aes g aes g f ees r | f4. d4.~ d4~ | d8 g,4. bes4 d |
  f1~ | f8 g f g f ees d r | ees2 d4 c8 c | r c4. ees4 g |
  c1~ | c8 ees d ees d r c r | b4. aes'~ aes4 | aes8 b, aes' b, g' f d ees |
  c8 r4 c8 r c c r8 | c4 r2. | c8 c r4 c c | c4 r2. |
  
  \new Voice = "words" {
  	c,8 c c c c c c c | c c c ees~ ees2 | % This is for the riders of the
  	f8 f ees f4. ees8 ees | f f ees c r2 | % Riding around with
  	c4 c c c8 c | c c c c c4 r | % All jacked up
  	d8 r c d4 d8 r4 | d8 d c c d4 r | % Great ta see ya
  	d8 r c d4 d8 c4 | d d d r | % help to voice
  	d8 d d d c c4 bes8~ | bes bes bes4 aes r | % Rattling and bangin
  	aes8 aes aes bes4 r8 bes bes | c c c d4 d8 ees4 | % Riding around on this ... beyond
  	\tuplet 3/2 { d4 c ees d c ees } | \tuplet 3/2 { d4 c ees } d2 | 
  	
  	\repeat volta 2 {
		% Chorus
		r1 | r4 g f ees |
		d4. c4.~ c4 | r g' f ees |
		d4. c4.~ c4 | r g' f ees |
		d4. c4.~ c4 | bes2 aes4. g'8~ |
		g4 f2.~ | f4 g4. ees |
		c1~ | c4 g'4. bes |
		a4. g~ g4~ | g g2 g4 |
		c r b r | bes r a g |
		b( bes b) g~ | g1 |
		r1 | r | r | r | 
		% Verse two
		}
	  	\alternative {
		  {
		  	g,8. g16~ g8 bes d4. c16 c | d8 d ees d d4 r | % Hard to believe
		  	r8 f4 ees8 ees16 d ees4 d8 | ees4 d8 bes4. r4 | 
		  	r4. d8 d d d ees~ | ees4 ees8 ees f4. g8~ | 
		  	g g f g4 g f8 | g4. g4.~ g4 | % when and for how long
		  	r f8 f ees ees d d | d d4 d8 c4 r8 c8~ | % Everybody's trying to snake your slot, snatch
		  	c c bes4 r8 bes4 bes8 | aes4. c8 d d4 d8 | % snatch... hitch your boy and skim your dough. A yogi's con
		  	d4 d r2 | r4 c8 c c c c c | % a yogi's... everybody who was
		  	\tuplet 3/2 { d4 d d } ees2~ | ees4 r8 g,8 g4 g8 g | % noone... The least of my
		  	g g r4 d'8 d d d | c d4. d4 r | % people... sainthood. 
		  	ees8 ees d ees4. ees4 | r4 g g g | % Who is the most less. Then some punk 
		  	g2. r8 g8 | f8 f4 ees ees8 d4 | % dies a
		  	ees4. d c4~ | c1 | % aging shadow
		  	d8 d d d d4 d8 d | d d d2 r4 | % Everybody's favorite
		  	d c ees8 ees r4 | d8 d c aes4. r4 | % Loved by 
		  	r8. c16~ c8 d4 d d8~ | d4 d8 d4. d8 ees | % We come back down to Earth
		  	d1 | r1 | 
		  }
		  {
		  	c8 c c c c c r c |
		  }
		}
	}
  
}

text =  \lyricmode {
\set associatedVoice = "words"
	This is for the ri -- ders of the wrin -- kl -- y road,
	ri -- ding a -- round with a piece of the sun.
	All jacked up from the rat -- the and the hum.
	Great ta see ya. Awe -- some you could come 
	help to voice this in -- can -- ta -- tion.
	Rat -- tl -- ing and thump -- ing sha -- kers and drums.
	Ri -- ding a -- round on this wrin -- le -- y road be -- yond
	co -- lor and gen -- der and coun -- try and crowd.
	
	% Refrain
	It's not a game show.
	It's not a con -- test
	It's just a good old new age love fest.
	Fools and queens, gods and mons -- ters all of
	us. Sat. Sat. Na -- ma -- sté. Om.
	
	% Verse two
	Hard to be -- lieve we are peo -- ple of beau -- ty.
	All this bick -- er -- ing and back stab -- bing.
	Comp -- et -- ing for who's gon -- na shine
	when and for how long and how bright.
	Ev' -- ry bo -- dies try -- ing to snake your slot,
	snatch your boy and skim your dough. A yogi's con -- 
	ven -- tion. Ev -- 'ry -- bo -- dy who was
	no -- one was there. The least of my
	peo -- ple po -- li -- tick -- ing for saint -- hood.
	Who is the most less. Then some punk dies
	a skin -- ny lone -- ly a -- ging
	sha -- dow.
	Ev' -- ry -- bo -- dies favo -- rite pain in the ass.
	Loved by ma -- ny. Ha -- ted by all.
	We come back down to Earth for a while.
	
	% Verse three
	This is for the wri -- ters, the
}


harmonies = \chordmode {
  \partial 8*7 c2.:min11 c8:min11
  c1:min11 | c:min11 | gis:13 | gis:13 |
  gis:13 | gis:13 | c:min11 | c:min11 | 
  c:min11 | c:min11 | gis:13 | gis2:13 f2:9.5- |
  c1:min11 | c:min11 | c:min11 | c:min11 |
  
  % First verse
  c:min11 | c:min11 | gis:13 | gis:13 |
  gis:13 | gis:13 | c:min11 | c:min11 | 
  c1:min11 | c:min11 | gis:13 | gis:13 |
  gis:13 | gis:13 | c:min11 | c:min11 | 
  c:m9 | c:m9 | 
  
  % Chorus
  c:min11 | c:min11 | gis:13 | gis:13 |
  gis:13 | gis:13 | f:9.5- | f:9 |
  c:min11 | c:min11 | gis:13 | gis:13 |
  f:9.5- | f:9 | f:9.5- | f:9 | 
  c:min6 | gis:11+.13 | c:min9 | c:min9 | 
  
  % Second verse
  c:min11 | c:min11 | gis:13 | gis:13 |
  gis:13 | gis:13 | c:min11 | c:min11 | 
  c:min11 | c:min11 | gis:13 | gis:13 |
  gis:13 | gis:13 | c:min11 | c:min11 | 
  c:min11 | c:min11 | gis:13 | gis:13 |
  gis:13 | gis:13 | c:min11 | c:min11 | 
  c:min11 | c:min11 | gis:13 | gis:13 |
  gis:13 | gis:13 | c:m9 | c:m9 | 
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \text
  >>
  \layout { }
  \midi { }
}
