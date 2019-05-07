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
	
		r4 d8 d d4 d8 d~ | d4 d d d | e4. fis g4~ | g2 r | 
		r e4 fis | g g8 fis4. e4 | e4. d d4~ | d r2. |
		r2 d4 d8 d~ | d4 d d d | e4 e8 fis4. g4~ | g2 r | 
		r e8 e fis4 | g g fis e8 e~ | e4 d2. | r1 |
		
		r2 d4 d8 d~ | d4 d8 d4. d8 e~ | e4 r2. | r1 |
		r2 e4 fis | g4 g8 fis4. e8 e~ | e4 d r2 | r1 |
		r2. d8 d~ | d4 d d d | e4. e8 e fis4 g8~ | g2 r |
		r1 | r4 e4 e g | e8 d4. r2 | r1 |
		
		r2 e4 fis | g g8 g fis4 e8 e~ | e d4. r2 | r1 | % I'm just trapped
		
		g4 d8 g4. d8 g~ | g4 a8 b4. d8 d~ | d4 c8 c4. b8 c~ | c b4 a4. g4 | % toss and turn
		d'8 c4 c4. b8 a~ | a4 g8 a4. g4 | a8 b4. r2 | r1 |
		d4 d8 d d d d4 | d r2. | r4 e8 e4. fis8 fis~ | fis4 g8 g4 r4. | % bones crawling
		r4 a8 a4. b8 c~ | c4 c8 c4. c4 | b8 g4. r2 | r1 | % i needed more to hear
	}
}

text =  \lyricmode {
  \set associatedVoice = "words"
  
	I can hear the move -- ment of your soft, wide lips
	Lang -- uid tongue a -- gainst those milk- -- white teeth.

	Und -- u -- la -- tion of your de -- li -- cate breath
	Car -- ry -- ing tones that pe -- net -- rate me.
	
	Used to think my mind was wings.
	Now I know that it’s a pri -- son.

	Be -- lieved these plans we made would set us free.
	So far they hav -- en't. 
	
	I'm just trapped in my own re -- flec -- tion.

	Toss and turn too late to read or write, too tired to con -- cen -- trate
	Tor -- men -- ted by the drone of my own think -- ing.

	Bones crawl -- ing out of my skin. I can’t re -- mem -- ber when
	I need -- ed more to hear you sing -- ing.

	Un -- der -- neath in -- som -- ni -- a a blan -- ket made of pure dis -- trac -- tion
	Flash -- ing lights mis -- took for in -- spi -- ra -- tion.

	Your voice is an ar -- row car -- ried by a whis -- per -- ing wind
	Des -- troy -- ing all but this ve -- ry mo -- ment.

	Me -- di -- cine is your song. Lul -- la -- by take me'a- long.

	Tell me that I’m won -- der -- ful, mar -- ve -- lous be -- yond com -- pare
	That you see how hard I’m try -- ing.

	Sing of gob -- lets o -- ver -- full, ro -- yal -- ty that’s just and fair
	I’ll for -- give you if you’re ly -- ing.

	Drif -- ting off as if with -- in my mo -- thers arms a -- gainst her breast, know -- ing
	All is well, there’s no -- thing left to bo -- ther with.

	What would I do without you? No i -- dea.
	No i -- dea at all.

}




harmonies = \chordmode {
	
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

