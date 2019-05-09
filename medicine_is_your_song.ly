\version "2.18.2"

\header {
  title = "Medicine is your Song"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }


melody = \relative c' {
  \clef treble
  \key g \major
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
	\new Voice = "words" {
	
		r2 d4 d8 d~ | d4 d8 d4. d8 e~ | e4 r2. | r1 | % Used to think my mind
		r2 e4 fis | g4 g8 fis4. e8 e~ | e4 d r2 | r1 | % Now I know
		r2. d8 d~ | d4 d d d | e4. e8 e fis4 g8~ | g2 r | % Believed these plans
		r1 | r4 e4 e g | e8 d4. r2 | r1 | % So far they haven't
		
		r2 e4 fis | g g8 g fis4 e8 e~ | e d4. r2 | r2. d'8 d | % I'm just trapped... When I 
		
		d4 d d b8 d~ | d4 b8 d4. r8 d | e4 e8 e4. e8 e~ | e e e4 r2 | % feel like
		d8 b d2.( | b2) r | c4. fis d4~ | d r2 d8 d | % Medicine is your song
		d4 d d d | d4 b8 d4. r8 d | e4 e8 e4. e4 | e e8 e4. r4 | % the cliff
		d8 b d2.( | b2) r | c4. fis d4~ | d r2.| % Medicine is your song
		
		r4 d,8 d d4 d8 d~ | d4 d d d | e4. fis g4~ | g2 r | % I can hear the
		r e4 fis | g g8 fis4. e4 | e4. d d4~ | d r2. | % Languid tongue
		r2 d4 d8 d~ | d4 d d d | e4 e8 fis4. g4~ | g2 r | % Undulation of your 
		r e8 e fis4 | g g fis e8 e~ | e4 d2. | r1 | % carrying notes that
		
		g4 d8 g4. d8 g~ | g4 a8 b4. d8 d~ | d4 c8 c4. b8 c~ | c b4 a4. g4 | % toss and turn... tor-
		d'8 c4 c4. b8 a~ | a4 g8 a4. g4 | a8 b4. r2 | r1 | % mented by the drone
		d,4 d8 d d d d4 | d r2. | r4 e8 e4. fis8 fis~ | fis4 g8 g4 r4. | % bones crawling
		r4 a8 a4. b8 c~ | c4 c8 c4. c4 | b8 g4. r2 | r1 | % i needed more to hear
		
		d'8 b d2.( | b2) r | c4. fis d4~ | d r2.| % Medicine is your song
		d8 b d2.( | b2) r | c4. fis d4~ | d( c8 b4) r4. | % Medicine is your song
		
		d,4 d d8 d d4 | d d8 d d4 d | e4. fis g4~ | g1 | % Your voice is an arrow
		r4. e8 e4 fis8 g~ | g g g4 fis8 e4 e8~ | e4 d r2 | r1 | % destroying all
		d4 d8 d d4 d8 d~ | d4 d r2 | e4. fis g4~ | g1 | % No idea
		r4. g a4 | b4. c d4~ | d1~ | d2 r4 d8 d| % No idea at all... When I 
				
		d4 d d b8 d~ | d4 b8 d4. r8 d | e4 e8 e4. e8 e~ | e e e4 r2 | % feel like
		d8 b d2.( | b2) r | c4. fis d4~ | d r2 d8 d | % Medicine is your song
		d4 d d d | d4 b8 d4. r8 d | e4 e8 e4. e4 | e e8 e4. r4 | % the cliff
		d8 b d2.( | b2) r | c4. fis g4~ | g1 | % Medicine is your song
	}
}

text =  \lyricmode {
  \set associatedVoice = "words"
	
	Used to think my mind was wings.
	Now I know that it’s a pri -- son.
	Be -- lieved these plans we made would set us free.
	So far they hav -- en't. 
	
	I'm just trapped in my own re -- flec -- tion.
	
	When I feel like I could hope to die.
	My friends and I'd be bet -- ter off.
	
	Me -- di -- cine is your song.
	
	On the bro -- ken bum -- py road a -- long
	the cliff I feel like dri -- ving off.
	
	Me -- di -- cine is your song.
	
	I can hear the move -- ment of your soft, wide lips
	Lang -- uid tongue a -- gainst those milk- -- white teeth.
	Un -- du -- la -- tion of your de -- li -- cate breath
	car -- ry -- ing tones that pe -- net -- rate me.

	Toss and turn too late to read or write, too tired to con -- cen -- trate,
	tor -- men -- ted by the drone of my own think -- ing.
	Bones crawl -- in' out of my skin. I can’t re -- mem -- ber when
	I need -- ed more to hear you sing -- ing.
	
	Me -- di -- cine is your song.
	Me -- di -- cine is your song.
	
	Your voice is an ar -- row car -- ried by a whis -- pering wind
	Des -- troy -- ing all but this ve -- ry mo -- ment.
	What would I do with -- out you? No i -- dea.
	No i -- dea at all.
	
	When I feel like I could hope to die.
	My friends and I'd be bet -- ter off.
	
	Me -- di -- cine is your song.
	
	On the bro -- ken bum -- py road a -- long
	the cliff I feel like dri -- ving off.
	
	Me -- di -- cine is your song.
	
	% Unused lyrics

	Un -- der -- neath in -- som -- ni -- a a blan -- ket made of pure dis -- trac -- tion
	Flash -- ing lights mis -- took for in -- spi -- ra -- tion.

	Tell me that I’m won -- der -- ful, mar -- ve -- lous be -- yond com -- pare
	That you see how hard I’m try -- ing.

	Sing of gob -- lets o -- ver -- full, ro -- yal -- ty that’s just and fair
	I’ll for -- give you if you’re ly -- ing.

	Drif -- ting off as if with -- in my mo -- thers arms a -- gainst her breast, know -- ing
	All is well, there’s no -- thing left to bo -- ther with.
}




harmonies = \chordmode {
	g1 | g | g:maj6 | g:maj6 |
	c:/g | c:/g | g | g |
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | g | g |
	c:/g | c:/g | g | g |
	
	%chorus
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | c:/g | g |
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | c:/g | g |
	
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | g | g |
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | g | g |
	
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | g | g |
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | g | g |
	
	% partial chorus
	c:/g | c:/g | c:/g | g |
	c:/g | c:/g | c:/g | g |
	
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | g | g |
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | g | g |
	
	%chorus
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | c:/g | g |
	g | g | g:maj6 | g:maj6 |
	c:/g | c:/g | c:/g | g |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff  {
    <<
    	\new Voice = "upper" { \melody }
    >>
  	}
  	\new Lyrics \lyricsto "words" \text
  >>
  
  \layout { }
  \midi { }
}

% Additional Notes
\markup \fill-line {
" "
}

