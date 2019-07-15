\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Heavenly Rain"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

drum = \drummode { 
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
  bd8 bd bd bd r2 | r1 | bd8 bd bd bd r2 | r1 |
}

verse = \drummode { 
	r1 | hh4 hh hh hh | r1 | hh4 hh hh8 hh hh4 |
	r1 | hh8 hh hh4 hh hh | r1 | hh8 hh hh4 hh8 hh hh4 |
	r2. r8 hh8 | hh hh hh hh hh4 hh | r2. r8 hh8 | hh4 hh8 hh4. r4 |
	r2. r8 hh8 | hh hh hh4 hh r | r2. r8 hh8 | hh hh hh4 hh r |
	r1 | hh4. hh8 hh4 r | r2. r8 hh8 | hh4. hh8 hh hh4. |
	r2. r8 hh8 | hh hh hh hh4. hh4 | r2. r8 hh8 | hh4 hh hh8 hh4. |
	r1 | hh4 hh8 hh hh4 r | r2. hh4 | hh hh8 hh hh4 r |
	r1 | hh4 hh8 hh hh4 hh | r1 | hh4 hh hh r |
	r1 | hh8 hh hh4 hh r | r1 | hh8 hh hh4 hh r |
	r1 | hh4 hh8 hh hh4 hh | r1 | hh4 hh hh r |
	r1 | hh8 hh hh4 hh8 hh4. | r1 | hh8 hh hh4 hh2 |
	r1 | hh4 hh hh hh | r1 | hh8 hh hh4 hh r |
	r1 | hh8 hh hh4 hh hh | r1 | hh8 hh hh hh hh4 r |
	r1 | hh8 hh hh4 hh hh | r1 | hh8 hh hh hh hh4 r |
	r1 | hh4 hh hh hh | r1 | hh4 hh hh8 hh hh4 |
	r1 | hh8 hh hh4 hh hh | r1 | hh8 hh hh4 hh8 hh hh4 |
}

words =  \lyricmode {

      	One two three four
		Five Six Se -- ven Eight

		Me and my peops are
		Pret -- ty great pret -- ty great

		We’ve got a lit -- tle sto -- ry
		We’d like to share

		To eve -- ry -- one here
		And eve -- ry -- one there

		Once there was
		And once there was -- n’t

		A cou -- ple of hund -- red
		A hund -- red do -- zen

		Prayers in the wind
		Like stars in the sky

		Some -- bo -- dy out there
		Hear my cry

		Sing -- ing it once
		Danc -- ing it twice

		I’m gon -- na love me
		Love my life

		All of my troub -- les
		All of my pain

		Washed a -- way by
		Heav -- en -- ly rain

		Heav -- en -- ly rain -- drops
		Fall -- ing all a -- round

		Fall -- ing like drum beats
		Lis -- ten to the sound

		One two three four
		Five six sev -- en eight

		Me and my peops are
		Pret -- ty great. Pret -- ty great.
      }
    	
\score { 
<< 
\new DrumStaff { 
   \new DrumVoice = "words" { \verse } 
} 
\new Lyrics \lyricsto "words" { \words  } 

\new DrumStaff { 
   \new DrumVoice = "foo" { \drum } 
} 
 >> 
} 


%Additional Verses
\markup \fill-line {
\column {
  }
}

