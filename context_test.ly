\version "2.19.45"
\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\header {
  title = "Two Verses with a Non-Lyric Section"
}

melody = \relative c'' {
 \clef treble
 \key c \major
 \time 3/4
 \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
 #(ly:expect-warning "cannot end volta")
 \repeat volta 2 {
   \new Voice = "chorus" {
     \voiceOne
     c2. | d | e | d |
     c |
   }
   e4 d c | e4 d c | e4 d c |
 }
 \alternative {
   \new Voice = "verse" {
     c2. | d | e | f |
     g | f | e | d |
   }
   \context Voice = "verse" {
     c | d | e | f |
     e | f | e | c |
   }
 }
}


chorus =  \lyricmode {
 These are words they are.
}

verse =  \lyricmode {
 This one here will
 be the first verse.
 This one here will
 be the se -- cond.
}


harmonies = \chordmode {
 c2.
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
   #(layout-set-staff-size 16)
   }
  \midi { 
  	\tempo 4 = 125
  }
  
}

%Additional Verses
\markup \fill-line {
\column {
""


" "
  }
}

