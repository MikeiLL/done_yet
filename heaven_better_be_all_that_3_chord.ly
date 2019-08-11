\version "2.18.2"

\header {
  title = "Heaven Better Be All That"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key d \major
  \time 6/8 
  r4. d( | e8) r d4 b8 g16 a~ | a4( b8 g4) e8 | r8 a,4 b8( d e) |
  g4 a8 b4( d8 | a g) a4 r | r b,8 cis e g | a4 g8 e4 r8 |
  r4 g,4. a8 | \tuplet 5/3 { b4 cis e g a~ } | a4 b8( g e) d'~ |
  d4 b8( a g4 ) |
  
  \new Voice = "verseOne" {
  	d'8( e4) e8. e | d8( b g4) r8 a | % bye bye by air. In
  	a b g e g4~ | g4. e8 r4 | % In body i endure but
  	a4 b8 a g d'~ | d4 b8 a g e~ | e4( g8) r4. | r4 g4. e8~ | % But why I abide by a burden. Bye bye, 
	e4 d8 g4 b8~ | b4 a8( g) a4~ | % bye, but that bye bye bye
	a b8 d4 e16 g~ | g4 a b | a( g) e8 g8~ | g2.~ | % With that put but bye bye abide
	g~ | g2 ~g4( | % abide
	
	b8) r8 r2 | fis8 fis fis fis fis4~ | fis2. | g4 e2 | % Heaven better
	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
	d4 e d | r2. | cis4 d8 e4. | r4 des8 cis4 b8 | % That's a lot ... a lot to
	b4 r2 |
	
	r4 b, d8 e | g a4 b4 g8~ | g4 e r |  % Offering a bowl of warm milk
	r2 a4 | b8 d4 b8 a g | e8. g r4. | a4. g4 r8 | % Pair of handcuffs as a decoration
	r4 a g8 r | r b4 a r8 |% Fancy bracelets
	r4. a4 g8~ | g4 b e,8 g~ | % Tie up. Why ab- 
	g4 a4 e | r d'8.( b16) a8( g) | g4 a8 e4.~ | e4 d2 | % andon us. Why abandon all our 
	r4. e'4. d8( | b4) r2 | % praises.
	% 
	% I am, I am, I am ever your servant, 
	% Mother of light, all right?
	% Higher. Higher than a flier.
	% Lighter than a fire– fly. Yeah.
	% 
	% CHORUS
	% 
	% Fa la la la I I I I
	% Born by a tribe I like and love.
	% Bold trends I try, would not defy tradition
	% But let me be clear.
	% 
	% Her. Our. All our us combined right here.
	% Ever come what lie. Ah.
	% Holler holler. Hip hip.
	% Hell of hell of hip hip.
	% Halleluja hip hip.
	% Halleluja hip hip. What
	% 
	% Here ’n’ I a 
	% Yeah I I I I I a
	% Awh ah an
	% 
	% High, why I ever
	% Why I ever lie yeah
	% Hey it’s such a game we are playing. Yeah. Hey.
	% 
	% Hey hey hey hip hip by us say what by us say what said tru all of my yodel 
	% Hip hip my yodel goin’ up.
	% 
	% CHORUS
	% 
	% In that spot, that mind that got desire less
	% Be on that
	% Great land that feels
	% Better than heaven ever
	% Softly as a landing feather
	% Gently by a well adroit sweet nimble finger of sky
	%  
	% Rolling and a tum-ba-ling a-
	% Round about above a mother
	% Ready ever. Any weather.
	% Guided by complete surrender.
	% 
	% Man and woman, humankind we
	% All got deep and deeper into trouble
	% Mmm Build that build that Babel Tower up
	% 
	% Za ba bap za ba bap
	% Za ba bap ba ba ba bap
	% Ba ba bap ba ba bap ba ba bap
	% Ba ba ba bop bop bop bap ba bap
	% 
	% Higher higher higher higher 
	% Higher higher wow!
	% 
	% CHORUS
	% 
	% Got it in our blood, papa. Good, papa.
	% Ma was in the wood cut pile up up our
	% Though I understood what the thought was for
	% How ‘bout by lunch I forget it?
	% 
	% Every day I wake up
	% So far. What for?
	% But I lie awake a lot late ask not what for
	% Walking on a wide
	% One a wide foot-pounded ground network of trails
	% 
	% Every time we think that we’ve found some peace and some
	% Peace and some peace and security
	% Well buddy babe you can bet bet bet that the media.
	% Audio, video, billboard and radio
	% Grabbing ahold of my mind and my wallet
	% Benny after Benny and a
	% Billion and a billion and a
	% Zillion you would think that we’re buying
	% La la la la la life after life
	% 
	% CHORUS
	% Offering a bowl of warm milk
	% Pair of handcuffs as a decoration
	% Fancy bracelets
	% Tie up. Why abandon us.
	% Why abandon all our praises.
	% 
	% I am, I am, I am ever your servant, 
	% Mother of light, all right?
	% Higher. Higher than a flier.
	% Lighter than a fire– fly. Yeah.
	% 
	% CHORUS
	% 
	% Fa la la la I I I I
	% Born by a tribe I like and love.
	% Bold trends I try, would not defy tradition
	% But let me be clear.
	% 
	% Her. Our. All our us combined right here.
	% Ever come what lie. Ah.
	% Holler holler. Hip hip.
	% Hell of hell of hip hip.
	% Halleluja hip hip.
	% Halleluja hip hip. What
	% 
	% Here ’n’ I a 
	% Yeah I I I I I a
	% Awh ah an
	% 
	% High, why I ever
	% Why I ever lie yeah
	% Hey it’s such a game we are playing. Yeah. Hey.
	% 
	% Hey hey hey hip hip by us say what by us say what said tru all of my yodel 
	% Hip hip my yodel goin’ up.
	% 
	% CHORUS
	% 
	% In that spot, that mind that got desire less
	% Be on that
	% Great land that feels
	% Better than heaven ever
	% Softly as a landing feather
	% Gently by a well adroit sweet nimble finger of sky
	%  
	% Rolling and a tum-ba-ling a-
	% Round about above a mother
	% Ready ever. Any weather.
	% Guided by complete surrender.
	% 
	% Man and woman, humankind we
	% All got deep and deeper into trouble
	% Mmm Build that build that Babel Tower up
	% 
	% Za ba bap za ba bap
	% Za ba bap ba ba ba bap
	% Ba ba bap ba ba bap ba ba bap
	% Ba ba ba bop bop bop bap ba bap
	% 
	% Higher higher higher higher 
	% Higher higher wow!
	% 
	% CHORUS
	% 
	% Got it in our blood, papa. Good, papa.
	% Ma was in the wood cut pile up up our
	% Though I understood what the thought was for
	% How ‘bout by lunch I forget it?
	% 
	% Every day I wake up
	% So far. What for?
	% But I lie awake a lot late ask not what for
	% Walking on a wide
	% One a wide foot-pounded ground network of trails
	% 
	% Every time we think that we’ve found some peace and some
	% Peace and some peace and security
	% Well buddy babe you can bet bet bet that the media.
	% Audio, video, billboard and radio
	% Grabbing ahold of my mind and my wallet
	% Benny after Benny and a
	% Billion and a billion and a
	% Zillion you would think that we’re buying
	% La la la la la life after life
	% 
	% CHORUS

  }
  
   #(ly:expect-warning "cannot end volta") 
   \repeat volta 3 {
   \new Voice = "chorus" {
     \voiceOne
     r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 | % Heaven better
			r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
			r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
			d4 e d | r2. | cis4 d8 e4. | r4 des8 cis4 b8 | % That's a lot ... a lot to
			b4 r2 |
		}
		r4 b' a | g2.~ | g4 cis, g | % ask.
		b4 r2 | r4 b' a | g2.~ | g4 cis, g | 
 }
 \alternative {
   \new Voice = "verse" {
    	
		
   }
   \context Voice = "verse" {
     	
   		}
   \context Voice = "verse" {
     	
		\set Score.repeatCommands = #'(end-repeat)
   		}
	}
}

