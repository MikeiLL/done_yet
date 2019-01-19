\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "One More Time"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c'' {
  \clef treble
  \key e \minor
  \time 6/8 
	\new Voice = "words" {
		\voiceOne 
		\repeat volta 2 {
			b4. e, | g4 b g | a2 g4 | a b g |
			f4. e~ | e2. | r4. e'4. | d8 e d c d b |
			c2. | c4 c c | c b4. r8 | e,4 g b |
			a2. | g4 a f | f4. e~ | \time 4/4 e2 e'8 e e e |
			e4 r2. | r2 b8 b b b | b4 e2. | r2 b8 b b b |
			b4 e2. | r2 b8 c dis e | \time 6/8 g8 r4 fis4. |
			e8 r4 r4. | r2. | r2. | r2. |
		}
	}
}

harmony = \relative c'' {
  \voiceTwo
	g4. g | e4 g e | fis2 b4 | c d b |
	a4. g~ | g2. | r4. g | b8 b b a b g |
	g2. | fis4 fis fis | fis g4. r8 | g4 e g |
	c2. | d4 b a | a4. g~ | \time 4/4 g2 r |
}

text =  \lyricmode {
	If you beg me to stay I might be per --
	sua -- ded. I've done it be- done it be --
	fore times when you ha -- ted. Now it's your
	turn. Roll o -- ver play dead. Give it to me
	One. Give it to me one time.
	Give it to me one time.
	Give it to me one more time.
}

harmonies = \chordmode {
  	e2.:m | a:m | a:m | a:m |
  	e:m | e:m | e:m | e:m |
  	a:m | a:m | e:m | e:m |
  	f:7 | f:7 | e:m | \time 4/4 e1:m |
  	e:m | e:m | e:m | e:m | 
  	e:m | e:m | \time 6/8 e4.:m b:7|  
  	e2.:m | e:m | e:m | e:m | 
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
"2. Lately what can I say? You're clearly frustrated."
"I'm running with ghosts of the past. It's complicated."
"Come to my feet. Hear me relate it."
" "
"3. Armstrong baggages last, as I've demonstrated."
"I've had a few lovers before might have related."
"Just so you know, I'm overrated."
" "
"4. Hold me close to your heart. Betrayal has faded."
"We made up and shared a few tears and fornicated."
"But you may find my heart is shaded."
" "
"5. Black holes burst into stars the moment our gaze met."
"My heart up inside of my throat, eyes dilated."
"You lead me in. Somehow we made it."
" "
  }
}

