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
  	bes4 r2. | r4 \tuplet 3/2 { f8 fis g } aes4 f |
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
		<< aes2 c >> r |
		<< bes8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
		<< des f >> r << des f >> r << bes,4 des >> r | 
		<< aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
	}
	\alternative {
		{
			<< aes2 c >> r |
			\new Voice = "words" {
				 bes2. c4 | bes2. c4 | aes2 r | r2. aes4 |
				 bes2. c4 | des2. c4 | c2 ees | r1 |
				 bes2. c4 | bes2. c4 | aes2 r2 | r1 |
				 bes2. c4 | des2. ees4 | e1 | ees |
				 f1 ~ | f | 
			}
		}
		{
			<< aes,2. c >> 
			\new Voice = "verseTwo" {
				 aes4 |
				 bes2. c4 | bes2. c4 | aes2 r | r1 | % drags her train around
				 bes2. c4 | des2. c4 | c2 ees | r2. f,4 |
				 bes2. c4 | bes2. c4 | aes2 r2 | r1 |
				 f'4 c2. | f4 des2. | e1 | ges4 ges2 ges8 f |
				 f1~ | f | 
			  }
			  << bes,8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
			  << des f >> r << des f >> r << bes,4 des >> r | 
			  << aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
			  << aes2 c >> r |
			  << bes8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
			  << des f >> r << des f >> r << bes,4 des >> r | 
			  << aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
			  << aes2 c >> r4
			
			  \new Voice = "chorus" {
				 a4 | % You 
				 bes2. c4 | des2. ees4 | c2 r | f4 c8 bes aes4. aes8 |  % ask me who I am. ... dear we
				 bes2. c4 | bes2. c4 | f,4 r2. | r1 |
			}
			des'8 f ees des c4 bes8 r | bes8 des c bes aes4 ges8 r | f4 des'8 ges,4 des'8 g,4~ | g1 |
			g4 f'8 aes,4 f'8 a,4~ | a2. 
			\new Voice = "verseThree" {
				 a4 |
				 bes2. c4 | bes2. c4 | aes2 r | r2. aes4 |
				 bes2. c4 | des2. c4 | c2 ees | r2. f,4 |
				 bes2. c4 | bes2. c4 | aes2 r2 | r1 |
				 bes2. c4 | des2. ees4 | e1 | ges4 ges2 f4 |
				 f1 ~ | f | 
			  }
			<< bes,8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
			  << des f >> r << des f >> r << bes,4 des >> r | 
			  << aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
			  << aes2 c >> r |
			  << bes8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
			  << des f >> r << des f >> r << bes,4 des >> r | 
			  << aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
			  << aes2 c >> r4.
			\new Voice = "verseFour" {
					 bes8 |
					 bes bes bes bes bes bes r bes | bes r bes bes4 r bes8 | % live in a 
					 bes bes bes bes4 bes8 r bes | bes bes bes bes4 r bes8 | % love is
					 bes bes bes bes bes r4 bes8 | bes bes bes bes4. r8 bes | % house is 
					 bes bes bes bes bes r4 bes8 | bes bes bes bes4 r4. | % past
					 bes8 bes bes bes bes r8 bes bes | bes bes bes bes4. r8 bes |  % guilt
					 bes bes bes bes bes r4 bes8 | bes bes bes bes16 bes bes8 r4 bes8 | % age is 
					 bes8 bes bes bes bes bes r bes | bes bes bes bes4 r bes8 | % life is a melody
					 bes8 bes bes bes bes bes r bes | bes bes bes bes4 r4. % life is a melody
			  }
			  
			<< bes8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
			  << des f >> r << des f >> r << bes,4 des >> r | 
			  << aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
			  << aes2 c >> r |
			  << bes8 des >> << c ees >> << des f >> << c ees >> << bes8 des >> r << bes8 des >> << c ees >>  |
			  << des f >> r << des f >> r << bes,4 des >> r | 
			  << aes8 c >> << bes des >> << c ees >> << bes des >> << aes4 c >> r8 << bes des >> |
			  << aes2 c >> r4
			\new Voice = "chorusTwo" {
				 a4 | % You 
				 bes2. c4 | des2. ees4 | c2 r | f4 c8 bes aes4. aes8 |  % ask me who I am. ... dear we
				 bes2. c4 | bes2. c4 | f,4 r2. | r1 |
			}
			des'8 f ees des c4 bes8 r | bes8 des c bes aes4 ges8 r | f4 des'8 ges,4 des'8 g,4~ | g1 |
			g4 f'8 aes,4 f'8 a,4~ | a1 | a4 aes'8 bes,4 aes'8 c,4~ | c1 |
			c4 c'8 des,4 c'8 ees,4~ | ees1 |
		}
	}
}

			

