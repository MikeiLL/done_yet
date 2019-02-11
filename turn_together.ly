\version "2.18.2"

\header {
  title = "Turn Together – Rikki's Song"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
	<<
	\new Voice = "words" {
	\repeat volta 2 {
		c4 c d f | f a8 g4 f8 d4 | f a8 g4 f8 f4 | \time 2/4 g a | % Let's all ... face the
		\time 4/4 c~ \tuplet 3/2 {c8( bes a } g2) | r1 | % truth.
		bes4 bes8 bes4 bes8 c4 | d d8 d4 d8 c4 | bes8 bes bes bes4 bes8 c4 | \time 2/4 d f8 f | % Blasting music ... seem to 'ave
		\time 4/4 d4 d8 d4 bes8 d4 | bes8 c4. r2 | r1 | % tacitly agreed upon.
		c8 c a a g4 f | c'8 c a a g4 f | c g'8( a~) a2 | r1 | % Pass another king ... line.
		c8 c a a g4 f | c' a g f | \time 2/4 g a | \time 4/4 bes c8 c~ c2 | r1 | % Delicately ... house of cards
		bes4 bes8 bes4 bes8 c4 | d d d r | bes bes8 bes4 bes8 c4 | d f e c | % we've invested ... we're hardly
		d( c8 bes) a4 r | r1 | c8 c a a g4 f | c' a g r | % breathing. Do you ... wonder yes we do
		r4 f g a | bes c8 c4. c4 | r1 | % When happens when the wind blows
		bes4 bes bes c | d d8 d4 d8 c4 | bes8 bes bes bes bes4 c | d d8 d4. c4~ |c4 r2. | % Let's find out ... windows
		} 
	  }
	\new NullVoice = "more_words" {
	\repeat volta 2 {
		c,4 c d f | f a8 g4 f8 d4 | f a8 g4 f8 f4 | \time 2/4 g a | % Let's all ... face the
		\time 4/4 c~ \tuplet 3/2 {c8( bes a) } g2 | r1 | % truth.
		bes4 bes8 bes4 bes8 c4 | d d8 d4 d8 c4 | bes8 bes bes bes4 bes8 c4 | \time 2/4 d f8 f | % Blasting music ... seem to 'ave
		\time 4/4 d4 d8 d4 bes8 d4 | bes8 c4. r2 | r1 | % tacitly agreed upon.
		c8 c a a g4 f | c'8 c a a g4 f | c g'8( a~) a2 | r1 | % Pass another king ... line.
		c8 c a a g4 f | c' a g f | \time 2/4 g a | \time 4/4 bes c8 c~ c2 | r1 | % Delicately ... house of cards
		bes4 bes8 bes4 bes8 c4 | d d d r | bes bes8 bes4 bes8 c4 | d f e c | % we've invested ... we're hardly
		d( c8 bes) a4 r | r1 | c8 c a a g4 f | c' a g r | % breathing. Do you ... wonder yes we do
		r4 f g a | bes c8 c4. c4 | r1 | % When happens when the wind blows
		bes4 bes bes c | d d8 d4 d8 c4 | bes8 bes bes bes bes4 c | d d8 d4. c4~ |c4 r2. | % Let's find out ... windows
		} 
	  }
	>>
}

verse_one =  \lyricmode {
  \set associatedVoice = "words"
  \set stanza = #"1. "
  Let's all face the facts to -- ge -- ther let's turn to -- ge -- ther to face the 
  truth.
  Blas -- ting mu -- sic with sil -- ken blin -- ders on. Sing -- ing the sto -- ries we seem to 'ave
  ta -- cit -- ly a -- greed u -- pon.
  Pass a -- no -- ther king down. Pass a -- no -- ther queen down the line.
  De -- li -- cate -- ly place them oh so slow -- ly on the house of cards
  we've in -- ves -- ted our whole lives in. 
  No sur -- prise you can see we're hard -- ly brea -- thing.
  Do you e -- ver won -- der (Yes we do.) What hap -- pens when the wind blows?
  Let's find out to -- night to -- ge -- ther. Let's o -- pen up the door and all the win -- dows.
}

verse_two =  \lyricmode {
  \set associatedVoice = "more_words"
  \set stanza = #"2. "
  Let's all face the facts to -- ge -- ther let's turn to -- ge -- ther to face the 
  mir -- ror.
  Gas -- ping loud -- ly so un -- self -- con -- scious -- ly. Li -- ving the sto -- ries we seem to 'ave
  ma -- gic -- ly to -- ge -- ther spun.
  Pass a -- no -- ther drink down. Pass a -- no -- ther taste down the line.
  De -- li -- cate -- ly bring them oh so slow -- ly to your neigh -- bors lips
  may -- be just to their fin -- ger -- tips. 
  Tea -- ry eyed you can see we're deep -- ly brea -- thing.
  Do you e -- ver won -- der (Yes we do.) What hap -- pens when theres no clothes?
  Let's find out to -- night to -- ge -- ther. Let's o -- pen up the clo -- sets and the war -- drobes.
}

harmonies = \chordmode {
  f1 | f | f | f2 | % Let's all face ... face the
  c1 | c | c | c | c | c2 | % truth. Blasting ... to 'ave
  c1 | f | f | % tacitly  ... upon
  f | f | f | f | % Pass ... the line
  f | f | f2 | c1 | c | % Delicately ... house of cards.
  c | c | c | c | % No surprise ... hardly
  f | f | % breathing.
  f | f | % Do you ... we do
  f | c | c | % What happens ... wind blows
  c | c | c | c | %  Let's find out ... windows
  f |
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
