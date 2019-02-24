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
  <<
	\new Voice = "words" {
		\voiceOne 
			b4. e, | g4 b g | a2 g4 | a b g |
			f4. e~ | e2. | r4. e'4. | d8 e d c d b |
			c2. | c4 c c | c b4. r8 | e,4 g b |
			a2. | g4 a f | f4. e~ | \time 4/4 e2 e'8 e e e |
			e4 r2. | r2 b8 b b b | b4 e2. | r2 b8 b b b |
			b4 e2. | r2 b8 c dis e | \time 6/8 g8 r4 fis4. |
			e8 r4 r4. | r2. | r2. | r2. |
	}
	
	\new NullVoice = "hidden" {
		\voiceTwo 
		\hideNotes {
			b4. e, | g4 b g | a2 g4 | a b g | % black holes ... moment our
			f4. e~ | e2. | r4. e'4. | d8 e d c d b | % gaze met .... inside of my
			c2. | c4 c2 | c4 b4. r8 | e,4 g b | % throat ... eyes dilated. You lead me
			a2. | g4 a f | f4. e~ | \time 4/4 e2 e'8 e e e | % in somehow we ... give it to me.
			
			e4 r2. | r2 b8 b b b | b4 e2. | r2 b8 b b b |
			b4 e2. | r2 b8 c dis e | \time 6/8 g8 r4 fis4. |
			e8 r4 r4. | r2. | r2. | r2. |
		}
	}
	>>
}

harmony = \relative c'' {
  \voiceTwo
  \key e \minor
  	\repeat volta 5 {
  		g4. g | e4 g e | fis2 b4 | c d b |
		a4. g~ | g2. | r4. g | b8 b b a b g |
		g2. | fis4 fis fis | fis g4. r8 | g4 e g |
		c2. | d4 b a | a4. g | \time 4/4  e2 e'8 e e e |
		e4 r2. | r2 b8 b b b | b4 e2. | r2 b8 b b b |
		b4 e2. | r2 b8 c dis e | \time 6/8 g8 r4 fis4. |
		e8 r4 r4. | r2. | r2. | r2. |
  	}
}

text =  \lyricmode {
<<
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"1. " 
      	If you beg me to stay I might be per --
		sua -- ded. I've done it be- done it be --
		fore times when you ha -- ted. Now it's your
		turn. Roll o -- ver play dead.  Give it to me
		one. Give it to me one time.
		Give it to me one time.
		Give it to me one more time.
      }
	
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"2. " 
		Late -- ly, what can I say?. You're clear -- ly frus -- tra -- ted.
		I'm  run -- ning with ghosts of the past. It's comp -- li -- cat -- ed.
		Come to my feet. Hear me re -- late it. 
    }
	
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"3. " 
		Arm -- strong bag -- ga -- ges last as I've dem -- on -- stra -- ted.
		I've had a few lo -- vers be -- fore, might have re -- la -- ted.
		Just so you know, I'm o -- ver -- ra -- ted. 
    }
    
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"4. " 
		Hold me close to your heart. Be -- tra -- yal has fa -- ded.
		We made up and shared a few tears, end -- ed up na -- ked.
		But you may find, my heart is sha -- ded. 
    }
    	
>>

}


verseFive = \lyricmode {
	\new Lyrics {
      \set associatedVoice = "hidden"
      \set stanza = #"5. " 
		Black holes burst in -- to stars the mo -- ment our gaze met.
		My heart up in -- side of my throat, eyes di -- la -- ted.
		You lead me in, some -- how we made it. 
    }
}

harmonies = \chordmode {
  	e2.:m | a:m | a:m | a:m |
  	e:m | e:m | e:m | e:m |
  	a:m | a:m | e:m | e:m |
  	f:7 | f:7/ees | e:m | \time 4/4 e1:m |
  	e:m | e:m | e:m | e:m | 
  	e:m | e:m | \time 6/8 e4.:m b:7|  
  	e2.:m | e:m | e:m | e:m | 
}
  

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose e c { \harmonies }
    }
    \new PianoStaff {
    <<
    	\new Voice = "voice" { \transpose e c { \melody } }
  		\new Lyrics \lyricsto "words" \text
  		\new Lyrics \lyricsto "hidden" \verseFive
    	\new Voice = "accordion" { \transpose e c { \harmony } }
    >>
  	}
  >>
  
  \layout { 
   #(layout-set-staff-size 20)
   }
  \midi { 
  	\tempo 4 = 125
  }
  
}


