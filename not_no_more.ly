\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Not No More"
  composer = "Words by Rivka & Mike iLL music from Folk Dance Song..."
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

fourBlank = \relative {
	r1 r2  | r1 r2  | r1 r2  | r1 r2  |
}

verse = \relative c' { 
  \clef treble
  \key g \major
  \time 12/8 
  \set Score.voltaSpannerDuration = #(ly:make-moment 6/8)
  #(ly:expect-warning "cannot end volta") 
	b4 b8 b4 b8 b b4 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Used to be the mid -- dle class made some mo -- ney in the clear.
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	b4 b8 b4 b8 b4 b8 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Love -- ly beach we used to share, creat -- ures wa -- ter, earth and air.
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	b4 b8 b4 b8 b4 b8 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Once up -- on a yes -- ter -- year, aqui -- fer was crys -- tal clear
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	b4 b8 b4 b8 b4 b8 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Lobby -- ists were once res -- trained in their in -- flu -- en -- tial games
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	b4 b8 b4 b8 b4 b8 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Once u -- pon a pen -- sion plan, diffe -- rent than a pok -- er hand
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	b4 b8 b4 b8 b4 b8 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Gamb -- ling on our roofs and beds, sen -- sib -- ly for -- bid for -- bid
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	b4. b4 b8 b b4 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Who did O -- ba -- ma -- care? Frank -- en -- stein of sin -- gle payer
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	b4 b8 b4 b8 b4 b8 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Who you wor -- ship how you pray, not the busi -- ness of the state
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	b4 b8 b4 b8 b4 b8 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % As a child and ear -- ly teen, life was clear -- ly as it seemed.
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	b4 b8 b4 b8 b4 b8 b4 b8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Back in school they test -- ed some, but not so much it made you numb.
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	b8 b4 b4 b8 b b4 b4 r8 | b4 b8 b4 b8 b4 b8 b4 r8 | % Hud -- dled mas -- ses, hung -- ry scores, wel -- comed at our gol -- den shores,
	b4 b8 b4 b8 b4 b8 b4 r8 | b4.~ b4 b8 b4 b8 b4. | % Used to be I'm fair -- ly sure. Whao, but not no more.

	
}

words =  \lyricmode {
	Used to be the mid -- dle class made some mo -- ney in the clear.
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	Love -- ly beach we used to share, creat -- ures wa -- ter, earth and air.
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	Once up -- on a yes -- ter -- year, a -- qui -- fer was crys -- tal clear
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	Lob -- by -- ists were once res -- trained in their in -- flu -- en -- tial games
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	Once u -- pon a pen -- sion plan, diffe -- rent than a pok -- er hand
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	Gamb -- ling on our roofs and beds, sen -- sib -- ly for -- bid for -- bid
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	Who did O -- ba -- ma -- care? Frank -- en -- stein of sin -- gle payer
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	Who you wor -- ship how you pray, not the busi -- ness of the state
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	As a child and ear -- ly teen, life was clear -- ly as it seemed.
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	Back in school they test -- ed some, but not so much it made you numb.
	Used to be I'm fair -- ly sure. Whao, but not no more.
	
	Hud -- dled mas -- ses, hung -- ry scores, wel -- comed at our gol -- den shores,
	Used to be I'm fair -- ly sure. Whao, but not no more.
}

chorus_text =  \lyricmode {

}

basic_verse_bass = \chordmode { c:m | c:m | c:m/fis | c:m/fis | } 
basic_chorus_bass = \chordmode { c:m | c:m | c:m/eis | c:m/eis | c:m/fis |c:m/fis | c:m/a |c :m/a | }

harmonies = \chordmode {

}
	
\score { 

#(define mydrums '((tamtam default #t 0)))

<< 
\new Staff {
	\new Voice = "words" { \verse } 
} 
\new Lyrics \lyricsto "words" { \words  } 

\new ChordNames {
  \set chordChanges = ##t
  \harmonies
}
 >> 
} 


