\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Ship of Fools"
  composer = "By Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

verse = \relative c' { 
  \clef treble
  \key c \major
  \time 6/8 
  \set Score.voltaSpannerDuration = #(ly:make-moment 6/8)
  #(ly:expect-warning "cannot end volta") 
	\partial 4 c8 d |
	e2 e8 e | d2 d8 d | c2 c8 c | cis2 cis8 cis | % I was tied to the mast on an old ship of fools
	d2 e8 d | c4 c c8 a | c4 r2 | r2 c8 d |% Where I once was the cap -- tain, so I thought.
	e2 e8 e | d2 d8 d | c2 c8 c | cis2 cis8 cis |% And I barked my com -- mands at the half heart 
	d4 e d | c c a | c4 r2 | r2 c8 d | % ‘Till we end -- ed up far from our course. On a 
	
	e4. e8 e e | d2 d8 d | c2 c8 c | cis2 cis8 cis | % On a small un -- co -- vered raft, when we found you a -- drift
	d4 e f | e e d | e4 r2 | r2 r8 e | % And we lift -- ed you over the side.
	e2 e8 e | e2 e8 e | e4 e f | g2 f8 e | % You told us a tale. A re -- mote de -- sert isle.
	f4 g f | e e d | e4 r2 | r2  % Where you left your o -- ri -- gi -- nal tribe.	

}

chorus = \relative c' { 
	g8 a | 
	c2 d8 e | g2 g,8 a | % It was love at first sight.
	c2 d8 e | g16( a8.~ a4) r4 | % I was scared, it was right.
	c,4 c8 c4 d8~ | d4 d16 d d4 c8 | e2 r4 | r2 g,8 a | % Hope -- less -- ly drawn to the blind -- ing light. As we 
	c2 d8 e | g2 g,8 a | % feel our way through. You for 
	c2 d8 e | g16( a8.~ a4) c,8 c | % me, me for you We dis -- 
	c8 c4. c8 c | d8~ d16 e d8 c4 b8 | c4 r2 | r2. | r2. | r2  % co -- ver that we’re stron -- ger as one than two.

}

verse_two = \relative c' { 
	r4 |
	e2.( | d) | c4 c c | cis cis cis | % You fearlessly tirelessly
	d e d | c a c\glissando | g r2 | r2 r8 e' | % Did what no one else would do. Ya 
	e2 e8 e | d2 d8 d | c8. c16 c8 c~ c4 | cis2 cis8 cis | % shamed and ya blamed and ya ul -- ti -- mate -- ly claimed Near -- ly 
	d4 e d | c c8 a4. | c4. r4. | r2. | % all my in -- sen -- si -- ble crew.
	
	e4 e4. e8 | e4 e4. e8 | e4 e4. f8 | g4 f4. e8 | % Cleaned out the quar -- ters Found maps I’d for -- got -- ten we
	f4 g f  e e4. d8 | e4 r2 | r2. | % char -- ted our course for the sun
	e4 e4. e8 | d2 d8 d | c4 c4. c8 | cis2 cis8 cis | % Coun -- ted the stars, and lost track of the hours and we
	d4 e d | c c a | c4 r2 | r2 % ar -- gued at eve -- ry new turn.

}

verse_three = \relative c' { 
	r4
	e2.~ | e2.~ | e2~ e8 f16 g | f4 e4. e8 | % We made it this far to
	f4 e f | g a f | f8( e~) e4 r | r2. | % ge -- ther through sun -- shine and rain
	e4. e | e4 e e | a8( g) a2 | g2 f8 e | % We know parts of each o -- ther no -- bo -- dy 
	f4 g a | g16 g~ g2 f8 | f( e4.) r4 | r4. e4 e16 d | % else on this pla -- net can claim. I’m still a 
	
	d4 c4. c8 | d2~ d8 e16 f | e4 r2 | r4 f g | % damn fool and you’re still a queen
	g f e | d16 c~ c4. d4\glissando | g,4. r | r2 r8 e' | % I guess some things they real -- ly don’t change. I
	e4 e4. e8 | e4 e e | e e f | g f e | % loved you the first day, I’ll love you for -- e -- ver
	f g f | e8( d16 c b4.) b8 | c4 r2 | r2. | % and all of the time be -- tween.
}% 
% 
words = \lyricmode {
	I was tied to the mast on an old ship of fools
	Where I once was the cap -- tain, so I thought.
	And I barked my com -- mands at the half heart -- ed crew
	‘Till we end -- ed up far from our course.
	
	On a small un -- co -- vered raft, when we found you a -- drift
	And we lift -- ed you o -- ver the side.
	You told us a tale. A re -- mote de -- sert isle.
	Where you left your o -- ri -- gi -- nal tribe.	
	
	CHORUS
}


words_two = \lyricmode {
	You fear -- less -- ly, tire -- less -- ly 
	Did what no one else would do.
	Ya shamed and ya blamed and ya ul -- ti -- mate -- ly claimed
	near -- ly all my in -- sen -- si -- ble crew.
	
	Cleaned out the quar -- ters found maps I’d for -- got -- ten
	we char -- ted our course for the sun.
	Coun -- ted the stars, and lost track of the hours
	and we ar -- gued at eve -- ry new turn.
	
	% CHORUS
}

words_three = \lyricmode {
	We made it this far
	to -- ge -- ther through sun -- shine and rain
	We know parts of each o -- ther no -- bo -- dy 
	else on this pla -- net can claim
	
	I’m still a damn fool and you’re still a queen
	I guess some things they real -- ly don’t change
	I loved you the first day, I’ll love you for -- e -- ver
	and all of the time be -- tween.

	% CHORUS
}

chorus_text =  \lyricmode {
	It was love at first sight.
	I was scared, it was right.
	Hope -- less -- ly drawn to the blind -- ing light.
	As we feel our way through,
	you for me, me for you,
	we dis -- co -- ver that we’re stron -- ger as one than two.
}

basic_verse = \chordmode { c2.| c:/b | c:/a| bes:min | f:/c | f:/c | c2.| c2.| } 
chorus_chords = \chordmode { c2. | c:/g | fis:m7.5- | f | f | f | c | c | }
four_seas = \chordmode { c2. | c | c | c | }

harmonies = \chordmode {
	\partial 4 c4
	\basic_verse
	\basic_verse
	\basic_verse
	\basic_verse
	\chorus_chords
	\chorus_chords
	\four_seas
}
	
\score { 

<< 

\new ChordNames {
  \set chordChanges = ##t
  \harmonies
}

\new Staff {
	\new Voice = "words" { \verse } 
	\new Voice = "chorus" { \chorus } 
	\new Voice = "words_two" { \verse_two } 
	\new Voice = "chorus_two" { \chorus } 
	\new Voice = "words_three" { \verse_three } 
} 
\new Lyrics \lyricsto "words" { \words  } 
\new Lyrics \lyricsto "chorus" { \chorus_text  } 
\new Lyrics \lyricsto "words_two" { \words_two  } 
\new Lyrics \lyricsto "chorus_two" { \chorus_text  } 
\new Lyrics \lyricsto "words_three" { \words_three  } 

 >> 
} 