chorus_text =  \lyricmode {
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	Hea -- ven bet -- ter be all that.
	More than this? That's a lot. A lot to ask.
}

firstVerse_text = \lyricmode {
 Bye bye by air. In bo -- dy I en -- dure, but
 But why I a -- bide by a bur -- den
 Bye bye, but that bye bye bye
 With that put but by bye bye a -- bide
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 More than this? That's a lot. A lot to ask.
 
 Of -- fer -- ing a bowl of warm milk
 Pair of hand -- cuffs as a de -- co- ra -- tion
 Fan -- cy brace -- lets
 Tie up. Why a -- ban -- don us?
 Why ab -- an -- don all our prai -- ses.
 
 I am, I am, I am e -- ver your ser -- vant, 
 Mo -- ther of light, all right?
 High -- er. High -- er than a flier.
 Light -- er than a fire– fly. Yeah.
}
 
moreVerse_text = \lyricmode { 
  
  
 Fa la la la I I I I
 Born by a tribe I like and love.
 Bold trends I try, would not defy tra -- di -- tion
 But let me be clear.
 
 Her. Our. All our us com -- bined right here.
 E -- ver come what lie. Ah.
 Hol -- ler hol -- ler. Hip hip.
 Hell of hell of hip hip.
 Hal -- le -- lu -- ja hip hip.
 Hal -- le -- lu -- ja hip hip. What
 
 Here ’n’ I a 
 Yeah I I I I I a
 Awh ah an
 
 High, why I ever
 Why I ever lie yeah
 Hey it’s such a game we are play -- ing. Yeah. Hey.
 
 Hey hey hey hip hip by us say what by us say what said tru all of my yo -- del 
 Hip hip my yo -- del goin’ up.
 

 
 In that spot, that mind that got de -- sire less
 Be on that
 Great land that feels
 Bet -- ter than hea -- ven e -- ver
 Soft -- ly as a land -- ing fea -- ther
 Gent -- ly by a well ad -- roit sweet nim -- ble fin -- ger of sky
  
 Rol -- ling and a tum- ba- ling a --
 round a -- bout a -- bove a mo -- ther
 Rea -- dy e -- ver. A -- ny wea -- ther.
 Guided by complete surrender.
 
 Man and wo -- man, hum -- an -- kind we
 All got deep and deep -- er in -- to trou -- ble
 Mmm Build that build that Ba -- bel Tower up
 
 Za ba bap za ba bap
 Za ba bap ba ba ba bap
 Ba ba bap ba ba bap ba ba bap
 Ba ba ba bop bop bop bap ba bap
 
 High -- er high -- er high -- er high -- er 
 High -- er high -- er wow!
 

 
 Got it in our blood, papa. Good, papa.
 Ma was in the wood cut pile up up far
 Thought I un -- der -- stood what the thought was for
 How ‘bout by lunch I for -- get it?
 
 Eve -- ry day I wake up
 So far. What for?
 But I lie a -- wake a lot late ask not what for
 Walk -- ing on a wide
 One a wide foot-pound -- ed ground net -- work of trails
 
 Eve -- ry time we think that we’ve found some peace and some
 Peace and some peace and se -- cu -- ri -- ty
 Well bud -- dy babe you can bet bet bet that the me -- di -- a.
 Au -- di -- o, vi -- de -- o, bill -- board and ra -- di -- o
 Grab -- bing a -- hold of my mind and my wal -- let
 Ben -- ny af -- ter Ben -- ny and a
 Bil -- lion and a bil -- lion and a
 Zil -- lion you would think that we’re buy -- ing
 La la la la la life af -- ter life

}


harmonies = \chordmode {
	g2. | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min |
	
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	
	g | g | a | a |
	g | g | e:min | e:min 
	
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
  	\new Voice = "voice" { \melody  }
  	\new Lyrics \lyricsto "verseOne" \firstVerse_text
  	\new Lyrics \lyricsto "chorus" \chorus_text
  	\new Lyrics \lyricsto "verse" \moreVerse_text
  >>
  
  \layout { }
  \midi { }
}

%Additional Notes
\markup \fill-line {
\column {
" "
" "
" "
" "
" "
  }
}
