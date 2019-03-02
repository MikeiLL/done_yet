\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "All About Love (thank you bell books)"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
 \clef treble
 \key ees \major
 \time 4/4
 \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
 #(ly:expect-warning "cannot end volta")
 \repeat volta 3 {
 <<
	   \new Voice = "chorus" {
		 \voiceOne
		 f2( ees | f4) r2. | f2( ees | f4) r2. | 
		 f2( ees | f4) r2. | f2( ees | f4) r2. |
	   }
	   \new Voice = "instrumental" {
		 \voiceOne
		 r1 | r8 ges aes bes c bes aes ges | r1 | r8 ges aes bes c bes aes ges | 
		 r1 | r8 ges aes bes c bes aes ges | r1 | r8 ges aes bes c bes aes ges | 
	   }
 >>
	}
	\alternative {
		\context Voice = "verse" {
		   bes,8 c bes4 c2~ | c r | bes8 bes4 bes8 c4 c~ | c1 | % All about love ... cathexis
		   d8 d d d ees2~ | ees1 | d8 d d d ees4 ees8 ees | f8 f f4 g8 g g g | % How can ... on a
		   aes4 aes8 aes b b b b | b8( c) c2. | % meaningful ... equal
	   }
		\context Voice = "verse" {
		   bes,8 c bes4 c2~ | c r | bes8 bes4 bes8 c4 c~ | c1 | % All about love ... older than I am
		   d8 d d d ees4 ees~ | ees1 | d8 d d d ees4 ees | f8 f f f g4 g | % Maybe even wiser ... wise man
		   aes8 aes aes aes b b b b | b8( c) c2. | % Can't you see... together?
	   }
		\context Voice = "verse" {
		   bes,8 c bes4 c2~ | c r | bes8 bes bes4 c4 c~ | c1 | % All about love ... woman and children
		   d8 d d d ees4 ees8 ees | ees1 | d8 d d d ees4 ees8 ees | f4 f8 f g4 g8 g  | % Woman is the slave ... it's a
		   aes8 aes aes aes b b b b | b8 b b b ees ees ees4 | % cycle ... equal
	   }
	}

}


chorus =  \lyricmode {
 Love __  Love __ 
 Love __  Love __ 
}

verse =  \lyricmode {
	All a -- bout love. We've got ca -- 
	thex -- is. What a -- bout re -- spect?
	How can we con --
	nect on a 
	mea -- ning -- ful le -- vel if you
	can't e -- ven see me as an e -- qual?
	All a -- bout love. Ol -- der than 
	I am. May -- be e -- ven wi -- ser.
	I don't need a wise man.
	Take of your dis -- guise, man.
	Can't you see we're 
	in the dark to -- ge -- ther?
	All a -- bout love. Wo -- men and child -- ren.
	Wo -- man is the slave to the slave.
	Child -- ren are the slave to the 
	slave to the slave. It's a
	cy -- cle that's e -- ro -- ding and e -- ro -- ding and e --
	ro -- ding our
}


harmonies = \chordmode {
 f2:min ees | f1:min | f2:min ees | f1:min | 
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

