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
  \set Score.voltaSpannerDuration = #(ly:make-moment 6/8)
  #(ly:expect-warning "cannot end volta") 
  \repeat volta 2 {
	\new Voice = "chorus" {
		\voiceOne 
		
			r2. | bes8 bes bes bes bes4~ | bes2. | ces4 aes2 | % Heaven better
			r2. | bes8 bes bes bes bes4~ | bes2. | ces4 aes2 |
			r2. | bes8 bes bes bes bes4~ | bes2. | ces4 aes2 |
			ges4 aes ges4 | r2. | f4 ges8 aes4. | r4 des,8 f4 ees8 | % That's a lot ... a lot to
			ees4 r2 |
		}
		r4 ees' des | ces2.~ | ces4 f, ces | % ask.
		ees4 r2 | r4 ees' des | ces2.~ | ces4 f, ces | 
	
	}
	\alternative {
		\key ees \major
		\new Voice = "verse" {
				r4. g'8 g f | g4 bes2 | r4 g8 g4 f8 | g aes4 bes c8 | % Beautiful children ... with a
				r4 des2~ | des4 c8 c4 bes8~ | bes4 r bes8 g | bes4 g8 bes4. | % Gorgeous body and a razor sharp
				g2 g8 g~ | g4 ees r | r2. | r | % Mind a partner
				r4 f8 f4 g8 | g aes4 aes bes8 | c4 d8 d4 c8 | c bes bes4 r | % The sun came up ... time ago
				r8 bes bes4~ \tuplet 3/2 {bes8 aes g} | g4. g8 r4 | g d8 ees4 f8 | g4 r8 aes4 bes8 | % I fell from the sky ... velvet
				aes4. g | f8 f4. r4 | e8 e e g4 g8 | bes bes g2 | % herb stuffed ... chamomile
				f2 g4 | aes bes8 aes4 g8 | f4. f | f4 f8 a c4 | % rose can barely ... sheer
				bes4 bes8 bes bes bes | bes4 bes8 bes r4 | r d8 bes4 f'8~ | f4 d8 bes4 aes8 | % awe of ... can make
				g2 g4 | g ees8 g4 g8~ | g4 g8 g4 bes8~ | bes4. bes8 bes bes | % signs and symbols ... stars even with
				c4 c8 des4 c8~ | c4 r bes | bes bes8 bes4 bes8~| bes4 bes8 bes aes g | % empty accounts of ... even when re-
				bes4. bes4 bes8~ | bes4 r bes | bes8 bes4 bes bes8 | bes4 r bes | % ligeous sorts come ... with
				bes bes bes8 bes~ | bes4 bes bes | bes bes8 bes4 bes8~ | bes4 bes8 bes bes4 | % dark explanations .. thoughts I'm thinkin'
			}
		\context Voice = "verse" {
				r4 bes4 bes8 bes~ | bes bes bes bes4 bes8~ | bes4. bes4 bes8~ | bes4 r bes | % Wrote a letter ... but
				bes2 bes4 | bes2 bes4 | bes2 bes4 | r2. | % on my way I lost it
				bes2 bes4 | bes2 bes4 | bes4 bes8 bes4 bes8~ | bes2 bes4 | % Walk my god down memory lane to
				bes2 bes4 | bes2 bes4 | bes4. bes8 r4 | % see if she can smell it
			}
		}
	}


chorus_text =  \lyricmode {
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	More than this? That's a lot. A lot to ask.
}

verse_text =  \lyricmode {
	Beau -- ti -- full child -- ren. A slam -- min lo -- ver with a
	gor -- geous bo -- dy and a ra -- zor sharp
	Mind a part -- ner.
	The sun came up on my good for -- tune a lone time a -- go.
	I fell from the sky and lan -- ded on a plush vel -- vet
	herb stuffed pil -- low. La -- ven -- der, jaz -- mine, cha -- mo -- mile
	rose. Can bare -- ly keep com -- posed some -- times at the sheer
	awe of be -- ing a -- live with this pair of hands that can make
	signs and sym -- bols and reach for the clouds e -- ven with
	emp -- ty ac -- counts of va -- ri -- ous sorts e -- ven when re --
	li -- geous sorts come call -- ing at the door with
	dark exp -- la -- na -- tions and fore -- bod -- ing thoughts I'm think -- in'
	Wrote a let -- ter to my fu -- ture self but
	on my way I lost it.
	Walk my God down me -- mo -- ry lane to
	see if she can smell it.
}

harmonies = \chordmode {
  	ees2.:m | ees:m | aes:m | aes:m |
  	ees2.:m | ees:m | aes:m | aes:m |
	ees2.:m | ees:m | aes:m | aes:m |
	ees2.:m | ees:m | aes:m | aes:m |
	ees2.:m | ees:m | aes:m | aes:m |
	ees2.:m | ees:m | aes:m | aes:m |
	ees | ees | g:m | g:m |
	bes:m | bes:m | c:7/g | c:7/g |
	aes | aes | f:7 | f:7 |
	bes:sus4 | bes:sus4 | bes:7 | bes:7 |
	ees | ees | g:m | g:m |
	bes:m | bes:m | c:7/g | c:7/g |
	aes | aes | f:7 | f:7 |
	bes:sus4 | bes:sus4 | bes:7 | bes:7 |
	ees | ees | g:m | g:m |
	bes:m | bes:m | c:7/g | c:7/g |
	aes | aes | f:7 | f:7 |
	bes:sus4 | bes:sus4 | bes:7 | bes:7 |
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

