\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "All My People and Me"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4 
	\new Voice = "words" {
		\voiceOne 
		r4 e2 e4 |
		e d b d~ | d r2. | r1 | r4 d2 d4 |
		d c a c~ | c r2. | r1 | r4 c2 c4 |
		c b2 b4~ | b r2. | r1 | r4 d2 d4 |
		d c a c~ | c r2. | r1 | r4 e2 e4 |
		e d b d~ | d r2. | r1 | r4 d2 d4 |
		d c a c~ | c r2. | r1 | r4 c2 c4 |
		c b a b~ | b r2. | r1 | r4 d2 d4 |
		d c a c~ | c r2. | r1 | r4 e2 e4 |
		e d b d~ | d r2. | r1 | r4 d2 d4 |
		d c a c~ | c r2. | r1 | r4 c2 c4 |
		c b a b~ | b r2. | r1 | r4 
	}
}


text =  \lyricmode {
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"1. " 
		All my peo -- ple and me sail a -- round in a sea
		of un -- cer -- tain -- ty fail -- ing
		mar -- vel -- ous -- ly at im -- 
		pos -- si -- ble tasks that we
		vow to ach -- ieve and you
		would -- n't be -- lieve. Well, you
		might just be -- lieve how we
		stub -- born -- ly reach an con -- 
		tin -- ue to stretch to -- ward the
		end of a tale that be --
		gins at the end. Once there
		was and once was -- n't and
		here we still might be. All my
		peo -- ple and me. All my
		peo -- ple an me.
      }
	

}

harmonies = \chordmode {
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
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


