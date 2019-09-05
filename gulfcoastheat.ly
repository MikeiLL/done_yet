\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Gulf Coast Heat (verses)"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

eightBlank = \relative {
	r1 | r | r | r | r | r | r | r |
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
    \eightBlank
    \eightBlank
    hh2 hh | hh8 hh hh hh hh hh hh hh | hh hh r4. hh8 hh hh~ | hh hh4 r8 hh2 | % Tsss ... anyway umm
    r8. hh16~ hh4 hh hh | hh hh8 hh4. r4 | hh r8 hh hh4 r8 hh | hh4 hh8 hh4. r4 | % bout half way ... was blown
    hh8. hh4 hh r16 r8 hh | \tuplet 3/2 {hh4 hh hh } hh hh | r2 hh8. hh8. hh8 | hh4. hh8 hh8. hh16 hh8 hh | hh4 hh8 hh4. hh4 | hh4 r \tuplet 3/2 { r hh hh } | % Ringmistress... moustache our next
    hh r \tuplet 3/2 { hh4 hh hh } | \tuplet 3/2 { hh4 hh hh~ } hh4 r8 hh | \tuplet 3/2 { hh4 hh hh } hh4. hh8 | \tuplet 3/2 { hh4 hh hh~ } hh4 hh8 hh | % catch ladies and gentlemen... the mys
    \tuplet 3/2 { hh4 hh hh~ } hh4 hh8 hh | hh4. hh r8 hh8~ | hh4 hh8 hh16 hh4 hh8 hh8 hh16~ | hh4.. hh16~ hh8. hh8 hh8.~ | % terious the elusive...mystical magical serpentine
    hh4. r r8. hh16~ | hh4 hh8 hh hh4 hh8 hh16 hh~ | hh4. hh8 \tuplet 3/2 { hh4 hh hh~ } | hh4 r2 hh8 hh~ | %  being pyromaniacle... refer-
    hh hh hh hh hh hh hh hh~ | \tuplet 3/2 { hh2 hh hh4 hh } | % red to as the... queen of steam you
    \tuplet 3/2 { hh4 hh hh8 hh~ } hh2 | r4. hh8 \tuplet 3/2 { hh4 hh hh8 hh~ } | hh4. r r4 | r1 | % know who I mean... scream
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
    
    Tsss ah. 
    Uh huh uh huh uh huh 
    uh huh uh huh. So a -- ny -- way, um.
    'Bout half -- way through the show just be -- fore my mind was blown, 
    ring -- mist -- ress in cape, tux and top -- hat, twirl -- ing her cane and twist -- ing on her hand -- le -- bar moust -- ache, "\"Our" next
    catch, la -- dies and gen -- tle -- men. The mo -- ment we've all been wait -- ing for. The mys -- ter -- i -- ous, the il -- lus -- ive,
    mys -- ti -- cal, ma -- gi -- cal ser -- pen -- tine being, py -- ro -- man -- i -- a -- cal 
    fiend, the stuff of dreams, ref -- ferred to as the va -- por -- ous queen of steam, you
    know who I mean, I want you to scream.
}

melody = \relative c' {
  \clef treble
  \key c \minor
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 6/8)
  #(ly:expect-warning "cannot end volta") 
	 \eightBlank
	 \eightBlank
	 \eightBlank
	 \eightBlank
   \new Voice = "chorus" {
	 c4 c c bes~ | bes c2. | r1 | r |
	 ees4 ees ees des~ | des ees2. | r1 | r |
	 g4 g g fis~ | fis g2. | r1 | r |
	 bes4 bes bes a~ | a bes2. | r1 | r |
	}
	 \eightBlank
	 \eightBlank
	 \eightBlank
	 \eightBlank
	\new Voice = "chorus_two" {
	 c,4 c c bes~ | bes c2. | r1 | r |
	 ees4 ees ees des~ | des ees2. | r1 | r |
	 g4 g g fis~ | fis g2. | r1 | r |
	 bes4 bes bes a~ | a bes2. | r1 | r |
	 c,4 r ees r | c r2. | c4 r ees r | f r2. |
	 f4 r ges r | c, r2. | c4 r ees r | c r2. | 
	 c4 r ees r | f r2. | f4 r ges r | 
	 c, r2.| r1 | r | r | 
	}
}
 
chorus_text =  \lyricmode {
	Temp -- ra -- ture's ri -- sing.
	Temp -- ra -- ture's ri -- sing.
	Temp -- ra -- ture's ri -- sing.
	Temp -- ra -- ture's ri -- sing.
	Gulf Coast Heat. Gulf Coast Heat.
	Gulf Coast Heat.
	Gulf Coast Heat. Gulf Coast Heat.
	Gulf Coast Heat.
}

tamtamstaff = {
  \override Staff.StaffSymbol.line-positions = #'( 0 )
  \override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
  \set DrumStaff.instrumentName = #"Tamtam"
}  

basic_verse_bass = \chordmode { c:m | c:m | c:m/fis | c:m/fis | } 
basic_chorus_bass = \chordmode { c:m | c:m | c:m/eis | c:m/eis | c:m/fis |c:m/fis | c:m/a |c :m/a | }

harmonies = \chordmode {
	\basic_verse_bass \basic_verse_bass \basic_verse_bass \basic_verse_bass
	\basic_verse_bass \basic_verse_bass \basic_verse_bass \basic_verse_bass
	\basic_chorus_bass \basic_chorus_bass
	\basic_verse_bass \basic_verse_bass \basic_verse_bass \basic_verse_bass
	\basic_verse_bass \basic_verse_bass \basic_verse_bass \basic_verse_bass
	\basic_verse_bass \basic_verse_bass 
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

\new ChordNames {
  \set chordChanges = ##t
  \harmonies
}
\new Staff  {
    	\new Voice = "upper" { \melody }
  	}
  	\new Lyrics \lyricsto "chorus" \chorus_text
  	\new Lyrics \lyricsto "chorus_two" \chorus_text
 >> 
} 


