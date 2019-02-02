\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Heaven Better Be All That"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c'' {
  \clef treble
  \key ees \minor
  \time 3/4 
	\new Voice = "chorus" {
		\voiceOne 
		\repeat volta 2 {
			r2. | bes8 bes bes bes bes4~ | bes2. | ces4 aes2 | % Heaven better
			r2. | bes8 bes bes bes bes4~ | bes2. | ces4 aes2 |
			r2. | bes8 bes bes bes bes4~ | bes2. | ces4 aes2 |
			ges4 aes ges4 | r2. | f4 ges8 aes4. | r4 des,8 f4 ees8 | % That's a lot ... a lot to
			ees4 r2 | r4 ees' des | ces2.~ | ces4 f, des | % ask.
			ees4 r2 | r4 ees' des | ces2.~ | ces4 f, des | 
		}		
		
	}
	\new Voice = "verse" {
		\voiceOne 
		r4. bes8 bes bes | bes4 bes r | r bes8 bes4 bes8 | bes bes4 bes bes8 | % Beautiful children
		r4 bes2~ | bes4 bes8 bes \tuplet 3/2 { bes bes bes } | r2 bes8 bes | bes4 bes8 bes4. | % Gorgeous body and a razor sharp
		bes2 bes8 bes~ | bes4 bes r | r2. | r | % Mind a partner
		r4 bes8 bes4 bes8 | bes bes4 bes bes8 | bes4 bes8 bes4 bes8 | bes bes bes4 r | % The sun came up ... time ago
		r8 bes bes4~ \tuplet 3/2 {bes8 bes bes} | bes4. bes8 r4 | bes bes8 bes4 bes8 | bes4 r8 bes4 bes8 | % I fell from the sky ... velvet
		bes4. bes | bes8 bes4. r4 | bes8 bes bes bes4 bes8 | bes bes bes2 | % herb stuffed ... chamomile
		bes2 bes4 | bes bes8 bes4 bes8 | bes4. bes | bes4 bes8 bes bes4 | % rose can barely ... sheer
		bes4 bes8 bes bes bes | bes4 bes8 bes r4 | r bes8 bes4 bes8~ | bes4 bes8 bes4 bes8 | % awe of ... can make
		bes2 bes4 | bes bes8 bes4 bes8~ | bes4 bes8 bes4 bes8~ | bes4. bes8 bes bes | % signs and symbols ... stars even with
		bes4 bes8 bes4 bes8~ | bes4 r bes | bes bes8 bes4 bes8~| bes4 bes8 bes bes bes | % empty accounts of ... even when re-
		bes4. bes4 bes8~ | bes4 r bes | bes8 bes4 bes bes8 | bes4 r bes | % ligeous sorts come ... with
		bes bes bes8 bes~ | bes4 bes bes | bes bes8 bes4 bes8~ | bes4 bes8 bes bes4 | % dark explanations .. thoughts I'm thinkin'
	}
}

harmony = \relative c'' {
  \voiceTwo
	
}

chorus_text =  \lyricmode {
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	More than this? That's a lot. A lot to ask.
}

verse_text =  \lyricmode {
	Beau -- ti -- full child -- ren. A slam -- min lo -- ver with a
	gor -- geous bo -- dy and a... and a ra -- zor sharp
	Mind a part -- ner.
	The sun came up on my good for -- tune a lone time a -- go.
	I fell from the sky and lan -- ded on a plush vel -- vet
	herb stuffed pil -- low. La -- ven -- der, jaz -- mine, cha -- mo -- mile
	rose. Can bare -- ly keep com -- posed some -- times at the sheer
	awe of be -- ing a -- live with this pair of hands that can make
	signs and sym -- bols and reach for the stars e -- ven with
	emp -- ty ac -- counts of va -- ri -- ous sorts even when re --
	li -- geous sorts come call -- ing at the door with
	dark exp -- la -- na -- tions and fore -- bod -- ing thoughts I'm think -- in'
	
}

harmonies = \chordmode {
  	ees2.:m | ees:m | aes:m | aes:m |
  	ees2.:m | ees:m | aes:m | aes:m |
	ees2.:m | ees:m | aes:m | aes:m |
	ees2.:m | ees:m | aes:m | aes:m |
	ees2.:m | ees:m | aes:m | aes:m |
	ees2.:m | ees:m | aes:m | aes:m |
	ees | ees | g:m | g:m |
	bes:m | bes:m | aes | aes |
	ees | ees | g:m | g:m |
	bes:m | bes:m | aes | aes |
	ees | ees | g:m | g:m |
	bes:m | bes:m | aes | aes |
	ees | ees | g:m | g:m |
	bes:m | bes:m | aes | aes |
	ees | ees | g:m | g:m |
	bes:m | bes:m | aes | aes |
	ees | ees | g:m | g:m |
	bes:m | bes:m | aes | aes |
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
    	\new Voice = "lower" { \harmony }
    >>
  	}
  	\new Lyrics \lyricsto "chorus" \chorus_text
  	\new Lyrics \lyricsto "verse" \verse_text
  >>
  
  
  \layout { 
   #(layout-set-staff-size 16)
   }
  \midi { 
  	\tempo 4 = 125
  }
  
}

%Additional Verses
\markup \fill-line {
\column {
""


" "
  }
}

