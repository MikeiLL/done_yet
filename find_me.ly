\version "2.19.82"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Find Me"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 6/8 
  \set Score.voltaSpannerDuration = #(ly:make-moment 6/8)
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			f2( e8 f | d4.) r | e4 f r | % you find me
			r2 r8 g | a4 bes2 |r2 r8 c | % remind me ... good
			c4.( bes4) a8 | a4. a4 f8 | g4 a8 g4 a8 | % bye goodbye ... temporary
			f8( e f4) r | r2. | r2. | r  % spell
		}
		\alternative {
			{ 
				d'8 r4 a4 r8 | g4. f4 r8 | d'4 r8 a4 r8 | g8( a4) r4. | % heart so empty
				d8.( e16 d8) a4. | g4. r8 f8 g | a2. | r2 f'8( e | % aching for your presence oh
				d8) r4 a4 a8 | g4. f | d'8 r e f r g | f( e d) a4. | % anything you wa a a a ant my
				r2 a4( | g8) r4. f4( | e) r4. d8 | e8 r4. f8 f | % heart mind and breath ... my bo-
				g2.~ | g4. a4 a8( | g2) a8( g) | bes a g f4 g8 | % dy my soul already belongs to
			}
			{ 
				d'4 d a8 f | g a a4. r8 | d4 r8 f, g4 | a2. | % your eyes .. night sky
				d8( e d4) a8 f | g r f g g f | g4( a2) | r2 f'8( e | % Blood, sweat and tears .. Oh
				d4) r8 a4. | g f | d'8 r e f r g | f( e d) a4.~ | % You turn the wo- o- o- o- orld a
				a4 r4. a8( | g2) r8 f8 | d r2 c8 | e4 r8 f4 f8( | % around I'm lost without a hope
				g4.) a4 a8( | g2) a8 g | bes a g f f g8 | % hope until by no less than a miracle
			}
		}
	}
}

text =  \lyricmode {
	You find me, re -- mind me good- bye good- 
	bye just a tem -- po -- ra -- ry spell
	Heart so emp -- ty, mind so full.
	A -- ching for your pre -- sence.
	Oh a -- ny -- thing you wa- a- a- a- ant my
	heart, mind and breath my bo -- dy, my soul
	al -- rea -- dy be -- longs to 
	Your eyes are the sun and moon. Hair the night sky.
	Blood, sweat and tears the ri -- vers and seas.
	Oh you turn the wo- o- o- o- orld a -- round.
	I'm lost with -- out a hope un -- til
	by no less than a mi -- ra -- cle
}

harmonies = \chordmode {
	f2. | d:m | d:m |
	g:m | g:m | c:7 | c:7 |
	a:m | g:m | d:m | a:m | d:m | a:m |
	d:m | a:m | d:m | a:m |
	d:m | a:m | d:m | a:m |
	d:m | a:m | d:m | a:m |
	g:m | g:m | g:m | g:m |
	g:m | g:m | c:7 | c:7 |
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
"2. Your eyes are the sun and moon."
"Hair, the night sky."
"Blood, sweat and tears the rivers and seas."
"Oh you turn the wo- o- o- o- orld around"
"I'm lost without a hope until"
"By no less than a miracle"
"You find me..."
" "
"3. Motherless, fatherless spawn of yourself"
"Everlasting loneliness."
"O-o-only place that you fit in is"
"Everywhere I swear I'll be"
"Out here somewhere still lost"
"Singing this prayer,"
"openhearted, hoping"
"You find me..."
" "
  }
}

