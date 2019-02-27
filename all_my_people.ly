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
  		\partial 2 r8 e4 e8 |
		e d b d4 r4. | r2 r8 d4 d8 | % people
		d c a c4 r4. | r2 r8 c4 c8 | % round in 
		c b4 b r4. | r2 r8 d4 d8 | % certainty
		d c a c4 r4. | r2 r8 e4 e8 | % marvelously
		e d b d4 r4. | r2 r8 d4 d8 | % possible
		d c a c4 r4. | r2 r8 c4 c8 | % vow to
		c b a b4 r4. | r2 r8 d4 d8 | % wouldn't
		d c a c4 r4. | r2 r8 e4 e8 | % might
		e d b d4 r4. | r2 r8 d4 d8 | % stubbornly
		d c a c4 r4. | r2 r8 c4 c8 | % tinue to stretch
		c b a b4 r4. | r2 r8 d4 d8 | % end of a tale
		d c a c4 r4. | r2 r4 e8 e | % gins at the end
		e fis e d d4 r | r2 r4 d8 d~ | % was and once
		d c a c4 c4 r8 | r2 r8 c4 c8 | % here we still 
		c b a b4 r4. | r2 r8 d4 d8 | % people and me
		d c a c4~ c4.~ | c1 | % people and me
	}
}


text =  \lyricmode {
	\new Lyrics {
      \set associatedVoice = "melody"
		All my peo -- ple and me sail a -- round in a sea
		of un -- cer -- tain -- ty fail -- ing
		mar -- vel -- ous -- ly at im -- 
		pos -- si -- ble tasks that we
		vow to ach -- ieve and you
		would -- n't be -- lieve. Well, you
		might just be -- lieve how we
		stub -- born -- ly reach and con -- 
		tin -- ue to stretch toward the
		end of a tale that be --
		gins at the end. Once there
		was and once was -- n't and
		here we still might be. All my
		peo -- ple and me. All my
		peo -- ple and me.
      }
	

}

harmonies = \chordmode {
	\partial 2 g2 |
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
  	g1 | g | f | f | 
  	e:m | e:m | f | f |
  	g1 | g | f | f | 
  	e:m | e:m | d:m7 | d:m7 | 
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


