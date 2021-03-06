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
   \repeat volta 3 {
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
   \new Voice = "verse" {
   \key ees \major
    	r4 ees4 ees8 ees~ | ees4 f8 g g g8~ | g4. bes4 bes8~ | bes4 r c | % Wrote a letter ... but
		des2 c4 | bes2 aes4 | bes2 g4 | r2. | % on my way I lost it
		g2 g4 | g2 f4 | f4 f8 ees4 ees8~ | ees2 f4 | % Walk my god down memory lane to
		g2 g4 | g2 aes4 | g4. f4.~ | f2 r4 | % see if she can smell it
		r4 ees4 ees8 ees~ | ees4 f8 g g g8~ | g4. bes4 bes8~ | bes4 r c | % Sent a letter ... and
		des2 c4 | bes2 aes4 | bes2 g4 | r2. | % hope that they'll believe it
		g2 g4 | g2 f4 | f2 ees4~ | ees2 f4 | % Hope that they can read it or
		g2 g4 | g2 aes4 | g4. f4.~ | f2 r4 |  % have someone to read it
		
   }
   \context Voice = "verse" {
     	r4. g8 g f | g4 bes2 | r4 g8 g4 f8 | g aes4 bes c8 | % Beautiful children ... with a
		r4 des2~ | des4 c8 c4 bes8~ | bes4 r bes8 g | bes4 g8 bes4. | % Gorgeous body and a razor sharp
		g2 g8 g~ | g4 ees r | r2. | r | % Mind a partner
		r4 f8 f4 g8 | g aes4 aes bes8 | c4 d8 d4 c8 | c bes bes4 r | % The sun came up ... time ago
		r8 bes bes4~ \tuplet 3/2 {bes8 aes g} | g4. g8 r4 | g d8 ees4 f8 | g4 r8 aes4 bes8 | % I fell from the sky ... velvet
		aes4. g | f8 f4. r4 | e8 e e g4 g8 | bes bes g2 | % herb stuffed ... chamomile
		f2 g4 | aes bes8 aes4 g8 | f4. f | f4 f8 aes c4 | % rose can barely ... sheer
		bes4 bes8 bes bes bes | bes4 bes8 bes r4 | r d8 bes4 f'8~ | f4 d8 bes4 aes8 | % awe of ... think -- in'
   		}
   \context Voice = "verse" {
     	r4 g f | f ees2 | d4 g8 g4 aes8 | aes4 bes8 bes4 c8 | % Yea, I'm damaged ... dramatic
     	des4 c8 c4 bes8 | bes4 aes8 aes4 g8 | bes4 aes8 aes4 g8 | g4 f8 e4. | % harder than a diamond ring ... suffering
     	r4 g8 g4 f8 | f4 ees8 ees4. | r4 d8 d4 ees8 | ees4 f8 f4. | % intense ... expense
     	g4 g8 g aes4 | g4 f f8 f~ | f4 g8 g4 aes8 | aes4 bes8 bes bes8 aes8 |
		g2 g4 | g ees8 g4 g8~ | g4 g8 g4 bes8~ | bes4. bes8 bes bes | % signs and symbols ... stars even with
		c4 c8 des4 c8~ | c4 r bes | bes bes8 bes4 bes8~| bes4 bes8 bes aes g | % empty accounts of ... even when re-
		g4. ees4 ees8~ | ees4 r g | bes8 bes4 bes bes8 | bes4 r c | % ligeous sorts come ... with
		ees4. ees8 ees ees~ | ees4( d8) c4 bes8 | c d8 c4 bes~ | bes4 bes8 bes bes4 | % dark explanations .. thoughts I'm thinkin'
		\set Score.repeatCommands = #'(end-repeat)
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

	Wrote a let -- ter to my fu -- ture self but
	on my way I lost it.
	Walk my God down me -- mo -- ry lane to
	see if she can find it.
	Sent a let -- ter to my in -- ner child and
	hope that they'll be -- lieve it.
	Hope that they can read it or
	have some -- one to read it.
	
	Beau -- ti -- full child -- ren. A slam -- min lo -- ver with a
	gor -- geous bo -- dy and a ra -- zor sharp
	Mind a part -- ner.
	The sun came up on my good for -- tune a lone time a -- go.
	I fell from the sky and lan -- ded on a plush vel -- vet
	herb stuffed pil -- low. La -- ven -- der, jaz -- mine, cha -- mo -- mile
	rose. Can bare -- ly keep com -- posed some -- times at the sheer
	awe of be -- ing a -- live with this pair of hands I'm reach -- in'
	
	Yea, I'm da -- maged. Post trau -- ma -- tic stress dra -- ma -- tic.
	Hard -- er than a dia -- mond ring. I feed my soul on suf -- fer -- ing.
	In -- tense, in -- tense, in -- tense. It's just a small ex -- pense.
	Ma -- gi -- cal -- ly use -- full, ma -- ges -- ti -- cal -- ly danc -- a -- ble I make
	signs and sym -- bols and reach for the clouds. E -- ven with
	emp -- ty ac -- counts of va -- ri -- ous sorts; e -- ven when re --
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
	bes:m | bes:m | c:7/g | c:7/g |
	aes | aes | f:m7 | f:m7 |
	bes:sus4 | bes:sus4 | bes:7 | bes:7 |
	ees | ees | g:m | g:m |
	bes:m | bes:m | c:7/g | c:7/g |
	aes | aes | f:m7 | f:m7 |
	bes:sus4 | bes:sus4 | bes:7 | bes:7 |
	
	ees | ees | g:m | g:m |
	bes:m | bes:m | c:7/g | c:7/g |
	aes | aes | f:m7 | f:m7 |
	bes:sus4 | bes:sus4 | bes:7 | bes:7 |
	ees | ees | g:m | g:m |
	bes:m | bes:m | c:7/g | c:7/g |
	aes | aes | f:m7 | f:m7 |
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

