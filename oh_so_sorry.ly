\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Oh So Sorry"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c'' {
  \clef treble
  \key b \major
  \time 4/4 
	\new Voice = "words" {
		\voiceOne 
		\partial 4 dis8 e % Have you
		\repeat volta 2 {
			fis fis fis4 fis8 gis dis fis~ | fis4 r2 b,8 cis |% ever had one of those days Where you 
			dis4 dis8 dis dis e4 dis8~ | dis4 r2 r8 b8 | % see what a great big waste you've 
			b b b b4 r4. | cis4. b gis4 | % made of your life Whole whole sad 
			gis8 fis8~ fis2.~ | fis4 r2 cis'8 dis | % story. And you
			e4 e8 cis e fis4 e8~ | e4 r2 cis8 dis | % see it so plain as day. Like the
			e4 e8 cis e fis4 e8~ | e4 r2 cis8 e | % nose on the mirrors face. And you're
			dis4 r2. | cis4 r cis r | cis8 b4.~ b2 | r2. dis8 e | % Oh oh so sorry
		}
	}
}

text =  \lyricmode {
	Have you e -- ver had one of those days
	Where you see what a great big waste
	You've made of your life
	Whole whole sad sto -- ry. And you
	see it so plain as day. Like the
	nose on the mir -- rors face. And you're
	Oh oh so sor -- ry.
	
	Well there's
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
"2. Well there's nothin to be done"
"'bout the days and the years long gone."
"But old mother time may still give us tomorrow."
"And I'm far from the only one"
"One the dark and the lonely run"
"Who's been oh oh so sorry."
" "
"3. Have you ever been a worm?"
"Have you ever been a germ,"
"Boring through the eyes of an old dead body?"
"Have you ever been discussed"
"As an object of disgust?"
"Then you know, oh so sorry."
" "
"4. If you've ever seen yourself"
"In the eyes of someone you hurt"
"Buttressing your fortresses of glory,"
"Then I hope you found the strength,"
"And you went to every length to let them"
"Know, oh so sorry."
" "

"Made a mistake and we're oh so"
"Another mistake and we're oh so"
"Is it too late, cause we're oh so"
"Sorry. Whoops!"
  }
}

