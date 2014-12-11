\version "2.18.2"

\header {
  title = "Better Never"
  composer = "Words and Music by Mike iLL"
  tag = "Copyright Rivka and Mike iLL Kilmer Creative Commons Attribution-NonCommercial BMI - Engraving by Lilypond"
}

\paper{ print-page-number = ##f }

melody = \relative c' {
  \clef treble
  \key c \major
  \time 3/4
  e8 d e2~ | e2~ e8 f16 g | f2.~ |f2 g8 a |
  g2.~ | g2 e8 c | f2.~ | f2. |
  c'2.~ | c | e2.~ |e2 a,8 e | 
  g2.~ | g2 e8 c | f2.~ | f4 

 \new Voice = "words" {
  c c |
  e e8 e4 f8~ | f4 f f | g g g | a c8 d4 e8~ |
  e2. | c  | b  | a2~ a8 g8 |
  d'4 d8 d4 d8~ | d4 c b | a8 a4. a4 | a b8 g4. |
  g2. | d' | c | b |
  d4 d8 d4 d8~ | d4 c b | a4. a8 a a~ | a b4. g8 f |
  e2 r4 |

\repeat volta 2 { c'2. | d8 e~ e2 | d8 c~ c2 |
  g'2. | g,2. | a8 b~ b2~ | b r4 |
  d2~ d8 c | b2~ b8 a | g2. | f2. |
  e2.~ | e2. | f2.~ | f2 r4 } 
  }
}

text =  \lyricmode {
  You could | cer -- tain -- ly say | in the | past I've been | hate -- ful in -- side |
   | Hell | Hell | Hell of |
  peo -- ple and pla | ces that | da -- mage my per -- son -- al pride |
     | well | well | well |
  bad sit -- u -- a | tions my | own pri -- vate sta | tions of the
  cross.
  You | bet -- ter | ne -- ver | leave | me, | lo -- ver |
  Af -- ter | all the | trust | I've | gi__- | | ven \bar "||"
}

harmonies = \chordmode {
  c2. | c | g:7 | g:7 |
  c | c | g:7 | g:7 |
  c | e:m/b | a:m | a:m |
  d:m7 | d:m7 | g:7 | g:7 |
  c | g:/b | a:m | g:7 |
  f | f | f | f |
  f | f | f |  g |
  c | g:/b | a:m | g |
  f | f | f | g |
  c |
  c | c | c |
  g:7 | g:7 | g:7 | g:7 |
  f | f | f | f |
  c:/g | c:/g | g | g | 
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
"2. There's a devil inside of us all, this one's holdin' the reigns."
"Hell, Hell, Hell."
"A struggle that's older than God's humble soldiers and their sayings."
"Well, well, well."
"Summon Saint Michael and his angels to regain control."
" "
"3. Angels have no thought of ever recanting their claims."
"Hell, Hell, Hell."
"But every religion eventually changes their names."
"Well, well, well."
"Despite the translation; there's an aching that reveals what I'm saying."
" "
"4. In the dark summer night; there's a flower that's filling the air."
"Hell, Hell, Hell."
"The bells of datura are hung with a devilish flare."
"Well, well, well"
"If we get too close to the truth; we might never return."
  }
}
