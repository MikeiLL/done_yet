\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "First They Came for the Homeless"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

melody = \relative c' {
 \clef treble
 \key c \minor
 \time 6/8
 \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
 #(ly:expect-warning "cannot end volta")
   \new Voice = "chorus" {
     \voiceOne
     c4 r4. c8 | ees4. f4 ees8 | g2. | f2. | % First 
     ees2. | d2. | c2. | bes2. |
     c4 c8 c4 c8 | ees4. c4. | c2. | 
   }
   g'2~ g8 f16 g | f4 ees16 f d4 c8 | c4. g' |
   \context Voice = "verse" {
     c,4. c | ees4 c2 | c2. | ees4. f |
     g4. f4 ees8 | f2. | ees4. d4 c8 | d2. |
     c4 c8 bes4 aes8 | bes4. aes4 aes8 | bes4. c | c ees | c2. |
   }
   ees4. f | g2~ g8 f16 g | f4. ees8 r4 | f4. ees8 r4 | g2. |
}


chorus =  \lyricmode {
 First they came for the home -- less. Oh my home -- less
 li -- ving on the edge of town.
}

verse =  \lyricmode {
 Then I did not speak.
 Kept my eyes on the ground, hands on the job,
 mo -- ney in the bank while the days grew long and 
 cold.
}


harmonies = \chordmode {
 c2.:min
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
"2. Next they came for the dealers... selling us our medicine..."
"3. Next they came for the harlots... underneath the Lynch Street Bridge..."
"4. Next they came for the trans men... hiding their anatomy..."
"5. Next they came for my family. Listen to the marching steps."
"   No one left to speak. Kept my"
"   eyes on the ground, hands tightly bound,"
"   noose wound around while my"
"   feet swing through the air."
" "
  }
}

