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
	hh4 hh hh2 | hh8 hh hh hh hh4 hh8 hh | hh4 hh8 hh hh4 hh | hh hh hh  hh8 hh | % like naw man ... got a
	hh8 hh hh4. hh4 hh8~ | hh4. r8 hh8 hh hh4 | hh4.. hh16 hh4 hh | \tuplet 6/4 { hh4 hh hh hh hh hh } | % ... 800 lbs with his teeth
}

words =  \lyricmode {
	First time saw her eight weeks a -- go. Friend of mine took me, check out the show.
	Took me by sur -- prise. Blew my freak -- ing mind it was
    Roc -- ky Hor -- ror and The Twi -- light Zone comb -- ined. I was
    like, "\"Naw", man. I don't wan -- na "go.\"" He was like, "\"Bet" -- ter not miss this one, bro. Got a
    mid -- get clown runs 'round pul -- lin' pants down; this dude lifts eight hund - red pounds with his teeth;
    girl in red span -- dex spins four -- ty hu -- la hoops, ank -- les to neck.
    Thing is frea -- ky dee -- key, thing is wic -- ket wild. It was
    Ring -- ling Broth -- ers do it your -- self style. D I O "style.\""	
}
    	
\score { 
<< 
\new DrumStaff { 
   \new DrumVoice = "words" { \verse } 
} 
\new Lyrics \lyricsto "words" { \words  } 
 >> 
} 