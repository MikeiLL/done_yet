\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Ship of Fools"
  composer = "By Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

fourBlank = \relative {
	r1 | r | r | r |
}

verse = \relative c' { 
  \clef treble
  \key c \major
  \time 6/6 
  \set Score.voltaSpannerDuration = #(ly:make-moment 6/8)
  #(ly:expect-warning "cannot end volta") 

}

words = \lyricmode {
	I was tied to the mast on an old ship of fools
	Where I once was the cap -- tain, so I thought.
	And I barked my com -- mands at the half heart -- ed crew
	‘Till we end -- ed up far from our course.
	
	On a small un -- co -- vered raft, when we found you a -- drift
	And we lift -- ed you over the side.
	You told us a tale. A re -- mote de -- sert isle.
	Where you left your o -- ri -- gi -- nal tribe.	
	
	% CHORUS
	
	You fear -- less -- ly, tire -- less -- ly 
	Did what no one else could do.
	Ya shamed and ya blamed and ya ul -- ti -- mate -- ly tamed
	Near -- ly all my in -- sen -- si -- ble crew.
	
	Cleaned out the quarters
	Found maps I’d forgotten
	We charted our course for the sun
	Counted the stars, lost track of the hours
	And we argued at every new turn.
	
	% CHORUS
	
	We made it this far
	Together through sunshine and rain
	We know parts of each other
	Nobody else on this planet can claim
	
	I’m still a damn fool and you’re still a queen
	I guess some things they really don’t change
	Loved you the first day, I’ll love you forever
	And all of the time in between.

% CHORUS


}

% CHORUS_text =  \lyricmode {
	It was love at first sight.
	I was scared, it was right.
	Hope -- less -- ly drawn to the blind -- ing light.
	As we feel our way through
	You for me, me for you
	We dis -- co -- ver that we’re stron -- ger as one than two.
}

basic_verse = \chordmode { c:m | c:m | c:m/fis | c:m/fis | } 

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


