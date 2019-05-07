\version "2.18.2"

\header {
  title = "Medicine is your Song"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }


melody = \relative g'' {
  \clef treble
  \key g \major
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
	\new Voice = "words" {
		r4 d8 d d4 d8 d~ | d4 d d d | e4. fis g4~ | g2 r | 
	}
}

text =  \lyricmode {
  \set associatedVoice = "words"
	I can hear the move -- ment of your soft, wide lips
	Lang -- uid tongue against those milk- -- white teeth.

	Feel the heav -- ing of your de -- li -- cate breath
	Car -- ry -- ing notes that pe -- net -- rate me.

	Toss and turn too late to read or write, too tired to con -- cen -- trate
	Tor -- men -- ted by the drone of my own think -- ing.

	Bones crawl -- ing out of my skin. I can’t re -- mem -- ber when
	I need -- ed more to hear you sing -- ing.

	Used to think my mind was wings.
	Now I know that it’s a pri -- son.

	Be -- lieved these plans we made would set us free.
	I’m just trapped in my own re -- flec -- tion. 

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

