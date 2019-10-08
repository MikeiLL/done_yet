\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Not No More"
  composer = "Words by Rivka & Mike iLL music from Ciuleandra as sung by Maria Tănase"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

fourBlank = \relative {
	r1 | r | r | r |
}

verse = \relative c' { 
  \clef treble
  \key g \major
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 6/8)
  #(ly:expect-warning "cannot end volta") 
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b b4 } \tuplet 3/2 { b4 r8 }| \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Used to be the mid -- dle class made some mo -- ney in the clear.
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Love -- ly beach we used to share, creat -- ures wa -- ter, earth and air.
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Once up -- on a yes -- ter -- year, aqui -- fer was crys -- tal clear
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Lobby -- ists were once res -- trained in their in -- flu -- en -- tial games
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Once u -- pon a pen -- sion plan, diffe -- rent than a pok -- er hand
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Gamb -- ling on our roofs and beds, sen -- sib -- ly for -- bid for -- bid
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	\tuplet 3/2 { b4. } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b b4 } \tuplet 3/2 { b4 r8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Who did O -- ba -- ma -- care? Frank -- en -- stein of sin -- gle payer
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Who you wor -- ship how you pray, not the busi -- ness of the state
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % As a child and ear -- ly teen, life was clear -- ly as it seemed.
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank

	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Back in school they test -- ed some, but not so much it made you numb.
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.
	\fourBlank
	
	\tuplet 3/2 { b8 b4 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b b4 } \tuplet 3/2 { b4 r8 } | \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4| % Hud -- dled mas -- ses, hung -- ry scores, wel -- comed at our gol -- den shores,
	\tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 r8 } | b4~ \tuplet 3/2 { b4 b8 } \tuplet 3/2 { b4 b8 } b4 | % Used to be I'm fair -- ly sure. Whao, but not no more.

	
}

words = \lyricmode {
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


