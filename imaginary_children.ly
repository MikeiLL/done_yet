\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Imaginary Children"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
 \clef treble
 \key g \major
 \time 4/4
 \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
 #(ly:expect-warning "cannot end volta")
 \repeat volta 4 {
 <<
	   \new Voice = "chorus" {
		 \voiceOne
		 g8 g4 g4. g8 g | a4 g8 g4. g4 | b8( g4) g4. r4 | r1 | % This ... children
		 b4 b8 b4. b4 | c8 b4. c4 d~ | d2 r | r2. b4 | % Nurtured ... con
		 b2 b4 b | c4 b8 b4. c4 | d4( g2) c,4~ | c4 r2. | % ceived ... moments
		 b4 b8 b4. b4 | c8 b4 b4. a8 g~ | g2 r | r1 | % brightening ... world
		 
		 r2 b4 d | b d b8 a4 b8~ | b4 r b4 d | b g b8 a4 g8~ | % Every ... little boy
		 g4 r b4 d | b d b a8 b~ | b4 r b4 d | b d b a8 g~ | % boy ... wants ... destroy
		 g4 r2. r1 | r |
	   }
 >>
	}
	\alternative {
		\context Voice = "verse" {
		 	r |
		   g4 g8 g4. g8 a~ | a4 g8 g4. a8 b~ | b4 b8 b4. r4 | % Council ... sake
		   b4 b8 b4. b8 c~ | c4 b8 b4. a8 d~ | d4 r2. | r1 | % Council ... good
		   b4 b8 b4. b8 c~ | c4 b8 b4. c8 d~ | d4 d8 d4. d8 c~ | c4 c8 c4. c8 b~ |% Put me in ... talk a-
		   b4 b8 b4. b4 | c8 b4 b4. a8 g~ | g4 r2. | r1 | % bout the way ... heart
	   }
	   \context Voice = "verse" {
	    	r2. g4 |
		   g2 g4 g | a4 g a b~ | b2 r |  r1 | % heart ... cage
		   b2 b4 b | c4 b4 c d~ | d2 r | r1 | % Hard... control
		   b2 b4 b | c4 b c d~ | d4 g2 c,4~ | c2 r4 b4 |% Lips... to lie again
		   b4 b8 b4. b4 | c b a g~ | g4 r2. | r1 | % they've gotten... trouble before
	   }
	   \context Voice = "verse" {
	    	r1 |
		   g4 g8 g4. g4 | a8 g4 g4. a8 b~ | b2 b |  r1 | % Tell me... faulty
		   b8 b4 b4. b4 | c4 b8 b4. c4 | d2 r | r1 | % Some... change
		   b4 b8 b4. b4 | c4 b8 b4. c8 d~ | d4 d8 d4. d8 e~ | e4 d8 d4. c8 b~ |% Recommending... life of dreams will always
		   b4 b8 b4. b4 | c b8 b4. a4 | g2 r | r1 | % always... pain
	   }
	   \context Voice = "verse" {
	    	r1 |
		    r1 | b8 a g4 a8 g fis4 | r1 | b8 a g4 a8 g fis4 | % Sure I don't sure I don't
		    g1 | b8 a g4 a8 g fis4 | g1 | g |
	   }
	}
}


chorus =  \lyricmode {
	This is for my im -- a -- gin -- a -- ry child -- ren.
	nur -- tured in the bel -- ly of Soul. Con -- 
	ceived in in -- tox -- i -- ca -- ted mo -- ments.
	Bright -- en -- ing the sha -- dows of the world.
	
	Eve -- ry eve -- ry mo -- ther's son 
	wants to help their lit -- tle boy.
	Wants to help them to suc -- ceed.
	Least she hopes she don't des -- troy.
}


verse =  \lyricmode {
	Coun -- cil me to join the ranks for good -- ness sake.
	Coun -- cil me to join the ranks for good.
	Put me in the cal -- en -- dar for 
	Thurs -- day af -- ter -- noon to talk a --
	bout the way my mo -- ther broke my heart.
	
	My
	heart won't go in -- to it's cage.
	Hard as I try to con -- troll.
	Lips are re -- fus -- ing to lie a -- 
	gain. They've
	got -- ten me in trou -- ble be --
	for.
	
	Tell me that my re -- ci -- pe is faul -- ty.
	Some of the in -- gred -- i -- ents must change.
	Rec -- co -- mend -- ing sub -- sti -- stutes they
	tell me that a life of dreams will al --
	ways end in lone -- li -- ness and pain.
	
	Sure I don't. Sure I don't.
	Sure I don't. Sure I don't know.
	Sure I don't. Sure I don't know. No.
}


harmonies = \chordmode {
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 |
 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 |
 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 |
 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 g1 | c:9 | g1 | c:9 | 
 
 g1 | c:9 | g1 | c:9 | 
 g1 | 
}

\score {
 <<
   \new ChordNames {
     \set chordChanges = ##t
     \harmonies
   }
   \new Staff  {
     \new Voice = "main" { \melody }
   }
   \new Lyrics \lyricsto "chorus" \chorus
   \new Lyrics \lyricsto "verse" \verse
 >>

  
  \layout { 
   #(layout-set-staff-size 20)
   }
  \midi { 
  	\tempo 4 = 125
  }
  
}

%Additional Verses
\markup \fill-line {
\column {
""
  }
}

