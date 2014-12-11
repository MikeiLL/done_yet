\version "2.18.2"

\header {
  title = "Cousin of Booth"
  composer = "Words and Music by Mike iLL"
  tagline = "copyright Mike and Rivka Kilmer BMI Music engraving by LilyPond"
}

\paper{ print-page-number = ##f }

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
  e4 r e fis | g a8 b4.~ b8 r8 | % youth got me holdin on
  e,4 r e fis | g a8 b4.~ b8 r8 | %  pour me another one
  e,4 r e fis | g a8 b4.~ b8 r8 | % down another one
  e,4 r e fis | g a8 b4.~ b8 r8 | % now the thrill is gone
  e,4 r e fis | g a8 b4.~ b8 r8 | % and the bill has come
  e,4 r e fis | g a8 b4. c4 | % i can justify my 
  e,4 r e fis | g a8 b4. c4 | % i can vindicate my
  e,4 r e fis | g a8 b4.  c4 | % i can fortify my
  e,4 r e fis | g a8 b4. c4 | % watch me fornicate my
  e,4 r e fis | g a8 b4. c4 | % watch me rectify my
  e,4 r b' b | b8 b4 b b8 b4 | % save me say a prayer for my 
  e4 r b b | b4 b8 b4 b8 b4 | % make a sacrifice to my
  e4 r \times 2/3 { b4 b a | b b a } b2 % line after ... line
  r2 \times 2/3 { b4 b a | b b a } b2 % bringin' him forward in time
  r2 b8 b a b~ | b a b4 b g | % giving ... wisdom
  r2 b8 b a b~ | b b a4 b2 | % see what ... now
  r2 b8 b b4 | b8 b b4 b8 b b4 | % laughing .. and
  r2 b8 b a b~ | b b a4 b g | % looking ... acceptance
  r2 b8 b b b~ | b b b4 e b | % all of his ... brilliance
  r2 b8 b b4 | b8 b b4 b8 b r4 | % beggin ... beggin
  b8 b b r b4 b8 b | b r \times 2/3 { b8 b b~ } b g g4 | % makin' up .. emptiness 
  b8 b b r b4 b8 b | b r \times 2/3 { b8 b c~ } c b b4 | % makin' up .. loneliness 
  % Final chorus
  r2 e8 e e g( | g e4) e4.~ e4 | % This is the bomb dude
  r2. b'8 b | b4 b8 b4. a8( g | % 'cause of heaven and youth
  \repeat volta 2 {
    e4) r2 b'8 b | b4 b8 b4. a8( g | % And the cousin of booth
    e4) r2 b'8 b | b4 b8 b4. a8( g | % 'cause of heaven and youth
  }
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
  Off -- i -- cer ex -- cuse me, | we were just lea -- ving.
  Here I got ta look this down. | |
  Here I got ta know this town. | |
  Hope they don't for -- get me. | Had a lot -- ta trau -- ma. |
  Child -- hood trau -- ma. | Dad -- dy was a preach -- er. |
  Mom was a teach -- er. | Dead now or ne -- ver. |
  'Mem -- ber her for -- e -- ver | In the book of mor -- ning stars. |
  Book o' mor -- ning stars. | Hope I'm not preg -- nant. |
  Feel a lit -- tle quee -- zy | Need the in -- con -- ven -- ience |
  Like I need a hole in my | nose |
  with a big fat | ring in it | |
  Yes, sir, off -- i -- sir. | Se -- ven -- in the mor -- ning, sir |
  I have been a freak since | You've been a hard- -- ass. |
  Tough as nails, cof -- fin nails. | I don't an -- na go to jail, |
  Pay a fine just be -- cause I | paint my dir -- ty fin -- ger nails |
  Ahhh- | |  
  Youth! Got me | hol -- din on. |
  Youth! Pour me_a -- | no -- ther one. |
  Youth! Down a -- | no -- ther one. |
  Youth! Now the | thrill is gone. |
  Youth! And the | bill has come. |
  Youth! I can | jus -- ti -- fy my |
  Youth! I can | vin -- di -- cate my |
  Youth! I can | for -- ti -- fy my |
  Youth! Watch me | for -- ni -- cate my |
  Youth! Watch me | rec -- ti -- fy my |
  Youth! Save me | say a prayer for my |
  Youth! Make a sac -- ri -- fice to my |
  Youth! Line af -- ter | line af -- ter line, |
  Bring -- in' him | for -- ward in time. |
  Gi -- vin him all | o' my wis -- dom |
  See what he does | with it now. |
  Laugh -- ing and | fuck -- ing and hugg -- ing and |
  Look -- in' for love | and ac -- cep -- tance |
  All of his arr -- o -- gant brill -- | iance |
  Beg -- gin' and | beg -- gin and beg -- gin'. |
  Mak -- in' up songs to com -- | pete  with his empt -- i -- ness. |
  Mak -- in' up psalms to com -- | pete with his lone -- li -- ness. |
  This is the bomb, | dude. |
  'Cause of | Hea -- ven and |
  youth and the | cou -- sin of Booth. |
  'Cause of | Hea -- ven and youth |
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
   \it \it \it  
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
