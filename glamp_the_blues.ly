\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Glamp the Blues"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
  \clef treble
  \key e \minor
  \time 7/8 
  <<
	\new Voice = "words" {
		\voiceOne 
		fis4 fis8 a4 b | e8( fis e d) b4. | fis4 fis8 a4 b | e4( d8) b4 r | % Wonder if it's
		fis4 fis8 a4 b | e d8 b4. r8 | b4 b8 b4 fis | a b8( a) b4. |
		r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
		
		fis4 fis8 a4 b | e8( fis) e( d) b4. | fis4 fis8 a4 b | e4( d8) b4 r | % Dreamed I woke
		fis4 fis8 a4 b | e d8 b2 | b4 b8 b4 fis | a b8( a) b4. |
		r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
		
		fis4 fis8 a4 b | e8( fis e) d b4. | fis4 fis8 a4 b | e4 d8 b4 r | % Children like
		fis4 fis8 a4 b | e d8 b2 | b4 b8 b4 fis | a b8( a) b4. |
		r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
	}
	
	\new NullVoice = "hidden" {
		\voiceTwo 
		\hideNotes {
			fis4 fis8 a4 b | e8( fis e d) b4. | fis4 fis8 a4 b | e4 d8 b4 r |
			fis4 fis8 a4 b | e d8 b4. r8 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
			
			fis4 fis8 a4 b | e8( fis) e( d) b4. | fis4 fis8 a4 b | e4 d8 b4 r |
			fis4 fis8 a4 b | e d8 b4. r8 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
			
			fis4 r8 a4 b | e8( fis e d b4.) | fis4 fis8 a4 b | e4 d8 b4 r |
			fis4 fis8 a4 b | e d8 b4. r8 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
		}
	}
	>>
}

harmony = \relative c'' {
  \voiceTwo
  \key e \minor
  	
}

text =  \lyricmode {
<<
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"1. " 
      	Won -- der if it's worth it, pu -- kin' out this mu -- sic.
      	Some -- thin' in my soul in -- sists.
      	Some -- thin' in my soul in -- sists.
      	
      	Dreamed I woke with -- out a stich walk -- in through the sta -- tion.
      	Sol -- diers looks, but they don't care.
      	Sol -- diers looks, but they don't care.
      	
      	Child -- ren like my cam -- per van, cloth -- ing fal -- ling out the back.
      	Ask me if they can get in.
      	Ask me if they can get in.
      }
	
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"2. " 
		Sleep -- in' in a loft bed. Room for five with cub -- by holes.
		This is how we glamp the blues.
		This is how we glamp the blues.
		
		I for -- got my dream some -- where. Ev -- en that the dream was there.
		Mem -- 'ry of a me -- mo -- ry. 
		Mem -- 'ry of a me -- mo -- ry.
		
		First day of school chil -- dren learn the gol -- den rule.
		On -- ly gold that some will know.
		On -- ly gold that some will know.
    }
	
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"3. " 
		
    }
    
	\new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"4. " 
		
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
  	e4.:m g2 | e4.:m g2 | e4.:m g2 | e4.:m g2 | 
  	e4.:m g2 | e4.:m g2 | e4.:m g2 | e4.:m g2 | 
  	e4.:m g2 | e4.:m g2 | e4.:m g2 | e4.:m g2 | 
  	e4.:m g2 | e4.:m g2 | e4.:m g2 | e4.:m g2 | 
  	e4.:m g2 | e4.:m g2 | e4.:m g2 | e4.:m g2 | 
  	e4.:m g2 | e4.:m g2 | e4.:m g2 | e4.:m g2 | 
  	e4.:m g2 | e4.:m g2 | e4.:m g2 | e4.:m g2 | 
}
  

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff {
    <<
    	\new Voice = "voice" { \melody  }
  		\new Lyrics \lyricsto "words" \text
  		\new Lyrics \lyricsto "hidden" \verseFive
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


