\version "2.18.2"

\header {
  title = "Cousin of Booth"
  composer = "Words and Music by Mike iLL"
}

melody = \relative c' {
  \clef treble
  \key e \minor
  \time 4/4
  r2 e8 e e g( | g e4) e4.~ e4 | % This is the bomb dude
  r2. b'8 b | b4 b8 b4. a8( g | % 'cause of heaven and youth
  e4) r2 b'8 b | b4 b8 b4. a8( g | % And the cousin of booth
  e4) r2. | r1 | 
  e8 r e d e4 d | e8 r e d e4 d | % six, either ... morning
  e8 r e d e4 d | e8 d e d e4 d | % drunk ... warning
  e4 e8 d e4 e8 d | e8 d e d e4 d | % you expected ... drinkin
  e8 d e4 e d | e8 d e4 e d | % drinkin' and ... here I am thrivin'
  e8 e e d e4 d | e8 d e4 e d | % thrivin' and survivin .. bobbin ... weaving
  e8 d e d e4 d | e8 d e r e4 d |% officer ... leaving
  e'8 e d b e, g4 e8~ | e4 r2. | % Here I got ta .. down
  e'8 e d b e, g4 e8~ | e4 r2. | % Here I got ta ... town
  e8 d e d e r d4 | e8 d e d e4 d | % hope they don't forget me ... trauma
  e4 e e d | e8 d e d e4 d | % childhood trauma ... preacher
  e4 e8 d e4 d | e8 r e d e4 d | % mom was a ... never
  e8 d e d e4 d | e'8 e d b e, g4 e8~ | % 'member her ... in the book ... stars
  e4 r2. | r4 g8 e e g4 e8~ | % book o morning stars
  e4 r2. | e8 d e r e4 d | % hope ... pregnant
  e8 d e d e4 d | e8 d e d e4 d8 r |
  e'8 e4 d b e,8~| e e4 g8~ g4. e8~ | e2 r2 | % Like I need a hole ... nose
  | r4 e8 d e r e r | \times 2/3 { e4 e e } r2 | r1 |
  e4 e e8 e e4 | e8 e e e e e e r | % Yes sir ... morning sir
  e8 d e d e r e r | e4 e8 d e4 b | % I have been a ... hard ass
  e8 e e4 e8 e e4 | e8 e e e e e e4 | % tough as nails ... jail
  e8 e e4 e8 e e e | e e e e e e e4 | % pay a fine ... nails
  e'1~ | e2( e8 b g4) | % Ahh 
  e4 r e fes | g a8 b4.~ b8 r8 | % youth got me holdin on
}

text =  \lyricmode {
  This is the bomb, | dude. |
  'Cause of | Hea -- ven and |
  Youth and the | cou -- sin of Booth. |
   | |
  Six in the mor -- ning | Eight in the mor -- ning |
  Drunk and ig -- nor -- ing | Eve -- ry sin -- gle war -- ning. |
  I'm not the one you ex -- | pect -- ed to be drink -- ing. |
  Drink -- ing and dri -- ving. | Here I am thri -- ving. |
  Thri -- ving and sur -- vi -- ving, | bob -- bing and wea -- ving. |
  Off -- i -- cer ex -- cuse me, | we we're just lea -- ving.
  Here I got ta look this down. | |
  Here I got ta know this town. | |
  Hope they don't for -- get me. | Had a lot -- ta trau -- ma. |
  Child -- hood trau -- ma. | Dad -- dy was a preach -- er. |
  Mom was a teach -- er. | Dead now or ne -- ver. |
  'Mem -- ber her for -- e -- ver | In the book of mor -- ning stars. |
  Book o' mor -- ning stars. | Hope I'm not preg -- nant. |
  Feel a lit -- tle quee -- zy | Need tha in -- con -- ven -- ience |
  Like I need a hole in my | nose |
  with a big fat | ring in it | |
  Yes, sir, off -- i -- sir. | Se -- ven -- in the mor -- ning, sir |
  I have been a freak since | You've been a hard- -- ass. |
  Tough as nails, cof -- fin nails. | I don't an -- na go to jail, |
  Pay a fine just be -- cause I | paint my dir -- ty fin -- ger nails |
  Ahhh- | |  
  Youth! Got me | hol -- din on. |

}

detailed = \chordmode { e2:m e:m/fis | e:m/g e:m/fis |
       a:m | a:m/b | a:m/c a:m/b }

it = \chordmode { e1:m | e:m | a:m | a:m | }

harmonies = {
  \detailed \it \it \it
   \it \it \it \it 
   \it \it \it \it 
   \it \it \it \it 
   \it \it \it \it 
   \it \it \it \it 
   \it \it \it \it 
   \it \it \it \it 
   \it \it \it \it 
   \it \it \it \it 
   \it \it \it \it 
   \it \it \it \it 
   \it \it 
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}
