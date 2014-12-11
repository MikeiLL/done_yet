\version "2.18.2"

\header {
  title = "Nakba (Catastrophe)"
  composer = "Words and Music by Rivka and Mike iLL"
  tag = "Copyright Rivka and Mike iLL Kilmer Creative Commons Attribution-NonCommercial BMI - Engraving by Lilypond"
}

\paper{ print-page-number = ##f }


melody = \relative c' {
  \clef treble
  \key e \major
  \time 4/4
  \repeat volta 2 {
    b4 cis8 dis e4 dis8 cis | cis4 b b8 gis cis4 | b1~ | b | 
    b4 cis8 dis e4 dis8 cis | cis4 b b8 gis cis4 | b1~ | b2.~ b8 
  \new Voice = "words" {
    b8 | b4. b8 b4 cis | cis8 b4.~ b4 fis'8 fis | fis e4 dis8 e4 fis | gis2. gis4 |
    a4. gis8 fis4 e | cis b8 e4. e8 e | dis4 dis8 e fis4 dis | cis( b2~) b8 cis |
    cis4 e8 e4.~ e4~ | e2.~ e8 cis | cis4 b8 b4.~ b4~ | b2.~ b8 gis' | 
    fis4 e8 e4.~ e4~ | e2 cis4 e4~ |
    \time 2/4 e2
    }
    \time 4/4
    fis'8 gis fis e cis b e fis | gis fis e cis  b e fis gis
  }
}

text =  \lyricmode {
  A land with -- out a | peo -- ple Said the |  
  peo -- ple who wan -- ted | land Then | 
  half a mil -- lion | ref -- u -- gees just ap -- | 
  peared from the  dust and | sand ca -- |
  tas -- tro -- phe- | ca -- |
  tas -- tro -- phe- | ca -- |
  tas -- tro -- phe- | nak -- ba-
}

harmonies = \chordmode {
   a2:/e e2 | a4:/e e2 a4:/e | e1 | e1 |
   a2:/e e2 | a4:/e e2 a4:/e | e1 | e1 |
   e1 | e | a:/e | e |
   a:/e | e | a:/e | e |
   a4.:/e e8 e2 | e1 |
   a4.:/e e8 e2 | e1 |
   a4.:/e e8 e2 |e2 a4:/e e4 | e2 |
   e1 | e |
}

\markup \fill-line {
\column {
" "
"Not on my behalf"
"Not with my blessing, and" 
"Not in my name"
"A jewish state cleansed," 
"Of the people who lived there before?"
"There is no significant difference "
"Between a Muslim, Hindu, Buddhist, "
" "
  }
\column {
" "
"Christian or Jewish state."
"No matter what it calls itself,"
"It’s really just about the money."
"In a system based on capital"
"The government only manages"
"What is owned by the ruling class"
" "
  }  
}

\score {
  
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }

    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \text
  >>
  \layout { }
  \midi { }
}

%Additional Verses
\markup \fill-line {
\column {
"2. Trails of tears both there and here"
"Only humans could engineer"
"Claim to be driven by the Zion Train"
"But the facts make it god damn clear"
" "
"Racism at it's most arrogant,"
"Disbelieves in the humanity of entire groups of people"
"Allowing for extermination without guilt"
"The enemy is not a person or a party"
"And it certainly isn’t a race or a religion."
"It is actions and ideas that divide us"
"Cultivating ignorance and fear "
"Why not cultivate trust and love?"
"Believing, what goes around comes around."
" "
}
\column {
"3. Years ago or decades ago" 
"or centuries ago, they say"
"We were either really bad or really good"
"That’s how we wound up here today"
" "
"4. We've each accepted long ago"
"That life really is not fair"
"If there’s an old wheel turning on the karma tree,"
"It don't matter if you believe it’s there."
" "
  }
}