% \set Score.repeatCommands = #'((volta "2, 5") end-repeat)

text =  \lyricmode {
  \set associatedVoice = "words"
	Hea -- vy as a cloud. I tip -- toe through the kit -- chen.
	Qui -- et as a mouse. Hide be -- hind the work -- bench high.
}

wordsTwo =  \lyricmode {
	\set associatedVoice = "verseTwo"
	She drags her train a -- round. Leaves a trail of long -- ing.
	The bride that can't be wed. Lone -- ly hor -- ney, sad, emp -- ty, in a 
	hole.
}

chorus =  \lyricmode {
	\set associatedVoice = "chorus"
		You ask me who I am. Sim -- ply my dear
		we know me as bro -- ken.
}

wordsThree =  \lyricmode {
	\set associatedVoice = "verseThree"
	The walls are clo -- sing in. A box of me -- di -- ca -- tion.
	The ta -- ble by the bed.
	Piles of cloth -- ing warn, un -- warn, un -- 
	known.
}

wordsFour =  \lyricmode {
	\set associatedVoice = "verseFour"
	I live in a puz -- zle box that can't be solved. 
	My love is a mons -- ter. My soul is a beast.
	The house is a pri -- son. The peo -- ple are bars.
	My past is a ri -- ver. A ri -- ver of sin.
	Guilt is a bish -- op who will ne -- ver ab -- solve.
	My age is a sen -- tence. Dis -- ease is a pen -- i -- tence.
	My life is a me -- lo -- dy that does -- n't re -- solve.
	My life is a me -- lo -- dy that does -- n't re -- solve.
}


harmonies = \chordmode {
	bes1:min | bes:min | f:min | f:min |
	bes:min | bes:min | f:min | f:min |
	bes:min | bes:min | f:min | f:min |
	bes:min | bes:min | f:min/ees | f:min/ees |
	bes:min | bes:min | d:m7.5- | d:m7.5- |
	bes:min | ges:6 | c:7 | ges:6 | 
	bes:min | bes:min |
	f:min | % second ending start
	bes:min | bes:min | f:min | f:min |
	bes:min | bes:min | f:min/ees | f:min/ees |
	bes:min | bes:min | d:m7.5- | d:m7.5- |
	bes:min | ges:6 | c:7 | ges:6 | 
	bes:min | bes:min |
	
	bes1:min | bes:min | f:min | f:min |
	bes:min | bes:min | f:min | f:min |
	
	bes:min | ges:maj7 | f:min | f:min | % Ask me who I am
	bes:min | ges:maj7 | f:min | f:min |
		
	bes:min | bes:min | bes1:min | bes:min |
	bes1:min | bes:min |
	
	bes:min | bes:min | f:min | f:min | % Table by the bed
	bes:min | bes:min | f:min/ees | f:min/ees |
	bes:min | bes:min | d:m7.5- | d:m7.5- |
	bes:min | ges:6 | c:7 | ges:6 | 
	bes:min | bes:min |
	
	bes:min | bes:min | f:min | f:min |
	bes:min | bes:min | f:min | f:min |
	
	bes:min | ges:maj7 | f:min | f:min | % I live in a puzzle box
	bes:min | ges:maj7 | f:min | f:min |
	bes:min | ges:maj7 | f:min | f:min |
	bes:min | ges:maj7 | f:min | f:min |
	
	bes:min | bes:min | f:min | f:min |
	bes:min | bes:min | f:min | f:min |
	
	bes:min | ges:maj7 | f:min | f:min | % Ask me who I am
	bes:min | ges:maj7 | f:min | f:min |
		
	bes:min | bes:min | bes1:min | bes:min |
	bes1:min | bes:min |
	bes:min | bes:min | bes1:min | bes:min |
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
  	\new Lyrics \lyricsto "verseTwo" \wordsTwo
  	\new Lyrics \lyricsto "chorus" \chorus
  	\new Lyrics \lyricsto "verseThree" \wordsThree
  	\new Lyrics \lyricsto "verseFour" \wordsFour
  	\new Lyrics \lyricsto "chorusTwo" \chorus
  >>
  
  \layout { }
  \midi { }
}

% Additional Notes
\markup \fill-line {
"Bass theme:"
}

\new Voice = "bassline" { \bassline }
