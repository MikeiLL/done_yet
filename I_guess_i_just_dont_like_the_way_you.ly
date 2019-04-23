\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "I Guess I Just Don't Like the Way You"
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
			r4 d e | c d b | c a4. r8 | b8 g4 a8. fis | % I had a dream...
			fis4 e2~ | e2. | r | r | % Hollow
			r4 d' e | c d b | c a b | g c a | % And not the kind of
			b2 g8 g | \tuplet 4/3 {a4 a fis g} | fis e2~ | e2. | % trast to the opposite of sorrow
			r4 d' e | c d b | c a4. b8~ | b g4 a c8~ | % You said these words to me feeling
			c4 b fis | g b fis | e2. | r | % totally deflated
			r4 d' e | c d b | c a b | g a fis | % I guess I ... are that
			g e a~ | a fis g | e2. | r | % way with ... anymore
			r4 d' e | c d b | c a b | g a fis | % I guess I ... are that
			g e a~ | a fis g | e2. | r | % way with ... anymore
			
			r4 a b | c2 d4 | b2.~ | b |
			r4 a b | c2 d4 | b4. d~ | d2. |
			r4 cis dis | e2 fis4 | fis g e~ | e2. |
			c2 e4 | b2 d4 | a2.~ | a4 b c | 
			d2 c4 | b a2 |
	}
	
	\new NullVoice = "hidden" {
		\voiceTwo 
		\hideNotes {
			
		}
	}
	>>
}

harmony = \relative c {
  \voiceTwo
  \key e \minor
  \clef bass
  	\repeat volta 5 {
  		a4  << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | b, << g' b >> << g b >> | 
  		a  << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | e, g b | 
  		a4 << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | b, << g' b >> << g b >> | 
  		a  << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | e, g b | 
  		a4 << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | b, << g' b >> << g b >> | 
  		a  << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | e, g b | 
  		a4 << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | b, << g' b >> << g b >> | 
  		a  << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | e, g b | 
  		a4 << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | b, << g' b >> << g b >> | 
  		a  << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		e, << g b >> << g b >> | e, g b | 
  		
  		a4 << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		g, << b d >> << b d >> | d, << b' d >> << b d >> | 
  		a4 << c e >>  << c e >> | e, << c' e >> << c e >> | 
  		g, << b d >> << b d >> | d, << b' d >> << b d >> | 
  		b << dis fis >> << dis fis >> | b, << dis fis >> << dis fis >> | 
  		c << e g >> << e g >> | g, << e' g >> << e g >> |
  		a, << c e >> << c e >> | g, << c e >> << c e >> |
  		fis, << c' e >> << c e >> | fis, << c' e >> << c e >> |
  		fis, << b dis >> << b dis >> | fis, << b dis >> << b dis >> |
  	}
}

text =  \lyricmode {
<<
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"1. " 
      	I had a dream this mor -- ning,
      	woke up feel -- ing hol -- low.
      	And not the kind of mel -- low 
      	that's in sharp con -- trast to the
      	op -- po -- sit of sor -- row.
      	You said these words to me that
      	left me feel -- ing
      	to -- tal -- ly de -- 
      	fla -- ted.
      	I guess I just don't like the 
      	way you are that way with me a -- ny
      	more.
      	I guess I just don't like the 
      	way you are that way with me a -- ny
      	more.
      }
	
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"2. " 
      We crawl our lone -- some long -- ing
      slow -- ly through the shal -- lows
      like hung -- ry ser -- pents hunt -- ing
      bits pain -- full truth in siz -- es
      pos -- si -- ble to swal -- low.
      I spent the day re -- play -- ing
      six -- teen words you
      ne -- ver real -- ly 
      sta -- ted.
    }
    	
>>

}


verseFive = \lyricmode {
	\new Lyrics {
      \set associatedVoice = "hidden"
      \set stanza = #"5. " 
    }
}

harmonies = \chordmode {
  	a2.:min | a:min | e:min | e:min | 
  	a:min | a:min | e:min | e:min | 
  	a:min | a:min | e:min | e:min | 
  	a:min | a:min | e:min | e:min | 
  	a:min | a:min | e:min | e:min | 
  	a:min | a:min | e:min | e:min | 
  	a:min | a:min | e:min | e:min | 
  	a:min | a:min | e:min | e:min | 
  	a:min | a:min | e:min | e:min | 
  	a:min | a:min | e:min | e:min | 
  	a:min | a:min | g | g | 
  	a:min | a:min | g | g | 
  	b | b | c | c |
  	a | a:/g | fis:dim | fis:dim | 
  	b:/fis | b:/fis
}
  

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies 
    }
    \new PianoStaff {
    <<
    	\new Voice = "voice" { \melody  }
  		\new Lyrics \lyricsto "words" \text
  		\new Lyrics \lyricsto "hidden" \verseFive
    	\new Voice = "chords" { \harmony  }
    >>
  	}
  >>
  
  \layout { 
   #(layout-set-staff-size 22)
   }
  \midi { 
  	\tempo 4 = 125
  }
  
}


%Additional Verses
\markup \fill-line {
\column {
	"Monotone:"
	"Guess I'm tryina build an ounce of confidence back."
	"Why would someone want someone this broken in half?"
	"Floating through the air like a plain white baloon,"
	"Out of touch, out of mind, out of tune."
	""
	"Sung:"
	"Away, away, away, away."
  }
}

