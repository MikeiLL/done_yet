\version "2.18.2"

\header {
  title = "Broken Melody"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

bassline = \relative c, {
	\clef bass
  	\key bes \minor
  	\time 4/4
  	b4 r2. | r4 \tuplet 3/2 { f8 fis g } aes4 f |
}

melody = \relative c'' {
  \clef treble
  \key bes \minor
  \time 4/4 
  \set Score.voltaSpannerDuration = #(ly:make-moment 24/8)
  <<
	\repeat volta 2 {
		<< bes8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
		<< des f >> r << des f >> r << bes,4 des >> r | 
		<< aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
		<< aes1 c >> |
		<< bes8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
		<< des f >> r << des f >> r << bes,4 des >> r | 
		<< aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
		<< aes1 c >> |
	  \new Voice = "words" {
			 bes2. c4 | bes2. c4 | aes2 r2 | r2. aes4 |
			 bes2. c4 | des2. c4 | c2 ees | r1 |
			 bes2. c4 | bes2. c4 | aes2 r2 | r1 |
			 bes2 r4 c | des2. ees4 | fes1 | ees |
			 f1 ~ | f | r | r
		  }
			aes8 aes aes4 g8 g g4 | aes g f r | aes8 aes aes4 aes bes | c r c4. c8  |
			c1~ | c4 r c4. c8 | c1~ | c4 r c4 des | 
			\tuplet 3/4 { ees4 des c } | des1 | ees4. ees8 ees ees4 ees8~ | ees2 f4. f8 | 
			f4. f8~ f2~ | f4 r f4. f8 | f1~ | f4 r f ges | 
			aes ges f ges~ | ges1 | f2 f4 f~ | f f2 f4~ | 
			f1~ |f | r | r |
	  }
  >>
}


text =  \lyricmode {
      \set associatedVoice = "words"
	  \set stanza = #"1. "
		
}

wordsTwo =  \lyricmode {
	\set associatedVoice = "words"
	\set stanza = #"2. " 
	Hea -- vy as a cloud. I tip -- toe through the kit -- chen.
	Qui -- et as a mouse. Lone -- ly hor -- ney, sad, emp -- ty, in a 
	hole.
}

harmonies = \chordmode {
	bes:min
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
  	\new Lyrics \lyricsto "words" \wordsTwo
  >>
  
  \layout { }
  \midi { }
}

% Additional Notes
\markup \fill-line {
"Bass line:"
}

\new Voice = "bassline" { \bassline }
