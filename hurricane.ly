\version "2.18.2"

\header {
  title = "Hurricane"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key c \major
  \time 3/4
	<<
	\new Voice = "words" {
	\repeat volta 2 {
			e4 e e | e d8 c4 c8 | e4 e8 e4 e8 | e4 d8 c~ \tuplet 3/2 {c8 c c} | % Drowned ... if ya
			d4 d d8 d~ | d4( c8) b4 b8 | d4 d8 d4 d8 | d4 c8 b4. | % can't stand ... violins
			e8 e4 e4. | e4 d8 c4 c8 | e e4 e8 e e~ | e4 d8 c4. | % Met a man... over here
			d4 d d8 d~ | d4 c8 b4. | b4 c8 d4.~ | d2 r4 | % Worked ... him here.
			c4 c8 c4 c8 | c4 b8 a4. | c4 c8 c4 c8 | c4 b8 a4 c8 | % Instruments ... someone to
			d4 d8 d4 d8 | d4 c8 b4.~ | b2. | r | % care ... to care
			e8 d e2~ | e2.~ | e~ | e | % Hurricane 
			e8 d e2~ | e2. | g | r | % Hurricane blow
			e8 d e2~ | e2. | g~ | g2 f4 | % Hurricane blow my
			e2.~ | e2 d4 | c2. | r | % thoughts away
			e4 e e8 e | e4 e e8 e | e4 c2~ | c4 r2 | % Drawn ... garden
			d4 d d | d8 d4 d4 d8~ | d4 b2~ | b2. | % Best dance .. part in
			c4 c8 c4 c8 | c4 b8 a4. | c4 c8 c c4 | c8 b4 a4. | % Learning ... trade
			d4 d8 d4 d8 | d4 a8 b4 b8 | b4 c d~ | d2. | % Here you ... one needs
			c4 c8 c4 c8 | c4 b8 a4 b8 | c2. | c4 c8 b4 c8 | % Interjecting ... pick up your
			d4 d8 d4 d8 | d4 c8 b4 b8 | b4 c8 d4.~ | d2. | % violin ... tune
			e8 d e2~ | e2.~ | e~ | e | % Hurricane 
			e8 d e2~ | e2. | g | r | % Hurricane blow
			e8 d e2~ | e2. | g~ | g2 f4 | % Hurricane blow my
			e2.~ | e2 d4 | c2. | r | % thoughts away
			e8 e4 e e8 | e4 d8 c4 d8 | e4 e8 e4. | r2. | % Generators ... on
			e4 e8 e4 e8 | e4 b8 g4 b8 | e8 e4 e4. | r2. | % Lighting ... long
			r4 e8 e4 e8 | e4 d8 c4. | r4 e8 e4 e8 | e4 d8 c4. | % The old familiar ... gasp
			r4 d4 d4 | d4 c8 b4 b8 | b8( c4) d4.~ | d2. | % Sometimes ... laughter
			r4 c8 c4 c8 | c4 b8 a4. | r4 c8 c4 c8 | c b4 a c8 | % Between ... pause I
			d4 d8 d4 d8 | d4 c8 b4 b8 | b4 c8 d4.~ | d2. | % hear a whisper ... out of here
			e8 d e2~ | e2.~ | e~ | e | % Hurricane 
			e8 d e2~ | e2. | g | r | % Hurricane blow
			e8 d e2~ | e2. | g~ | g2 f4 | % Hurricane blow my
			e2.~ | e2 d4 | c2. | r | % thoughts away
			e8 d e2~ | e2. | g~ | g2 a4 | e4 r2 | r2. | r | r | % Hurricane, lift my roots.
			d8 c d2~ | d d8 f~ | f2.~ | f4 r e | d2.~ | d4 r c | b r2 | r2 r8 c | % We're as lost today as yesterday the
			d c d2~ | d2. | f2.~ | f2 e4 | d r2 | r2. | r | r | % difference is now there's proof.
		} 
	  }
	>>
}

verse_one =  \lyricmode {
  \set associatedVoice = "words"
	Drowned out by vi -- o -- lins. I'm turn -- ing down the vi -- o -- lins if you
	can't stand the si -- lence, im -- a -- gine back the vi -- o -- lins.
	Met a man, kind and fair. He's in here with us o -- ver there. 
	Worked hard to get him here. Keep him here.
	In -- stru -- ments and love af -- fairs fall a -- part with -- out some -- one to 
	care and who knows how to care.  
	Hur -- ri -- cane. 
	Hur -- ri -- cane, blow.
	Hur -- ri -- cane, blow my thoughts a -- way.
	Drawn down to the wild part of the gar -- den.
	Best dance I e -- ver took part in.
	Learn -- ing how for -- rests are made.
	Gave a bit of blood in trade.
	Here you come re -- mind -- ing me what no -- one needs.
	In -- ter -- ject -- ing pro -- fe -- sies of doom. Please pick up your
	vi -- o -- lin in -- stead and pull us out a tune.
	Hur -- ri -- cane. 
	Hur -- ri -- cane, blow.
	Hur -- ri -- cane, blow my thoughts a -- way.
	Gen -- e -- ra -- tor's pow -- er switch is rus -- ted on.
	Light -- ing up the thous -- anth act it's get -- ting long.
	The old fam -- il -- iar masks. We hold our breath and gasp.
	Some -- times cry our way to laugh -- ter.
	Bet -- ween the clust -- ered words, at eve -- ry preg -- nant pause I
	hear a whis -- per dar -- ing Let's get out of here.
	Hur -- ri -- cane. 
	Hur -- ri -- cane, blow.
	Hur -- ri -- cane, blow my thoughts a -- way.
	Hur -- ri -- cane, lift my roots.
	We're as lost to -- day as yes -- ter -- day.
	The differ -- ence is, now there's proof.
}



harmonies = \chordmode {
  c2. | c | c | c |
  e:m | e:m | e:m | e:m |
  f | f | f | f | 
  e:m | e:m | g | g |
  f | f | f | f | 
  e:m | e:m | g | g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  
  c2. | c | c | c |
  e:m | e:m | e:m | e:m |
  f | f | f | f | 
  e:m | e:m | g | g |
  f | f | f | f | 
  e:m | e:m | g | g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  
  c2. | c | c | c |
  e:m | e:m | e:m | e:m |
  f | f | f | f | 
  e:m | e:m | g | g |
  f | f | f | f | 
  e:m | e:m | g | g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  c | c | a:m | a:m/g |
  d:min | d:min | g | g |
  d:min | d:min | g | g |
  d:min | d:min | g | g |
  d:min | d:min | g | g |
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
