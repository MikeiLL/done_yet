\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Gulf Coast Heat (verses)"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}


verse = \drummode { 
	hh4 hh hh8 hh4 hh8 | r hh4 hh8 hh4 r | hh8 hh hh4 hh8 hh4 hh8 | r hh4 hh8 hh4 r | % First time... show
	hh8 hh hh hh hh4 r | hh8 hh hh hh hh4 hh8 hh | hh8 hh hh hh hh hh hh hh~ | hh hh4 hh8 hh4 hh8 hh % .... I was
	hh4 hh hh r | hh8 hh hh hh hh4 hh8 hh | hh4 hh8 hh hh4 hh | hh hh hh  hh8 hh | % like naw man ... got a
	hh8 hh4 hh4. hh4 | hh4. r8 hh8 hh hh4 | hh4.. hh16 hh4 hh | \tuplet 6/4 { hh4 hh hh hh hh hh } | % midget ... 800 lbs with his 
	hh r hh hh8 hh | hh hh hh4 hh hh8 hh | hh4 r8 hh hh8. hh16 hh4 | hh hh hh8 hh hh hh | % teeth... cradle with his
	hh4 r hh8 hh hh4 | hh4. hh hh4| hh8 hh hh hh hh4 r | hh8 hh4 hh8 hh4 r | % toes... ankles to neck
	hh8 hh hh hh hh hh r4 | hh8 hh hh hh hh4 hh8 hh | hh8 hh hh4 hh8 hh hh hh | % thing is freak... brothers do it
	hh4 hh hh r | r2 hh8 hh4 hh8~ | hh4. hh r4 | r1 | r | % our self... DIO style
	
}

words =  \lyricmode {
	First time saw her eight weeks a -- go. Friend of mine took me, check out the show.
	Took me by sur -- prise. Blew my freak -- ing mind it was
    Roc -- ky Hor -- ror and The Twi -- light Zone comb -- ined. I was
    like, "\"Naw," man. I don't wan -- na "go.\"" He was like, "\"Bet" -- ter not miss this one, bro. Got a
    mid -- get clown runs 'round pul -- lin' pants down; this dude lifts eight hund -- red pounds with his teeth;
    sword eat -- ing gi -- ant sticks nails up his nose; con -- tor -- tion -- ist does cats cra -- dle with his
    toes; guy in red span -- dex spins four -- ty hu -- la hoops, ank -- les to neck.
    Thing is frea -- ky dea -- ky, thing is wic -- ket wild. It was
    Ring -- al -- ing Broth -- ers do it our self style. D I O "style.\""	
}

eightBlank = \relative {
	r1 | r | r | r | r | r | r | r |
}

melody = \relative c' {
  \clef treble
  \key c \minor
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 6/8)
  #(ly:expect-warning "cannot end volta") 
   \new Voice = "chorus" {
     \eightBlank
     \eightBlank
     \eightBlank
     \eightBlank
     \voiceOne
     c4 c c bes~ | bes c2. | r1 | r |
     ees4 ees ees des~ | des ees2. | r1 | r |
     g4 g g fis~ | fis g2. | r1 | r |
     bes4 bes bes a~ | a bes2. | r1 | r |
	}
}
 
chorus_text =  \lyricmode {
	Temp -- ra -- ture's ri -- sing.
	Temp -- ra -- ture's ri -- sing.
	Temp -- ra -- ture's ri -- sing.
	Temp -- ra -- ture's ri -- sing.
}

tamtamstaff = {
  \override Staff.StaffSymbol.line-positions = #'( 0 )
  \override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
  \set DrumStaff.instrumentName = #"Tamtam"
}  
	
\score { 

#(define mydrums '((tamtam default #t 0)))

<< 
\new DrumStaff {
	\tamtamstaff
	\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums) 
	\new DrumVoice = "words" { \verse } 
} 
\new Lyrics \lyricsto "words" { \words  } 

\new Staff  {
    	\new Voice = "upper" { \melody }
  	}
  	\new Lyrics \lyricsto "chorus" \chorus_text
 >> 
} 


