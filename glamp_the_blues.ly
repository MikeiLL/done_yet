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
			fis4 fis8 a4 b | e d8 b2 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
			
			fis4 fis8 a4 b | e8( fis) e( d) b4. | fis4 fis8 a4 b | e4 d8 b4 r |
			fis4 fis8 a4 b | e d8 b4. r8 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
			
			fis4 r8 a4 b | e8( fis e d b4.) | fis4 fis8 a4 b | e4 d8 b4 r |
			fis4 fis8 a4 b | e d8 b4. r8 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
		}
	}
	
	\new NullVoice = "hidden_two" {
		\voiceTwo 
		\hideNotes {
			fis4 fis8 a4 b | e8( fis) e b4 fis | fis4 fis8 a4 b | e4 d8 b4 r | % Verses made of
			fis4 fis8 a4 b | e d8 b2 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
			
			fis4 fis8 a4 b | e8( fis) e( d) b4. | fis4 fis8 a4 b | e4 d8 b4 r |
			fis4 fis8 a4 b | e d8 b4. r8 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
			
			fis4 r8 a4 b | e8( fis) e( d) b4. | fis4 fis8 a4 b | e4 d8 b4 r |
			fis4 fis8 a4 b | e d8 b4. r8 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
		}
	}
	
	\new NullVoice = "hidden_three" {
		\voiceTwo 
		\hideNotes {
			fis4 fis8 a4 b | e8( fis) e( d) b4. | fis4 fis8 a4 b | e4 d8 b4 r |
			fis4 fis8 a4 b | e d8 b2 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
			
			fis4 fis8 a4 b | e8( fis) e( d) b4. | fis4 fis8 a4 b | e4 d8 b4 r |
			fis4 fis8 a4 b | e d8 b4. r8 | b4 b8 b4 fis | a b8( a) b4. |
			r4. r2 | r4. r2 | r4. r2 | r4. r2 | 
			
			fis4 r8 a4 b | e8( fis) e( d) b4. | fis4 fis8 a4 b | e4 d8 b4 r |
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
	
}

hidden = \lyricmode {
	\new Lyrics {
      \set associatedVoice = "hidden"
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
}

hidden_two = \lyricmode {
	\new Lyrics {
      \set associatedVoice = "hidden_two"
      \set stanza = #"3. " 
		Ver -- ses made of sub -- stance. Ver -- ses. Ver -- ses made of at -- mos -- phere.
		Aim to get us out of here.
		Aim to take us out of here.
		
		Peas and car -- rots, corn and grits. Kale sa -- lad, dates with pits.
		Al -- mond but -- ter sand -- wit -- ches.
		Al -- mond but -- ter sand -- wit -- ches.
		
		If there's been a mean -- ing here. Type it in a col -- ored square.
		Post it in your social share.
		Post it in your social share.
    }
}

hidden_three = \lyricmode {
	\new Lyrics {
      \set associatedVoice = "hidden_three"
      \set stanza = #"4. " 
		This is how we glamp the blues. This is how we glamp the blues.
		Mud -- dy -- ing our fan -- cy shoes.
		Mud -- dy -- ing our fan -- cy shoes.
		
		If there is a soul at all. That's what se -- pa -- rates us all.
		Un -- der -- neath one pa -- ra -- sol.
		Un -- der -- neath one pa -- ra -- sol.
		
		This is how we glamp the blues. This is how we glamp the blues.
		This is how we glamp the blues.
		This is how we glamp the blues.
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
  		\new Lyrics \lyricsto "hidden" \hidden
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


