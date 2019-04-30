\version "2.18.2"

\header {
  title = "Broken Melody"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

bassline = \relative c {
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
	\repeat volta 2 {
		<< bes8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
		<< des f >> r << des f >> r << bes,4 des >> r | 
		<< aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
		<< aes1 c >> |
		<< bes8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
		<< des f >> r << des f >> r << bes,4 des >> r | 
		<< aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
	}
	\alternative {
		{
			<< aes1 c >> |
			\new Voice = "words" {
				 bes2. c4 | bes2. c4 | aes2 r | r2. aes4 |
				 bes2. c4 | des2. c4 | c2 ees | r1 |
				 bes2. c4 | bes2. c4 | aes2 r2 | r1 |
				 bes4 c2. | des2. ees4 | fes1 | ees |
				 f1 ~ | f | 
			}
		}
		{
			<< aes2. c >> |
			\context Voice = "words" {
				 a4 |
				 bes2. c4 | bes2. c4 | aes2 r | r1 |
				 bes2. c4 | des2. c4 | c2 ees | r2. f,4 |
				 bes2. c4 | bes2. c4 | aes2 r2 | r1 |
				 f4 c2. | des2. ees4 | fes1 | ees |
				 f1 ~ | f | 
			  }
		}
	}
}

			

% \set Score.repeatCommands = #'((volta "2, 5") end-repeat)

text =  \lyricmode {
      \set associatedVoice = "words"
		Hea -- vy as a cloud. I tip -- toe through the kit -- chen.
		Qui -- et as a mouse. Hide be -- hind the work -- bench high.
		She drags her train a -- round. Leaves a trail of long -- ing.
		The bride that can't be wed. Lone -- ly hor -- ney, sad, emp -- ty, in a 
		hole.
}

wordsTwo =  \lyricmode {
	\set associatedVoice = "words"
}

chorus =  \lyricmode {
	\set associatedVoice = "chorus"
		You ask me who I am. Sim -- ply my dear
		we know me as bro -- ken.
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
  	% \new Lyrics \lyricsto "words" \wordsTwo
  	% \new Lyrics \lyricsto "chorus" \chorus
  >>
  
  \layout { }
  \midi { }
}

% Additional Notes
\markup \fill-line {
"Bass line:"
}

\new Voice = "bassline" { \bassline }
