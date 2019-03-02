\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "All About Love (for Bell Hooks)"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
 \clef treble
 \key ees \major
 \time 4/4
 \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
 #(ly:expect-warning "cannot end volta")
 \repeat volta 2 {
 <<
	   \new Voice = "chorus" {
		 \voiceOne
		 f2( ees | f4) r2. | f2( ees | f4) r2. | 
	   }
	   \new Voice = "instrumental" {
		 \voiceOne
		 r1 | r8 ges aes bes c bes aes ges | r1 | r8 ges aes bes c bes aes ges | 
	   }
 >>
	}
   \context Voice = "verse" {
   bes,8 c bes4 c2~ | c r | bes8 bes4 bes8 c4 c~ | c1 | % All about love ... cathexis
   d8 d d d ees2~ | ees1 | d8 d d d ees4 ees8 ees | f8 f f4 g8 g g g | % How can ... on a
   aes4 aes8 aes b b b b | b8( c) c2. | % meaningful ... equal
   }
}


chorus =  \lyricmode {
 Love __  Love __ 
}

verse =  \lyricmode {
	All a -- bout love. We've got ca -- 
	thex -- is. What a -- bout re -- spect?
	How can we con --
	nect on a 
	mea -- ning -- ful le -- vel if you
	can't e -- ven see me as an e -- qual?
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

