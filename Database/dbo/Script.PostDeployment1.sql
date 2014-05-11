/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
SET IDENTITY_INSERT [dbo].[Artist] ON 

GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (1, N'A-ha')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (2, N'Adele')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (3, N'Amy Winehouse')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (4, N'Andres Calamaro')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (5, N'Arctic Monkeys')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (6, N'Babasonicos')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (7, N'Band of Horses')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (8, N'Band of Skulls')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (9, N'Beatles')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (10, N'Beegees')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (11, N'Ben Harper')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (12, N'Bersuit')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (13, N'Bill Withers')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (14, N'Bob Marley')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (15, N'Bryan Adams')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (16, N'Cake')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (17, N'Cat Stevens')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (18, N'Coldplay')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (19, N'Colin Hay')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (20, N'Counting Crows')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (21, N'Cranberries')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (22, N'Crowded House')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (23, N'Eagle Eye Cherry')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (24, N'Eagles')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (25, N'Eels')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (26, N'Elbow')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (27, N'Eric Clapton')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (28, N'Evermore')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (29, N'Flaming Lips')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (30, N'Flight of the Conchords')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (31, N'Foo Fighters')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (32, N'George Michael')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (33, N'Gin Wigmore')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (34, N'Gomez')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (35, N'Gotye')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (36, N'Green Day')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (37, N'Incubus')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (38, N'Intoxicados')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (39, N'Jack Johnson')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (40, N'Jason Mraz')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (41, N'Javier Calamaro')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (42, N'Jeff Bridges')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (43, N'Johnny Nash')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (44, N'Juanes')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (45, N'Kevin Johansen')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (46, N'Kings of Leon')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (47, N'Mana')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (48, N'Maroon 5')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (49, N'Midnight Youth')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (50, N'Neil Young')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (51, N'Oasis')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (52, N'Opshop')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (53, N'Pearl Jam')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (54, N'Pete Murray')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (55, N'Pink')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (56, N'Red Hot Chili Peppers')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (57, N'Robbie Williams')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (58, N'Simple Minds')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (59, N'Sublime')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (60, N'Tenacious D')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (61, N'The Black Keys')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (62, N'The Killers')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (63, N'The Kinks')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (64, N'The Lumineers')
GO
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (65, N'U2')
GO
SET IDENTITY_INSERT [dbo].[Artist] OFF
GO
SET IDENTITY_INSERT [dbo].[Tab] ON 

GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (1, N'matt@a4tab.net', 1, N'Take On Me', N'A-ha - Take On Me
A4 tab from http://www.a4tab.net

INTRO   Bm  E  A  D C#m (x2) Bm  E Bm E

VERSE

Bm           E   A                 D      C#m
Talking Away     I don''t know what i''m to say

I''ll say it anyway Todays another day to find you

Bm          E   F#m                     D
Shying away      I''ll be coming for your love O.K.

CHORUS

A    C#m     F#m   D
Take On       Me   (Take on me)

Take me      on   (Take on me)

A    C#m     F#m  D           A    C#m  D E
I''ll be      gone in a day or two


VERSE
So, needless to say I''am odds and ends But that''s me, 
stumbling away Slowly learning that life is O.K.
Say after me It''s no better to be safe than sorry

REPEAT CHORUS

INSTRUMENTAL

C#m G C#m G Bm E NC

VERSE

The things that you say Is it life or just a play
My worries away You''re all the things I''ve got to remember
You shying away I''ll be coming for you anyway

REPEAT CHORUS', CAST(0x0000A328012D25A0 AS DateTime), CAST(0x0000A328012D25A0 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (2, N'matt@a4tab.net', 2, N'Rolling in the Deep', N'ADELE - ROLLING IN THE DEEP
A4 tab by Matt Frear http://www.a4tab.net

VERSE
C5                 G5
There''s a fire starting in my heart
A#5                          G5                       A#5 
Reaching a fever pitch, it''s bringing me out the dark
Finally I can see you crystal clear
Go ahead and sell me out and I''ll lay your shit bare

See how I leave with every piece of you
Don''t underestimate the things that I will do
There''s a fire starting in my heart
Reaching a fever pitch
And its bring me out the dark

PRE-CHORUS
Ab5          Bb5                G5
The scars of your love remind me of us
              Ab5
They keep me thinking that we almost had it all
The scars of your love they leave me breathless
I can''t help feeling

CHORUS
G5                   C5      Bb5                 Ab5          Bb5
We could have had it aaaaaaaaaall Rolling in the deep
You had my heart inside of your hand And you played it To the beat
(CHORUS BACKING VOCALS)
(You''re gonna wish you, never had met me, 
tears are gonna fall, rolling in the deep)

VERSE
Baby I have no story to be told
But I''ve heard one of you And I''m gonna make your head burn
Think of me in the depths of your despair
Make a home down there As mine sure won''t be shared

REPEAT PRECHORUS (with chorus backing vocals)
REPEAT CHORUS

KEY CHANGE
Bb5                  Ab5      Bb5                C5    Bb5
We could have had it aaaaaaaaaall Rolling in the deeeeeep
                    Ab5                       Bb5
You had my heart inside of your hand But you played it with a beating

VERSE (no chords, clapping)
Throw your soul through every open door
Count your blessings to find what you look for
Turned my sorrow into treasured gold
You pay me back in kind and reap just what you sow

(CHORUS CHORDS with backing vocals)
We could have had it all
We could have had it all It all, it all it all,

REPEAT CHORUS
REPEAT CHORUS
But you played it you played it you played it you played it to the beat', CAST(0x0000A328012D25A4 AS DateTime), CAST(0x0000A328012D25A4 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (3, N'matt@a4tab.net', 3, N'Valerie', N'AMY WINEHOUSE - VALERIE
A4 tab by Matt Frear www.a4tab.net

VERSE
         D#maj7                                           Fm7 
Well sometimes i go out by myself and i look across the water
And I think of all the things, What you''re doing 
and in my head i make a picture
 
CHORUS
      G# (high)                                Gm7 (high)
Cos since i''ve come on home , well my body''s been a mess
And i''ve missed your ginger hair and the way you like to dress 
           G#             Gm7                   A#7
Won''t you come on over stop making a fool out of me
                            D#maj7     Fm7
Why won''t you come on over Valerie? Valerie?
Valerie... Valerie

VERSE 2

Did you have to go to jail, put your house up for sale, 
Did you get a good lawyer?
I hope you didnt catch a tan I hope you find the right man 
who''ll fix it for ya
Are you shoppin'' anywhere, Changed the colour of your hair,
are you busy? 
And did you have to pay the fine you were dodging all the time
are you still dizzy?
 
REPEAT CHORUS

REPEAT VERSE 1

REPEAT CHORUS', CAST(0x0000A328012D25A6 AS DateTime), CAST(0x0000A328012D25A6 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (4, N'matt@a4tab.net', 3, N'You Know I''m No Good', N'AMY WINEHOUSE - YOU KNOW I''M NO GOOD
A4 tab from www.a4tab.net

VERSE
Dm                          Gm   
 Meet you downstairs in the bar and hurt,   
     A7                          Dm   
Your rolled up sleeves and your skull t-shirt.   
Meet you downstairs in the bar and hurt,
Your rolled up sleeves in your skull t-shirt,
You say "what did you do with him today?",
And sniffed me out like I was Tanqueray,

Gm    
  ''Cause you''re my fella, my guy    
E7    
  Hand me your Stella and fly    
F    
By the time I''m out the door,    
    E7                A7   
You tear men down like Roger Moore

CHORUS
	Dm                Am    
	  I cheated myself,    
                E7    Am    
	Like I knew I would,				   
	  Dm              Am   
	I told you, I was trouble,   
	    E7               Am  			   
	You know that I''m no good.

VERSE
Upstairs in bed, with my ex boy, He''s in a place, but I can''t get joy,
Thinking on you in the final throes, This is when my buzzer goes,
Run out to meet you, chips and pita, You say "when we married", cos you''re not bitter,
"There''ll be none of him no more," I cried for you on the kitchen floor,   

REPEAT CHORUS

SOLO
Dm Am E7 Am (2X)
G|--------7~~-|-8p7--------|--------9~~-|-8p7--------|
D|-7-10-7-----|-----10-7~~-|-7-10-7-----|-----10-7~~-|

Sweet reunion, Jamaica and Spain, We''re like how we were again,
I''m in the tub, you on the seat, Lick your lips as I soak my feet,
Then you notice little carpet burn, My stomach drops and my guts churn,
You shrug and it''s the worst, Who truly stuck the knife in first

REPEAT CHORUS x2', CAST(0x0000A328012D25A8 AS DateTime), CAST(0x0000A328012D25A8 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (5, N'matt@a4tab.net', 4, N'Flaca', N'Andres Calamaro - Flaca

INTRO

e |---------------------------------------------------------------|
B |------------------------5--------------------------------------|
G |-7-4------4-8--4------4----4-------4-7-5-5-4-7--4-------4-7-4--|
D |----7-5-7-------7-5-7-------7-5-7----------------7-5-7-------5-|
A |---------------------------------------------------------------|
E |---------------------------------------------------------------| 

INTRO / CHORUS
G          Bm           Em      
Flaca, no me claves tus pu�ales 
       C               G             D
por la espalda tan profundo, no me duelen,
            G     D
no me hacen mal.

Lejos, en el centro de la tierra,
las raices del amor
donde estaban quedaran.

VERSE
Entre no me olvides me dej� nuestros abriles olvidados 
en el fondo del placard del cuarto de invitados,
eran tiempos dorados, un pasado mejor.

Aunque casi me equivoco y te digo poco a poco no me mientas,
 no me digas la verdad, no te quedes callada,
no levantes la voz, ni me pidas perdon.

Aunque casi te confieso que tambien he sido un perro compa�ero, 
un perro ideal que aprendio a ladrar 
y a volver al hogar para poder comer.

REPEAT CHORUS

OUTRO
e |---------------------------------------------------------------|
B |-----------------5--4-----7--5---------------------------------|
G |-----------5--4---------4------------4-7----4----4-7----4------|
D |-----4-5-7-----------------------5-7----------5-----------5-5--|
A |-5-7-----------------------------------------------------------|
E |---------------------------------------------------------------| 
', CAST(0x0000A328012D25AA AS DateTime), CAST(0x0000A328012D25AA AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (6, N'matt@a4tab.net', 4, N'Te Quiero Igual', N'Andres Calamaro - Te Quiero Igual
Tab by Matt Frear www.a4tab.net

   G            D             Em            C
Te quiero, pero te llevaste la flor y me dejaste el florero.
Te quiero, me dejaste las cenizas y te llevaste el cenicero.
Te quiero, pero te llevaste Marzo y te rendiste en Febrero.
  G        D         C  G/B  A  D
Primero, te quiero, igual.

Te quiero, te llevaste la cabeza, y me dejaste el sombrero.
Te quiero, pero te olvidaste Abril en el ropero, pero igual
Te quiero, no me gusta esperar, pero igual te espero.
  G        D         C  G/B  A  G
Primero, te quiero, igual.

Te quiero, me dejaste el florero!, y-te-llevaste-la-flor, pero igual
Te quiero, me dejaste el! vestido, y te llevaste el amor.
Te quiero, pero te olvidaste Abril, en el ropero.
  G        D         C  G/B  A  D
Primero, te quiero, i-gual.

C   G   C          G         C        G      D
No se si estoy despierto o tengo los ojos abiertos.
No se si estoy despierto o tengo los ojos abiertos.

(se que) Te quiero, no! se si estoy despierto o tengo los ojos abiertos
Se! que te quiero, y que me esperan mucho mas aeropuertos.
Te quiero, te llevaste la vela y! me dejaste el entierro.
  G        D         C  G/B  A  G
Primero, te quiero, igual.

(Play verse, with end on G)
Ahh   Ahh

(El d�a que me quieras no habr� m�s que armon�a, 
endulzar� sus cuerdas el p�jaro cantor, 
florecer� la vida y no existir� el dolor.

   G  D  Em  C x2

Te quiero, pero te llevaste la flor y me dejaste el florero.
Te quiero, me dejaste las cenizas y te llevaste el cenicero.
Te quiero, pero te llevaste Marzo y te rendiste en Febrero.
Primero, te quiero, igual.', CAST(0x0000A328012D25AB AS DateTime), CAST(0x0000A328012D25AB AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (7, N'matt@a4tab.net', 4, N'Tuyo Siempre', N'Andres Calamaro - Tuyo Siempre
Tab by Matt Frear www.a4tab.net

          Em                  Am
Si alguna vez no me vuelven a ver
         D                          G
porque a m�, como a todos, se me olvida
     B                         Em
algo va a quedar adentro tuyo siempre
     C           B       Em
algo que yo te dej� alguna vez

No importa si no ven�s conmigo
este viaje es mejor hacerlo solo
yo te voy a recordar todos los d�as
porque un amor as� nunca se olvida

        Am             D            G            C
Te seguir�a por todas partes y volver�a a la ciudad
       F               B
si me das otra oportunidad

de volver a empezar mejor que antes
quiero darte cada uno de mis instantes
nunca m�s voy a mentir de nuevo
porque no voy a olvidarte nunca m�s

Em,Am,D,G,B,Em,C,B,Em

Y volver�a por todas partes para encontrarte y preguntarte
si me das otra oportunidad

Va a ser mejor! que te intente olvidar
porque queda mucho tiempo por delante
algo va a quedar adentro tuyo siempre
algo que yo te deje alguna vez
       C             B          Em
porque no voy a olvidarte nunca m�s
       C        B         Em   C     Em
porque yo no te voy a olvidar!', CAST(0x0000A328012D25AC AS DateTime), CAST(0x0000A328012D25AC AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (8, N'matt@a4tab.net', 5, N'I Bet You Look Good on the Dancefloor', N'ARCTIC MONKEYS - I BET YOU LOOK GOOD ON THE DANCEFLOOR
A4 tab by Matt Frear www.a4tab.net

INTRO
F# (E) F#

C#   B    A     F#

VERSE
C#   B          E     F#
Stop making the eyes at me, I''ll stop making my eyes at you.
What it is that surprises me is that I don''t really want you to

And your shoulders are frozen (as cold as the night)
Oh, but you''re an explosion (you''re dynamite)
Your name isn''t Rio, but I don''t care for sand and lighting
The fuse might result in a bang b-b-bang-go

CHORUS
F#                              A
I bet that you look good on the dance floor
                                       E(high)
I don''t know if you''re looking for romance or...
                               F#(high)
Don''t know what you''re looking for
F#                                     A
I said I bet that you look good on the dance floor
                   E(high)                C#
Dancing to electro-pop like a robot from 1984 Well, from 1984!

VERSE
I wish you''d stop ignoring me because it''s sending me to despair,
Without a sound yeah you''re calling me and I don''t think it''s very fair
That your shoulders are frozen (as cold as the night)
Oh, but you''re an explosion (You''re dynamite)
Your name isn''t Rio, but I don''t care for sand and lighting
The fuse might result in a bang with a bang-go

REPEAT CHORUS

BRIDGE
A                         E(high)           F#(high)
Oh, there ain''t no love, no Montagues or Capulets
Are just banging tunes and DJ sets and...
A                   E(high)             F#(low)  
Dirty dance floors, and dreams of naughtiness!

REPEAT INTRO

REPEAT CHORUS', CAST(0x0000A328012D25AE AS DateTime), CAST(0x0000A328012D25AE AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (9, N'matt@a4tab.net', 5, N'Mardy Bum acoustic', N'ARCTIC MONKEYS - MARDY BUM (Acoustic - Live at Glastonbury 2013)
A4 tab by Matt Frear

VERSE
C              E
Now then Mardy Bum 
           F
I see your frown
              Em               Dm          G               C
And it''s like looking down the barrel of a gun And it goes off
And out come all these words 
Oh there''s a very pleasant side to you 
A side I much prefer It''s one that 

CHORUS
F                 G
laughs and jokes around
         C              G           
Remember cuddles in the kitchen Yeah, 
          Am           G
to get things off the ground And it was 
up, up and away 
Oh, but it''s right hard to remember 
That on a day like today when you''re all 
argumentative And you''ve got the face on

VERSE
Well now then Mardy Bum
Oh I''m in trouble again, aren''t I? I thought as much
Cause you turned over there
Pulling that silent disappointment face 
The one that I can''t bear Why Can''t we 

REPEAT CHORUS

BRIDGE
E                    F
Yeah I''m sorry I was late Well I missed the 
train And then the traffic was a state And I 
can''t be arsed to carry on in this debate That reoccurs, 
oh when you say I don''t care Well of course I do, 
       G
yeah I clearly do!

SOLO (play VERSE)

REPEAT CHORUS', CAST(0x0000A328012D25AF AS DateTime), CAST(0x0000A328012D25AF AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (10, N'matt@a4tab.net', 5, N'Riot Van', N'ARCTIC MONKEYS - RIOT VAN

   Dmaj7    C#m7    Bm7      A       E      E6
|----2-------4-------2-------0-------0-------0----|
|----2-------5-------3-------2-------0-------2----|
|----2-------4-------2-------2-------1-------1----|
|----0-------6-------4-------2-------2-------2----|
|----x-------4-------2-------0-------2-------2----|
|----x-------x-------x-------x-------0-------0----|

VERSE
              Dmaj7 C#m7
Up rolled the riot van
   Bm7                              Dmaj7 C#m7
And sparked excitement in the boys
   Bm7                          Dmaj7 C#m7
But the policemen look annoyed
   Bm7                                    Dmaj7 C#m7 Bm7
Perhaps these are ones they should avoid

A                          C#m7                         Bm7          E  E6  E
They got a chase last night from men with truncheon’s dressed in hats
A                             C#m7                              Bm7
They didn’t do that much wrong, still ran away though for the laugh
                   E  E6  E
just for the laugh


Please just stop talking
Because they won’t find us if you do
Oh those silly boys in blue
Well they won’t catch me and you

Have you been drinking son, you don’t look old enough to me
I’m sorry officer is there a certain age you’re supposed to be?
nobody told me

Up rolled the riot van
And these lads just wind the coppers up
Ask why they don’t catch proper crooks
Get their address and their name’s took
But they couldn’t care less

SOLO
|---------------------------------|-----------------------------------|
|---------------------------------|-----------------------------------|
|---------------------------------|--------------------------4/9--\---|
|-----------------9\4-----4\2-----|-----------------4/11--------------|
|----0-----9\4--------------------|----0-----9\4----------------------|
|---------------------------------|-----------------------------------|

He got thrown in the riot van
And all the coppers kicked him in
And there was no way he could win
Just had to take it on the chin', CAST(0x0000A328012D25B0 AS DateTime), CAST(0x0000A328012D25B0 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (11, N'matt@a4tab.net', 6, N'El colmo', N'BABASONICOS - El colmo
Tab by Mariano Romero www.a4tab.net

REFERENCIAS:
/  slide

INTRODUCCION:
GUITARRA 1
EI---4-----2------4-----2---------5-----4-------5-----4----------Il
BI-----2------------2---------------3-------------3--------------Il
GI------------------------------------4-------------4------------Il
DI-------4------------4------------------------------------------Il
AI---------------------------------------------------------------Il
EI---------------------------------------------------------------Il  
 
GUITARRA 2
EI--------------12-------------12-------------12-------------12--Il
BI---------9/10-----------9/10-----------9/10-----------9/10-----Il
GI---------------------------------------------------------------Il
DI---------------------------------------------------------------Il
AI---------------------------------------------------------------Il
EI---------------------------------------------------------------Il 

VERSE
Fm#                             Bm
Quiero cantar al abismo y a la muerte estafar

   Fm#
Volvamos a cero, borremoslo todo 

       D                                      E
y festejemos si ma�ana me despierto solo y feliz

CHORUS
        A                  Fm#       D                    E         
Por eso cancion llevame lejos, donde nadie se acuerde de mi,

       Cm#                 Fm#                  D         E
Quiero ser el murmullo de alguna ciudad que no sepa quien soy.


Yo daria hasta mi sue�o Por ver la farsa fallar
Perdamos el centro, Quememoslo todo
Y pediremos que ma�ana Nadie venga a hacerme cumplir

REPEAT CHORUS

Lo cambio todo por el don Que hace a las mujeres reir
El mundo de ellas Me hunde en sus huellas
Y roguemos que ma�ana Me convierta en otro infeliz

REPEAT CHORUS

REPEAT CHORUS', CAST(0x0000A328012D25B0 AS DateTime), CAST(0x0000A328012D25B0 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (12, N'matt@a4tab.net', 6, N'Puesto', N'Babasonicos - Puesto
Tab by Matt Frear www.a4tab.net

A# G A# A

F A Dm A

F          A            Dm           A
Que casualidad fue encontrarte justo ac�,
Yo tan puesto,   vos tan apuesta
Que sofisticado fue invitarte a coquetear,
Yo tan lento,   vos tan regia,

     A#      G          A#   A
Sos hermosa     sos hermosa

Que barbaridad haber tenido que esperar
Para vernos      de tan cerca
Desnud�monos y no digamos nada m�s,
En silencio      tus caricias

Son hermosas     son hermosas y el mundo sonr�e conmigo.

D  C   F  G   D  C  F  G

D              C            F          G         D C F G
Todo lo que pueda arreglar hoy lo dejare para ma�ana.
Todo lo que pueda arreglar hoy lo dejare para ma�ana.

A# G A# A

F A Dm A    F A Dm A

Que casualidad fue encontrarte justo ac�,
Yo tan puesto,     vos tan apuesta
Que atrevido fui al iniciarte en la verdad
Yo radiante,     vos tan dispuesta

Soy hermoso      soy hermoso
Soy hermoso      soy hermoso   Y el mundo sonr�e conmigo.

Todo lo que pueda arreglar hoy lo dejare para ma�ana
Todo lo que pueda arreglar hoy lo dejare para ma�ana
Todo lo que pueda arreglar hoy lo dejare para ma�ana
Todo lo que pueda arreglar hoy lo dejare para ma�ana.', CAST(0x0000A328012D25B2 AS DateTime), CAST(0x0000A328012D25B2 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (13, N'matt@a4tab.net', 7, N'No one''s gonna love you', N'BAND OF HORSES - NO ONE''S GONNA LOVE YOU
A4 tab by Matt Frear www.a4tab.net
Capo 1st fret

C G Em Em  4x

VERSE
C                    G         Em          C     G       Em
It''s looking like a limb torn off, or altogether.. just taken apart
We''re reeling through an endless fall We are the ever-living 
ghost of what once was

PRE-CHORUS
     F	     Dm             C                 G
But no one.. is ever gonna love you more than I do
F	             C                G
No one''s gonna love you more than I do

VERSE
And anything to make you smile,  It is a better side.. of you to admire
But they should never take so long, Just to be over them.. 
back to another one

REPEAT PRE-CHORUS

CHORUS
Em                        F         G
But someone, They coulda warned you
       C                            Em          
When things start splitting at the seams to know
F                  G
The whole thing''s tumbling down
C		                          Em            F  G
Things start splitting at the seams to know

C                                 Em
If things start splitting at the seams to know,
F              G    C    Em  F  G
It''s tumbling down hard

VERSE
And anything to make you smile, you are the ever-living ghost of.. 
what once was
Never want to hear you say, That you''ll be better off.. 
and you like it that way

REPEAT PRE-CHORUS

REPEAT CHORUS
', CAST(0x0000A328012D25B3 AS DateTime), CAST(0x0000A328012D25B3 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (14, N'matt@a4tab.net', 8, N'Honest', N'BAND OF SKULLS - HONEST
Tab by Matt Frear www.a4tab.net

Chords are all bar chords

VERSE

Dm Dsus2 Dm Dsus2                        F  F/E        G
You gotta be honest You gotta be guarded Sure I''m gonna say 
Right on the inside, that is the hardest, the hardest game to play. 
You sorted it all out and managed to slip through the night into the day. 
Life and the soul do you ever get lonely? 
C                 G
I''m goin'' take you on. 

CHORUS
Dm                                                       Am
Found the way to understand the things to understand the things I''m learning. 
Gm                              Dm
Found the way to understand the time you''re burning. 
Found the way to understand the things I''m learning. 
Found the way to understand the time you''re burning. 

REPEAT VERSE ONE

REPEAT CHORUS 

SOLO (repeat verse chords)
I''m goin'' take you on. 

You gotta be honest 
You gotta be guarded 
Sure I''m gonna say. 
Right on the inside that is the hardest, the hardest game to play.
', CAST(0x0000A328012D25B4 AS DateTime), CAST(0x0000A328012D25B4 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (15, N'matt@a4tab.net', 8, N'Lay My Head Down', N'BAND OF SKULLS - LAY MY HEAD DOWN

INTRO
e|--------------------------------------------------
B|--------------------------------------------------
G|--9-7--9-7----------------------------------------
D|------------10-8-7--------------------------------
A|--------------------10-8--------------------------
E|--------------------------------------------------

VERSE
Dm                    Am
Was I asleep did you save me from disaster
Wake up and tell me I''m just imagining
                                                      Gm    Gm Am A#
Thought I would brave it cause I don''t wanna live in doubt

Dreamt of escape but I''m nowhere near the feeling
Fell from a high but I never hit the ground
Can''t hold the weight of your words heavy on my mind

CHORUS
Dm                                    Am
So I''m gonna lay my head down on your shoulder and run,
         Gm                    Am  A#
Keep it away from my soul, I''m not holding it all
I''m gonna lay my head down on your shoulder and run,
All that we know will get old, and with you I''ll unfold
I''m gonna lay my head down

REPEAT INTRO x4

Open your hand I know your heart line''s the deepest
You will replace it a new love you will find
Say all you like but I''ll make it better on my own

REPEAT CHORUS

HEAVY SOLO

REPEAT CHORUS
', CAST(0x0000A328012D25B4 AS DateTime), CAST(0x0000A328012D25B4 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (16, N'matt@a4tab.net', 9, N'Hey Jude', N'BEATLES - HEY JUDE
A4 Tab by Matt Frear http://www.a4tab.net

VERSE 
F                     C  
Hey Jude dont make it bad
            C7sus4   C7      F
Take a sad song and make it better
  Bb                          F    
Remember to let her into your heart 
                  C7               F
and then you can start to make it better

Hey Jude dont be afraid 
You were made to go out and get her
The minute you let her under your skin
Then you begin to make it better

CHORUS
F                        Bb
And anytime you feel the pain 
    Bb/A    Gm         Gm7       C
hey jude refrain dont carry the world 
           F         Fmaj7 F7
upon your shoulders

For now you know that its a fool 
who plays it cool by making his world  
a little colder

    F6 F7     C  Csus4  CaddG
Da da da da   Da da da da  Da
 
Hey Jude dont let me down 
You have found her now go and get her
Remember to let her into you heart 
then you can start to make it better

So let it out and let it in 
Hey Jude begin your waiting for someone to 
perform with

And dont you know that its just you 
Hey jude you''ll do the movement you need 
is on your shoulders

Da da da da  Da da da da  Da

REPEAT FIRST VERSE

F        Eb
Na na na na na na na
Bb              F
Na na na na Hey Jude', CAST(0x0000A328012D25B6 AS DateTime), CAST(0x0000A328012D25B6 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (17, N'matt@a4tab.net', 10, N'To Love Somebody', N'BEEGEES - TO LOVE SOMEBODY
A4 Tab by Matt Frear http://www.a4tab.net

INTRO
A  G  D  A

VERSE
A              
There''s a light 
Bm
A certain kind of light
D                  A
That never shone on me
G                 A 
I want my life to be
           E
Lived with you
D
Lived with you

There''s a way 
everybody say
To do each and every little thing
But what does it bring
If I ain''t got you, ain''t got you

CHORUS
A                        E
You don''t know what it''s like, 
D                             A
Baby You don''t know what it''s like
         E               D
To love somebody To love somebody
          A
The way I love you

In my brain
I see your face again
I know my frame of mind
You ain''t got to be so blind
And I''m blind, so so blind

I''m a man
can''t you see What I am
I live and I breathe for you
But what good does it do
If I ain''t got you, ain''t got 

REPEAT CHORUS x3', CAST(0x0000A328012D25B7 AS DateTime), CAST(0x0000A328012D25B7 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (18, N'matt@a4tab.net', 11, N'Steal My Kisses', N'BEN HARPER - STEAL MY KISSES
A4 tab by Matt Frear http://www.a4tab.net

Whole song is G C D with slidey bits in between.
Bracketed chords are optional.

VERSE
G                             C
I pulled into Nashville, Tennessee
(C# slide) D                         (C)  G
but you wouldn''t even come around to see me

And since your headin'' up to Carolina
You know I''m gonna be right there behind you

CHORUS

Cause I always have to steal my kisses from you
Always have to steal my kisses from you
Always have to steal my kisses from you
Always have to steal my kisses from you

Now I love to feel that warm southern rain
just to hear it fall is the sweetest sounding thing
And to see it fall on your simple country dress 
it''s like heaven to me I must confess

REPEAT CHORUS

BRIDGE
G  F (slide) G

Now I''ve been hangin around you for days
but when I lean in you just turn your head away
Oh no you didn''t mean that
She said I love the way you think but I hate the way you act

REPEAT CHORUS no guitar

REPEAT CHORUS', CAST(0x0000A328012D25B9 AS DateTime), CAST(0x0000A328012D25B9 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (19, N'matt@a4tab.net', 12, N'El Tiempo no para', N'Bersuit - El Tiempo no para
Tab by Matt Frear www.a4tab.net

INTRO
Em  D slide E

Em
Disparo contra el sol con la fuerza del ocaso,
Am                             D
mi ametralladora est� llena de magias,
        Em
pero soy solo un hombre m�s.

Cansado de correr en la direcci�n contraria,
sin podio de llegar y mi amor me corta la cara,
porque soy s�lo un hombre m�s.

Pero si pens�s que estoy derrotado,
quiero que sepas que me la sigo jugando,
porque el tiempo, el tiempo no para.

Unos d�as s�, otros no, estoy sobreviviendo sin un rasgu��n,
por la caridad de quien me detesta!

CHORUS
G                          Am                                     D  D#
Y tu cabeza est� llena de ratas, te compraste las acciones de esta farsa
              C
y el tiempo no para.

Yo veo el futuro repetir el pasado veo un museo de grandes novedades
y el tiempo no para
         C B Am G Em
no para, no.


Yo no tengo fechas para recordar, mis d�as se gastan de par en par
buscando un sentido a todo esto.

Las noches de fr�o es mejor no nacer,
las de calor se escoge matar o morir,
y as� nos hacemos Argentinos

Nos tildan de ladrones, maricas, faloperos,
y ellos sumergieron un pa�s entero,
pues as� se roban mas dinero!

REPEAT CHORUS

SOLO (play chords of verse)

Unos d�as s�, otros no, estoy sobreviviendo sin un rasgu��n,
por la caridad de quien me detesta!

REPEAT CHORUS
', CAST(0x0000A328012D25BB AS DateTime), CAST(0x0000A328012D25BB AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (20, N'matt@a4tab.net', 13, N'Ain''t No Sunshine', N'BILL WITHERS - AIN''T NO SUNSHINE
A4 Tab by Matt Frear http://www.a4tab.net

VERSE
                           Am      Em   G   Am
Ain''t no sunshine when she''s gone
It''s not warm when she''s away
                              Em
Ain''t no sunshine when she''s gone
                       Dm                     Am
And she always gone too long anytime she goes away

Wonder this time where shes gone
Wonder if she''s gone to stay
Ain''t no sunshine when she''s gone
And this house just ain''t no home
Anytime she goes away 

CHORUS
Am
And I know I know I know I know etc
           Em
I ought to leave the young thing alone
          Dm
Ain''t no sunshine when she''s gone

Ain''t no sunshine when she''s gone
Only darkness every day
Ain''t no sunshine when she''s gone
And this house just ain''t no home
Any time she goes away

Any time she goes away x3
', CAST(0x0000A328012D25BC AS DateTime), CAST(0x0000A328012D25BC AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (21, N'matt@a4tab.net', 14, N'3 Little Birds', N'BOB MARLEY - 3 LITTLE BIRDS
A4 Tab by Matt Frear http://www.a4tab.net

CHORUS 
      A      
Don''t worry about a thing
      D                               A
Cause every little thing is gonna be alright
Singin'' don''t worry about a thing
Cause every little thing is gonna be alright

VERSE
              A
Rise up this morning
                 E
Smile with the rising sun
             A
Three little birds
           D
Sit by my doorstep
          A
Singing sweet songs
            E
Of melodies pure and true
         D                     A
Singin'' this is my message to you-ou-ou

REPEAT CHORUS

REPEAT VERSE

REPEAT CHORUS', CAST(0x0000A328012D25BC AS DateTime), CAST(0x0000A328012D25BC AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (22, N'matt@a4tab.net', 14, N'No Woman No Cry', N'BOB MARLEY - NO WOMAN NO CRY
A4 Tab by Matt Frear http://www.a4tab.net

CHORUS
C   C/B     Am    F 
No woman no cry  
 C  F        C     G
No woman no cry
No woman no cry
No woman no cry

VERSE
C       C/B     Am              F
Said I remember when we used to sit
In the government yard in Trenchtown.
Oba, Observing the hypocrites
As they would mingle with the good people we meet
Good friends we had oh good friends we''ve lost
along the way
In this bright future you can''t forget your past
So dry your tears I say        And

CHORUS
No woman no cry
No woman no cry
Here Little darlin'' don''t shed no tears
No woman, no cry

Said I remember when we used to sit
In the government yard in Trenchtown.
And then Georgie would make a firelight
As it was love would burn in through the night.
Then we would cook cornmeal porridge
of which I''ll share with you.
My feet is my only carriage
So, I''ve got to push on through, but while I''m gone
Ev''ry thing''s gonna be alright. Ev''ry thing''s gonna be alright.
Ev''ry thing''s gonna be alright. Ev''ry thing''s gonna be alright.

REPEAT CHORUS (Here Little sister, don''t shed no tears)

REPEAT SECOND VERSE

REPEAT CHORUS (Oh, my Little darlin'', don''t shed no tears)
', CAST(0x0000A328012D25BD AS DateTime), CAST(0x0000A328012D25BD AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (23, N'matt@a4tab.net', 15, N'Heaven', N'Bryan Adams - Heaven
A4 tab from http://www.a4tab.net

[C]Oh, [Am]thinking about all our [G]younger years
There was [Dm]only you and [Am]me,
we were [Bb]young and wild and [G]free

[C]Now, [Am]nothing can take you a[G]way from me
We''ve been [Dm]down that road be[Am]fore
But that''s [Bb]over now, you keep me [G]comin'' back for more

{start_of_chorus}
[F]Baby you''re [G]all that I [Am]want
When you''re [C]lying here in my [F]arms
[F]I''m finding it [G]hard to be[Am]lieve we''re in [G]heaven

[F]And love is [G]all that I [Am]need
And I [C]found it here in your [F]heart
[F]It isn''t too [G]hard to [Am]see we''re in [G]heaven

[C]Oh, [Am]once in your life you [G]find someone
Who will [Dm]turn your world a[Am]round
Bring you [Bb]up when you''re feeling [G]down

[C]Yeah, [Am]nothing could change what you [G]mean to me
Oh there''s [Dm]lots that I could [Am]say
But just [Bb]hold me now, ''cause our [G]love will light the way

chorus

[Dm]I''ve been waiting for so [F]long
For something to [C]arrive
For love to come a[G]long

[Dm]Now our dreams are coming [F]true
Through the good times and the [C]bad
Yeah, I''ll be [G]standing there by you
', CAST(0x0000A328012D25BF AS DateTime), CAST(0x0000A328012D25BF AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (24, N'matt@a4tab.net', 16, N'I Will Survive', N'CAKE - I WILL SURVIVE
A4 Tab by Matt Frear www.a4tab.net

   Am			Dm
At first I was afraid I was petrified,
                  G     				        C
I kept thinking I could never lived without you by my side,
                  F				B
but then I spent so many nights thinking how you''ve done me wrong.
           E			
I grew strong. I learned how to get along.

So you''re back from outer space. 
I just walked in to find you here without that look upon your face
I should have changed my fucking lock,
I would have made you leave your key 
If I had known for just one second you be back to bother me.

CHORUS

Oh now go walk out the door
Just turn around you''re not welcome anymore
Weren''t you the one who tried to break me with desire
Did ya think I''d crumble
Did ya think I''d lay down and die

Oh not I, I will survive
Yeah as long as I know how to love
I know I''ll be alive
I''ve got all my live to live
I''ve got all my love to give
I will survive I will survive yeah yeah

SOLO

It took all the strength I had just not to fall apart
I''m trying hard to mend the pieces of my broken heart
Oh I spent so many nights Feeling sorry for myself
I used to cry but now I hold my head up high

And you''ll see me with somebody new
I''m not that stupid little person still in love with you
And so you thought you''d just drop by
And you expect me to be free but now I''m saving
All my loving for someone who''s loving me

REPEAT CHORUS', CAST(0x0000A328012D25C0 AS DateTime), CAST(0x0000A328012D25C0 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (25, N'matt@a4tab.net', 17, N'Father and Son', N'CAT STEVENS - FATHER AND SON
A4 Tab by Matt Frear http://www.a4tab.net

INTRO: G  C  riff: (E----3----5--) rpt 3 times
                   (B--0----0----)

VERSE 1
         G              Bm7             C                 Am7
It''s not time to make a change, just relax and take it easy
             G                 Em
You''re still young that''s your fault
           Am               Am7 D
there''s so much you have to know

Find a girl, settle down, if you want to, you can marry
Look at me, I am old, but I''m happy

I was once like you are now, and I know that its not easy
to be calm, when you''ve found something going on

But take your time, think a lot, why think of everything you''ve got
             G               Em               D          G
For you will still be here tomorrow, but your dreams may not

REPEAT INTRO RIFF

How can I try to explain?  when I do he turns away again
it''s always been the same, same old story

From the moment I could talk I was ordered to listen
now there''s a way and I know I have to go away
      D      C       G 
and I know I have to go

REPEAT INTRO RIFF

SOLO

It''s not time to make a change, just sit down and take it slowly
You''re still young, that''s your fault, there''s so much you have
to go through

Find a girl, settle down, if you want to you can marry
Look at me, I am old, but I''m happy

All the times that I cried, keeping all the things I knew inside
It''s hard, but it''s harder to ignore it

If they were right, I''d agree, but it''s them they know, not me
Now there''s a way, and I know that I have to go away

I know I have to go', CAST(0x0000A328012D25C0 AS DateTime), CAST(0x0000A328012D25C0 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (26, N'matt@a4tab.net', 17, N'The First Cut', N'CAT STEVENS - THE FIRST CUT IS THE DEEPEST
A4 Tab by Matt Frear http://www.a4tab.net

VERSE
             G         D         C        D
I would have given you all of my heart
But there''s someone who''s torn it apart
And she''s taken all that I had
But, if you want, I''ll try to love again
Baby I''ll try to love again but I know

CHORUS

The first cut is the deepest
Baby, I know, the first cut is the deepest
When it comes to being lucky she''s cursed
When it comes to loving me she''s worse
But when it comes to being loved she''s first
That''s how I know
The first cut is the deepest
Baby, I know, the first cut is the deepest

I still want you by my side
Just to help me dry the tears that I''ve cried
And I''m sure gonna give you a try
And, if you want, I''ll try to love again
Baby I''ll try to love again but I know

REPEAT CHORUS

REPEAT CHORUS', CAST(0x0000A328012D25C1 AS DateTime), CAST(0x0000A328012D25C1 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (27, N'matt@a4tab.net', 17, N'Where Do The Children Play', N'CAT STEVENS - WHERE DO THE CHILDREN PLAY
A4 Tab by Matt Frear http://www.a4tab.net

MAIN RIFF
   D            G6
E ---2-0-2--0------0---0---------0-
B ---3-3-3----3------3---3-(3)-3---
G ---2-2-2-----------0---0---------
D -0-------------------------------
A ---------------------------------
E --------------3------------------

INTRO (PLAY VERSE, PRECHORUS, VERSE)

VERSE
          D         G6          D       G6
Well I think it''s fine, building jumbo planes
Or taking a ride on a cosmic train
Switch on summer from a slot machine
Yes, get what you want to if you want ''cos you can get anything

CHORUS
 Em7          Asus2             Em7            A
I know we''ve come a long way, we''re changing day to day
 Em7           A                     D   G6
But tell me, where do the children play?

VERSE
Well you roll on roads over fresh green grass 
For your lorryloads pumping petrol gas 
And you make them long, and you make them tough

PRECHORUS
           C            C/B                   C         C/B
But they just go on and on, and it seems you can''t get off 

REPEAT CHORUS

REPEAT INTRO

VERSE
When you crack the sky, scrapers fill the air 
Will you keep on building higher 
''til there''s no more room up there?

PRECHORUS
Will you make us laugh, will you make us cry?
Will you tell us when to live, will you tell us when to die?

REPEAT CHORUS (loudly)

OUTRO
Do doot do, do de do doot do
Do de do doot do do de do do', CAST(0x0000A328012D25C2 AS DateTime), CAST(0x0000A328012D25C2 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (28, N'matt@a4tab.net', 17, N'Wild World', N'CAT STEVENS - WILD WORLD
A4 Tab by Matt Frear http://www.a4tab.net

INTRO
La la la la la la la la la la ...

VERSE 1
Am            D7                  G
Now that i''ve lost every thing to you
            Cmaj7                  F
You say you wanna start something new
         Dm                       E
And it''s breaking my heart you''re leaving Baby I''m grieving

VERSE 2
But if you want to leave take good care
Hope you have a lot of nice things to wear
           Dm                          E   G7
But then a lot of nice things turn bad out there

CHORUS
C   G                Am   F
Ooh baby baby it''s a wild world
G                F             C
It''s hard to get by just upon a smile
Ooh baby baby it''s a wild world
G                F              C           D  E
I''ll always remember you like a child, girl

VERSE 3
You know i''ve seen a lot of what the world can do
And it''s breaking my heart in two
Because I never want to see you sad girl Don''t be a bad girl

VERSE 4
But if you want to leave take good care
Hope you make a lot of nice friends out there
But just remember theres a lot of bad everywhere

REPEAT CHORUS

REPEAT INTRO

Baby I love you

REPEAT VERSE 4

REPEAT CHORUS x2', CAST(0x0000A328012D25C3 AS DateTime), CAST(0x0000A328012D25C3 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (29, N'matt@a4tab.net', 18, N'Amsterdam', N'COLDPLAY - AMSTERDAM
A4 Tab by Matt Frear www.a4tab.net

This song doesn''t have any guitar, it''s all piano,
but these are the chords you can play.
Lyrics in "quotes" are in falsetto

Capo 1st fret

VERSE
D    A      Em           G  
Come on, oh my star is fading; And I swerve out of control
If I, if I''d only waited I''d not be stuck here in this hole

"Come here", oh my star is fading; And "I swerve" out of control
And "I swear" I waited and waited; "I''ve got to get out" of this hole

CHORUS
E                      G
But "time" is on your "side"
               D     A
It''s on your "side" now
Not pushing you "down" and all "around"
It''s no cause for concern

Come on, oh my star is fading; And "I see" no chance of release
And "I know" I''m dead on the surface But "I am screaming" underneath

REPEAT CHORUS

BRIDGE (same chords as chorus)
Stuck on the end of this ball and chain; 
And I''m on my way back down again
Stood on a bridge, tied to a noose;
Sick to the stomach
You can say what you mean But it won''t change a thing
I''m sick of the secrets
Stood on the edge Tied to a noose
And you came along And you cut me loose

You came along And you cut me loose
You came along And you cut me loose
', CAST(0x0000A328012D25C5 AS DateTime), CAST(0x0000A328012D25C5 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (30, N'matt@a4tab.net', 18, N'Don''t Panic', N'COLDPLAY - DON''T PANIC
A4 tab from http://www.a4tab.net

Intro: F chord with hammer on''s

E-1-1---1-1-0-h-1-1----1-1-- 
B-1-1---1-1-0-h-1-1----1-1--    
G-2-0-h-2-2-2---2-0-h-2-2--
D-3-3---3-3-3---3-3----3-3--                 X2
A-3-3---3-3-3---3-3----3-3--
E-1-1---1-1-1---1-1---1-1-

VERSE
Am                  C                   F (hammer like in intro)
Bones sinking like stones all that we fought for
Homes places we''ve grown all of us are done for

CHORUS
Dm                      Am                   Em
And we live in a beautiful world yeah we do yeah we do
Dm                          F
We live in a beautiful world

REPEAT VERSE 1

REPEAT CHORUS

INSTRUMENTAL (PLAY VERSE)

REPEAT CHORUS

INSTRUMENTAL (PLAY VERSE)
E|-----12--12-----|--------------------------
B|-s12---12-- etc-|------10-----------10-----
G|----------------|-9h10---10p9--9h10---10p9-

OUTRO (VERSE)
Oh all that I know there''s nothing here to run from
Cos yes everybody here''s got somebody to lean on

', CAST(0x0000A328012D25C5 AS DateTime), CAST(0x0000A328012D25C5 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (31, N'matt@a4tab.net', 18, N'In My Place', N'COLDPLAY - IN MY PLACE
A4 tab by Matt Frear a4tab.net

INTRO
e|--12------12---------------9----------9----------|
B|---------------------12---------12---------10----|
G|------9---------9--------------------------------|
D|-------------------------------------------------|
A|-------------------------------------------------|
E|-------------------------------------------------|

VERSE
A    F#m            C#m           E
In my place, in my place Were lines that I couldn''t change
I was lost, oh yeah

I was lost, I was lost Crossed lines I shouldn''t have crossed
I was lost, oh yeah

CHORUS
D         A             E
Yeah, how long must you wait for it?
Yeah, how long must you pay for it?
D         A             E         D          E
Yeah, how long must you wait for it, oh, for it?

VERSE
I was scared, I was scared Tired and under-prepared
But I''ll wait for it

If you go, if you go Leave me down here on my own
Then I''ll wait for you, yeah.

REPEAT CHORUS

REPEAT INTRO

Singing Please, please, please
Come back and sing to me
To me, to me

Come on and sing it out, now, now
Come on and sing it out to me, me
Come back and sing it

In my place, in my place
Were lines that I couldn''t change
And I was lost, oh yeah
Oh yeah', CAST(0x0000A328012D25C9 AS DateTime), CAST(0x0000A328012D25C9 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (32, N'matt@a4tab.net', 18, N'Yellow', N'COLDPLAY - YELLOW
A4 Tab by Matt Frear http://www.a4tab.net

INTRO
B  Bsus4 x2

INTRO LEAD
B|-7-7-7-etc-5-5-5-etc-|-11-9-|-2-0-|-7-5-|-4-

VERSE
B                                       F#
Look at the stars, look how they shine for you
                    E                        B
And everything you do Yeah, there were all yellow
 
I came along I wrote a song for you
And all the things you do And it was called yellow

So then I took my turn
                                              B    Bsus4  B
Oh what a thing to have done And it was all yellow

CHORUS
E        G#m           F#
Your skin oh yeah, your skin and bones
Turn into something beautiful
You know, you know I love you so
You know I love you so

REPEAT LEAD

VERSE
I swam across I jumped across for you
Oh what a thing to do Cos you were all yellow

I drew a line I drew a line for you
Oh what a thing to do And it was all yellow

CHORUS
Your skin, Oh yeah your skin and bones
Turn into something beautiful
And you know for you I''d bleed myself dry
For you I''d bleed myself dry

REPEAT LEAD
 
It''s true Look how they shine for you
Look how they shine for you
Look how they shine for
', CAST(0x0000A328012D25CB AS DateTime), CAST(0x0000A328012D25CB AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (33, N'matt@a4tab.net', 19, N'Overkill', N'COLIN HAY (MEN AT WORK) - OVERKILL

INTRO
D     G     D     G
 
D5                          D5/C#
I can''t get to sleep

C                      C/B
I think about the implications
Of diving in too deep
And possibly the complications
Especially at night
I worry over situations
I know I''ll be alright
Perhaps it''s just imagination

CHORUS
B5                          Asus4  A
Day after day it reappears

B5                                        Asus4         A
Night after night my heartbeat shows the fear

F#sus4         F#           G          Asus4  A
Ghosts appear and fade away    [Come back another day] <-- 2nd chorus                      

VERSE
Alone between the sheets
Only brings exasperation
It''s time to walk the streets
Smell the desperation

At least there''s pretty lights
And though there''s little variation
It nullifies the night
from overkill

REPEAT INTRO

VERSE (sung an octave higher)
I can''t get to sleep
I think about the implications
Of diving in too deep
And possibly the complications
Especially at night
I worry over situations
I know I''ll be alright
It''s just overkill

REPEAT CHORUS

Repeat �Ghosts appear and fade away� x3', CAST(0x0000A328012D25CB AS DateTime), CAST(0x0000A328012D25CB AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (34, N'matt@a4tab.net', 20, N'Mr Jones', N'COUNTING CROWS - MR JONES
A4 Tab by Matt Frear http://www.a4tab.net

INTRO
sha la la la la la yeah oh oh

VERSE
Am                    F
I was down at the New Amsterdam
Dm                  G
staring at this yellow haired girl
Am                           F             G
Mr. Jones strikes up a conversation with a black haired flamenco dancer
She dances while his father playes guitar.  
She''s suddenly beautiful
We all want something beautiful man I wish I was beautiful

So come dance this silence down through the morning.  sha la la la la la
Cut up Maria!  Show me some of them spanish dancing
Pass me a bottle, Mr. Jones 
Believe in me Help me believe in anything
Cause I want to be someone who believes yeah

CHORUS
C    F             G
Mr. Jones and me tell each other fairy tales and we
Stare at the beautiful women
"She''s looking at you.  Ah no, no she''s looking at me."
Smiling in the bright lights Coming through in stereo
When everybody loves you, you can never be lonely

I''m gonna paint my picture Paint myself in blue red black n grey
All of the beautiful colors are very very meaningful
(You know) Grey is my favorite color I felt so symbolic yesterday
If I knew Picasso I would buy myself a grey guitar and play

Mr. Jones and me look into the future Stare at the beautiful women
"She''s looking at you.  Uh, I don''t think so.  She''s looking at me."
Standing in the spotlight I bought myself a grey guitar
When everybody loves me, I will never be lonely

Am              F               Am              G
I will never be lonely Said I''m never gonna be lonely
I want to be a lion Everybody wants to pass as cats
We all want to be big big stars, but we got different reasons for that.
Believe in me because I don''t believe in anything
and I want to be someone to believe, to believe, to believe yeah

Mr. Jones and me stumbling through the barrio
Yeah we stare at the beautiful women
"She''s perfect for you, Man, there''s got to be Somebody for me."
I wanna be Bob Dylan 
Mr. Jones wishes he was someone just a little more funky
When everybody loves you, son, that''s just about as funky as you can be.

Mr. Jones and me staring at the video
When I look at the television, I want to see me staring right back at me.
We all want to be big stars, but we don''t know why, and we don''t know how.
But when everybody loves me, I wanna be just about as happy as I can be.
Mr. Jones and me, we''re gonna be big stars', CAST(0x0000A328012D25CC AS DateTime), CAST(0x0000A328012D25CC AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (35, N'matt@a4tab.net', 21, N'Zombie', N'CRANBERRIES - ZOMBIE
A4 Tab by Matt Frear http://www.a4tab.net

VERSE 
Em      C                G              D/F#
Another head hangs lowly Child is slowly taken
And the violence caused such silence Who are we mistaken
May you see, it''s not me it''s not my family
in your head, in your head they''re fighting

With their tanks, and their bombs and their bombs, and their guns
In your head, in your head They''re crying

CHORUS
In your head, in your head Zombie, Zombie, Zombie eh eh eh
What''s in your head, in your head Zombie Zombie Zombie eh eh eh oh

Another mother''s breaking heart is taken over
And the violence causes silence we must be mistaken
It''s the same old theme since 1916 in your head, 
in your head they''re still fighting 

With their tanks, and their bombs and their bombs, and their guns
In your head, in your head They''re dying

REPEAT CHORUS', CAST(0x0000A328012D25CF AS DateTime), CAST(0x0000A328012D25CF AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (36, N'matt@a4tab.net', 22, N'Better Be Home Soon', N'CROWDED HOUSE - BETTER BE HOME SOON
A4 Tab by Matt Frear http://www.a4tab.net

VERSE 
C               Am                      Em7     G
somewhere deep inside, something''s got a hold on you
and it''s pushing me aside, see it stretch on forever

CHORUS
           C     C7                      F
I know I''m right , for the first time in my life
             G                         C        G
that''s why I tell you: you''d better be home soon

stripping back the coats of lies and deception 
back to nothingness, like a week in the desert

REPEAT CHORUS

BRIDGE
Bb           D                      G
so don''t say no, don''t say nothing''s wrong
Bb                      A7               D
cause when you get back home maybe I''ll be gone

INSTRUMENTAL
C  Am   Em    G
C  Am   Em   

  F                         Bb
(when the lights go out ... on and they''re crowding in)

VERSE
it would cause me pain if we were to end it
but I could start again, you can depend on it

REPEAT CHORUS:

I know I''m right , for the first time in my life
             G                         Am7  D
that''s why I tell you: you''d better be home soon

OUTRO
             F    G                         C
that''s why I tell you: you''d better be home soon', CAST(0x0000A328012D25D0 AS DateTime), CAST(0x0000A328012D25D0 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (37, N'matt@a4tab.net', 23, N'Save Tonight', N'EAGLE-EYE CHERRY - SAVE TONIGHT
A4 Tab by Matt Frear http://www.a4tab.net

INTRO
do do do

VERSE
Am            F     C     G
Darling close the curtains 
''Cause all we need is candlelight 
You and me and a bottle of wine 
And I''ll hold you tonight 

Well we know I''m going away 
And how I wish, I wish it weren''t so 
So take this wine and drink with me 
Let''s delay our misery 

CHORUS
Save tonight, and fight the break of dawn 
Come tomorrow, tomorrow I''ll be gone 
Save tonight, and fight the break of dawn 
Come tomorrow, tomorrow I''ll be gone 

There''s a log on the fire 
And it burns like me for you 
Tomorrow comes with one desire 
To take me away 

It ain''t easy to say goodbye 
Darling please don''t start to cry 
''Cause girl you know I''ve got to go 
Lord I wish it wasn''t so 

REPEAT CHORUS

SOLO (REPEAT CHORUS CHORDS)

Tomorrow comes to take me away 
I wish that I, that I could stay 
But girl you know I''ve got to go 
And Lord I wish it wasn''t so 

REPEAT CHORUS

REPEAT CHORUS

REPEAT SOLO TO FADE', CAST(0x0000A328012D25D1 AS DateTime), CAST(0x0000A328012D25D1 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (38, N'matt@a4tab.net', 24, N'Hotel California', N'EAGLES - HOTEL CALIFORNIA
A4 Tab by Matt Frear http://www.a4tab.net

Bm                        F#
On a dark desert highway, cool wind in my hair
A                     E
Warm smell of colitas rising up through the air
G                         D
Up ahead in the distance, I saw a shimmering light
Em
My head grew heavy and my sight grew dim
F#
I had to stop for the night

There she stood in the doorway;  I heard the mission bell
And I was thinking to myself this could be heaven or this could be hell
Then she lit up a candle, and she showed me the way
There were voices down the corridor, I thought I heard them say

CHORUS
 G                        D     
 Welcome to the Hotel California.
        Em                   Bm7
 Such a lovely place, such a lovely face
    G                               D
(1)Plenty of room at the Hotel California 
(2)They livin'' it up at the Hotel California 
        Em                                      F#
(1)Any time of year (any time of year) you can find it here
(2)What a nice surprise (what a nice surprise) bring your alibis

Her mind is Tiffany twisted, she got the Mercedes bends
She got a lot of pretty, pretty boys that she calls friends
How they dance in the courtyard, sweet summer sweat
Some dance to remember, some dance to forget

So I called up the captain;  "Please bring me my wine."
"We haven''t had that spirit here since nineteen sixty-nine"
And still those voices are calling from far away
Wake you up in the middle of the night, just to hear them say

REPEAT CHORUS (with ending 2)

Mirrors on the ceiling, the pink champagne on ice
And she said "We are all just prisoners here, of our own device"
And in the master''s chambers, they gathered for the feast
They stab it with their steely knives, 
but they just can''t kill the beast

Last thing I remember, I was running for the door
I had to find the passage back to the place I was before
"Relax" said the nightman, "We are programmed to receive"
"You can check out anytime you like, but you can never leave"', CAST(0x0000A328012D25D1 AS DateTime), CAST(0x0000A328012D25D1 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (39, N'matt@a4tab.net', 24, N'Tequila Sunrise', N'EAGLES - TEQUILLA SUNRISE
A4 Tab by Matt Frear http://www.a4tab.net

 G
It''s another tequila sunrise
 D                        Am   D7       G                     
Starin'' slowly ''cross the sky,  said goodbye

He was just a hired hand
Workin on the dreams he planned to try,  the days go by

CHORUS
 Em                  C      
Every night when the sun goes down
 Em          C             Em
Just another lonely boy in town
    Am               D7
And she''s out runnin'' round

She wasn''t just another woman
And I couldn''t keep from comin'' on,  it''s been so long
Oh and it''s a hollow feelin''
When it comes down to dealin'' friends,  it never ends

BRIGDE
Am          D
Take another shot of courage
Bm             E               Am    B              Em7  A
Wonder why the right words never come,  you just get numb 

It''s another tequila sunrise
This old world still looks the same,  another frame

', CAST(0x0000A328012D25D2 AS DateTime), CAST(0x0000A328012D25D2 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (40, N'matt@a4tab.net', 25, N'That Look You Give That Guy', N'EELS - THAT LOOK YOU GIVE THAT GUY

Capo V

C C/B Bb A
Dm Dm/C G  (repeat over and over again)

INTRO 2x

C       C/B                 Bb       A
I never thought that I could be so bold,
Dm      Dm/C              G
to even say these thoughts aloud.
C         C/B                Bb        A
I see you with him, and your eyes just shine,
Dm       Dm/C               G
while he stands tall and walking proud.

C             C/B       Bb     A            Dm 
That look you give that guy, I wanna see...
Dm/C             G
Looking right at me.
C          C/B     Bb    A          Dm 
If I could be that guy, instead of me...
Dm/C              G
I''d never let you down.

It always seems like you''re going somewhere,
better than you''ve been before.
When I go to sleep, and I dream all night,
of you knocking on my door.

That look you give that guy, I wanna see...
Looking right at me.
If I could be that guy, instead of me...
I''d be all I can be. I''d be all I can be.

PLAY CHORDS 2x

I''m nothing like what I''d like to be
I''m nothing much, I know it''s true.
I lack the style and the pedigree
And my chances are so few

That look you give that guy, I wanna see...
Looking right at me.
If I could be that guy, instead of me...
I''d give you all I got.

I never thought that I could be so bold,
to even say these thoughts aloud.
But if let''s say, it won''t work out.
You know where I can be found.

That look you give that guy, I wanna see...
Looking right at me.
If I could be that guy, instead of me...
I''d never let you down. I''d never let you down.

PLAY CHORDS TO FADE 4x
', CAST(0x0000A328012D25D4 AS DateTime), CAST(0x0000A328012D25D4 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (41, N'matt@a4tab.net', 26, N'One Day Like This', N'ELBOW - ONE DAY LIKE THIS
A4 tab by Matt Frear http://www.a4tab.net

Capo 1st fret

VERSE
E                            A
Drinking in the morning sun, blinking in the morning sun
	B                               A
Shaking off the heavy one, yeah heavy like a loaded gun
	E                             A
What made me behave that way? Using words i never say
	      A
I can only think it must be love
	   A                                      E (stop) E (stop)
Oh anyway, it''s looking like a beautiful day_________

Someone tell me how I feel, it''s silly wrong but vivid right
Oh, kiss me like a final meal, yeah kiss me like we die tonight
Cause holy cow i love your eyes and only now i see the light
Yeah lying with you half awake
Oh anyway it''s looking like a beautiful day_________
	
When my face is chamois creased
If you think i winked I did
laugh politely at repeats
Yeah kiss me when my lips are thin
Cause holy cow i love your eyes and only now i see the light
Yeah lying with you half awake, stumbling over what to say
Well anyway, it''s looking like a beautiful day_________

CHORUS
   E                     Dsus2
So throw those curtains wide
	    A                                E
One day like this a year, it''d see me right
Throw those curtains wide
One day like this a year, it''d see me right

Throw those curtains wide
One day like this a year, it''d see me right, for life
Throw those curtains wide
One day like this a year, it''d see me right, for life

Holy cow i love your eyes____ and only now i see the light____
Holy cow i love your eyes____ and only now i see the light____
Throw those curtains wide
One day like this a year, it''d see me right

REPEAT CHORUS', CAST(0x0000A328012D25D5 AS DateTime), CAST(0x0000A328012D25D5 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (42, N'matt@a4tab.net', 26, N'The Bones of You', N'ELBOW - THE BONES OF YOU
A4 tab by Matt Frear http://www.a4tab.net

Capo: 3

INTRO
  G7                      Cm6
  v ^ v ^ v ^ v ^ v ^ v ^ v ^ v ^ v ^ v ^ v ^ v ^ 
E|0-----0----------------|0-----0----------------|
B|0-----0----------------|0-----0----------------|
G|4-----4----------------|2-----2----------------|
D|6-----6----------------|4-----4----------------|
A|5-----5----------------|3-----3----------------|
E|0-----0----------------|0-----0----------------|

VERSE
        G7     Cm6                   G7
So I''m there Charging around with a juggernaut brow
Overdraft, speeches and deadlines to make
Cramming commitments like cats in a sack
Telephone burn and a purposeful gait

When out of a doorway the tentacles stretch
Of a song that I know And the world moves in slow-mo
Straight to my head like the first cigarette of the day

CHORUS
And it''s you, and it''s May
And we''re sleeping through the day
And I''m five years ago
And three thousand miles away

Do I have time? A man of my calibre
Stood in the street like a sleepwalking teenager, No. 
And I dealt with this years ago 
I took a hammer to every memento
But image on image like beads on a rosary
pulled through my head as the music takes hold
and the sickener hits; I can work till I break
but I love the bones of you
That, I will never escape

REPEAT CHORUS

And I can''t move my arm
Through the fear that you will wake
And I''m five years ago
And three thousand miles away

BRIDGE

And I''m five years ago
And three thousand miles away
And I''m five years ago
And three thousand miles away

REPEAT CHORUS', CAST(0x0000A328012D25D5 AS DateTime), CAST(0x0000A328012D25D5 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (43, N'matt@a4tab.net', 27, N'Layla (Unplugged)', N'ERIC CLAPTON - LAYLA UNPLUGGED
A4 Tab by Matt Frear http://www.a4tab.net

INTRO   Dm  Bb  C  Dm
        Dm  Bb  C

VERSE
A  C  C#m                            G#
      What will you do when you get lonely?
C#m    C       D       E   E7
No one waiting by your side.
F#m             B        E           A
You''ve been runnin'', hidin'' much too long.
F#m               B                 E     A
You know it''s just your foolish pride.


CHORUS
 Dm    Bb     C            Dm
Layla,    you got me on my knees, Layla,
I beg you darlin'' please, Layla,
Darlin'' won''t you ease my worried mind.


Tried to give you consolation.
Your old man had let you down.
Like a fool, I fell in love with you.
Turned my whole world upside down.

REPEAT CHORUS

Make the best of situation.
''Fore I finally go insane.
Please don''t say, we''ll never find a way.
Tell me all my love''s in vain.


REPEAT CHORUS x2

SOLO

REPEAT CHORUS x2








', CAST(0x0000A328012D25D8 AS DateTime), CAST(0x0000A328012D25D8 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (44, N'matt@a4tab.net', 28, N'It''s Too Late', N'EVERMORE - IT''S TOO LATE
A4 tab by Matt Frear http://www.a4tab.net

VERSE
Am              Em            Dm             Am
Monday Morning, hesitate, I can''t get out of bed
I''d rather go back to the dreams living in my head
Yeah... yeah

Tuesday evening pack my bags, I''m heading out the door
I left a box of memories, lying on the floor
Yeah... yeah

CHORUS
Am       Em        Dm            Am
Ride on, ride till early morning sun
Am      Em         Dm            Am
Ride on, like the dawning of the day
          C           F                 C    B/G   
It''s too late, to let all your feelings show
Am     Em      Dm       Am        
Go on, til the night is swept away

VERSE
Running from the city lights, Running from this empty life
I''m running out of time tonight, Screaming out for help! Help!

(Slow down you''re moving too fast, Go home you''ll feel better for it
Oh boy you better stop dreaming it''s all in your head)

            F
''Cause it''s too late now

REPEAT CHORUS

REPEAT CHORUS

OUTRO
Woah oh oh oh
Woah oh oh
', CAST(0x0000A328012D25DA AS DateTime), CAST(0x0000A328012D25DA AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (45, N'matt@a4tab.net', 29, N'Do You Realize', N'Flaming Lips - "Do You Realize??" from Yoshimi Battles The Pink Robots
Tabbed by Scott Lapatine

Intro
C   Em   Am   D7

       C       Em             Am            G         F
Do You Realize      that you have the most beautiful face
       C       Em    Am                     D7
Do You Realize      .....we''re floating in space
       F       Em         Am                  G
Do You Realize      that happiness makes you cry
F  G   C       Em         Am           F       Fm        C  C(add 9)  C
Do You Realize      that everyone you know someday Will die    


        F             Am                G
And instead of saying all of your goodbyes, let them know
    C             F         
You realize that life goes fast
      C                 G              
It''s hard to make the good things last
     C               Em
You realize the sun doesn''t go down
      G                 F             G              C   Fm
It''s just an illusion caused by the world spinning round

KEY CHANGE:
A#     D#        Gm    Cm    G#
do you realize??

F      C      Em       Am           F        Fm       C   Cadd9 
do you realize    that everyone you know someday will die
      F               Am              G
and instead of saying all of your goodbyes


here the guitar stops, orchestra:

let them know you realize that life goes fast
it''s hard to make the good things last
you realize the sun doesn''t go down
it''s just an illusion caused by the world....   spinning ''round

F      C      Em          Am            G         F
do you realize   that you have the most beautiful face??

Fm     C (sweep pick)
do you realize??', CAST(0x0000A328012D25DC AS DateTime), CAST(0x0000A328012D25DC AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (46, N'matt@a4tab.net', 29, N'Fight Test', N'FLAMING LIPS - FIGHT TEST
A4 tab by Matt Frear http://www.a4tab.net

intro: A    C#m    D    E2    A    F#m    E


VERSE
                A                       C#m              D             E2          
I thought I was smart - I thought I was right I thought it better not to fight
                      A         F#m          E
I thought there was a virtue in always being cool

so when it came time to fight - I thought I''ll just step aside
                              F#m            E   
and that time would prove you wrong and that you (would be the fool...)


CHORUS
I don''t know where the sun beams end and the star lights begin It''s all a mystery (hold E)

VERSE
Oh to fight is to defend if it''s not Now than tell me when 
would be the time that you would stand up And be a man

for to lose I could accept but to surrender 
                               A      F#      E
I just wet and regretted this moment - oh that I (I Was the fool)

CHORUS
I don''t know where the sun beams end and the star light begins it''s all a mystery
And I don''t know how a man decides what right for his own life it''s all a mystery (hold E)

VERSE
Cause I''m a man not a boy and there are things You can''t avoid 
you have to face them when you''re not prepared To face them

If I could I would but you''re with him now it''d do no good
I should have fought him but instead I let him - (let Him take it)

REPEAT CHORUS

BRIDGE: D    E x2

REPEAT CHORUS (verse 2 part 1 overlay)

REPEAT CHORUS (verse 3 overlay)

A
Mystery', CAST(0x0000A328012D25DD AS DateTime), CAST(0x0000A328012D25DD AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (47, N'matt@a4tab.net', 30, N'If You''re Into It', N'FLIGHT OF THE CONCHORDS - IF YOU''RE INTO IT

CHORDS 
C     Am

Bret:
C                 Am
If you want me to     I could hang round with you
C                 Am
If I only knew        Thats what you''re into

Jemaine:
You and him Him and you, If thats what you''re into
Him hangin round, around you, You''re hanging round, yeah you''re there too

Bret:
And if you want me to, I will take off all my clothes for you
I''ll take off all my clothes for you, If thats what you''re into

Jemaine:
How ''bout him in the nude, If thats what you''re into
In the nude in front of you, Is that what you''d wanna view

Bret:
If it''s cool with you, I''ll let you get naked too
It could be a dream come true, providing that''s what you are into

Jemaine:
Is that what you''re into, him and you in the nude
That''s what he''s prepared to do, 
Is that the kinda thing that you think you might be into

Bret:
And then maybe later, we''ll get hot by the refrigerator
In the kitchen next to the pantry, You think that might be what you fancy?

Jemaine:
In the buff being rude, Doin stuff with the food
Getting lewd with his food, We heard that''s what you are into

Bret:
And then on our next date, Well you could bring your roommate
I dont know if Stu is keen to,  But if you want we could double team you

Jemaine:
How bout you and two dudes, Him you and Stu in the nude
Bein'' lewd with two dudes with food, Well thats if Stu''s into it too

Bret:
All the things I''d Do, Things I''d do for you
If I only knew, thats what your into.
', CAST(0x0000A328012D25DE AS DateTime), CAST(0x0000A328012D25DE AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (48, N'matt@a4tab.net', 31, N'Baker Street', N'FOO FIGHTERS - BAKER STREET (Gerry Rafferty cover)

INTRO
G-|-4b-4b-2-0---3-0---------
D-|-----------3-----1-3-0-0-

D-|---9-------8---5-
A-|-7---(7)-6---3---

G-|-4b-4b-2-0---3-0-------
D-|-----------3-----1-3-0-

Solo 1:
                  D                        D
e-|----13-12-10---10h12p10-|----13-12-10------------
B-|-10---------13h---------|-10---------13h-10------

                C      A                   G
e-|----13-12-10------------|----13-12-10---10h12p10---------
B-|-10---------13h-13-10---|-10---------13h-----------------
G-|------------------------|------------------------10-12-10

VERSE
A
Winding your way down on Baker Street
A
Light in your head, and dead on your feet
     Em                     G
Well another crazy day, you drink the night away
    D
And forget about everything

This city''s dance makes you feel so cold, it''s got 
So many people but its got no soul
And its taken you so long to find out you were wrong 
When you thought it held everything.

BRIDGE
Dm                            Am
You used to think that it was so easy
Dm                          Am
You used to say that it was so easy
    C              G             D
But you''re trying, you''re trying now

Another year and then you''d be happy
Just one more year and then you''d be happy
But you''re crying, you''re crying now

--Repeat Solo--

VERSE
Way down the street there''s a light in his place
You open the door, he''s got that look on his face
And he asks you where you''ve been, you tell him who you''ve seen
And you talk about everything

He''s got this dream about buying some land
He''s gonna give up the crack and the one night stands
And then he''ll settle down, it''s a quiet little town
And forget about everything

But you know he''ll always keep moving
You know he''s never gonna stop moving
Cause he''s rolling, he''s the rolling stone

And when you wake up it''s a new morning
The sun is shining it''s a new morning
And you''re going, you''re going home

--Repeat Intro--

--Repeat Solo 1--

Final Solo:
(Solo 1''s chords strummed whilst playing this)

e-|-20-20-20-20\22-17-17-15-13-17b-15-13\10--
B-|------------------------------------------

                        |  (x10)
e-|-10b~~~~~~~-13-15-17-|--17b- 
B-|---------------------|------

e-|-20-20-20-20\22-10b-10-8-----------------------
B-|-------------------------10-8--10-8------------
G-|------------------------------------10-7-------
D-|-----------------------------------------10\12-

          (x12)
e-|-17-|--17b
', CAST(0x0000A328012D25E0 AS DateTime), CAST(0x0000A328012D25E0 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (49, N'matt@a4tab.net', 31, N'Best of You', N'FOO FIGHTERS - BEST OF YOU
A4 tab by Matt Frear http://www.a4tab.net

                 C#m                         A
I''ve got another confession to make I''m your fool
                 C#m                         A
Everyone''s got their chains to break Holdin'' you
                 B                A
Were you born to resist or be abused?

CHORUS
                      C#m                  B                  A
Is someone getting the best, the best, the best, the best of you?
Is someone getting the best, the best, the best, the best of you?
Are you gone and onto someone new?

VERSE
I needed somewhere to hang my head Without your noose
You gave me something that I didn''t have But had no use
I was too weak to give in Too strong to lose

My heart is under arrest again But I break loose
My head is giving me life or death But I can''t choose
I swear I''ll never give in I refuse

CHORUS w/ BREAKDOWN
                      C#m                  B                  A    F#m
Is someone getting the best, the best, the best, the best of you?
Is someone getting the best, the best, the best, the best of you?
Has someone taken your faith? Its real, the pain you feel
Your trust, you must Confess
Is someone getting the best, the best, the best, the best of you? Oh...

BRIDGE
B     A
Oh... Oh...
Oh... Oh...

CHORUS
                       C#m                     B
Has someone taken your faith? Its real, the pain you feel
   A                     F#m
The life, the love you''d die to heal
The hope that starts the broken hearts Your trust, you must Confess

Is someone getting the best, the best, the best, the best of you?
Is someone getting the best, the best, the best, the best of you? Oh..

VERSE
I''ve got another confession my friend I''m no fool
I''m getting tired of starting again Somewhere new 
Were you born to resist or be abused?

I swear I''ll never give in I refuse

REPEAT CHORUS w/ BREAKDOWN', CAST(0x0000A328012D25E1 AS DateTime), CAST(0x0000A328012D25E1 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (50, N'matt@a4tab.net', 31, N'My Hero', N'FOO FIGHTERS - MY HERO (Acoustic on Howard Stern show)
A4 tab by Matt Frear

INTRO
E   C#m7  C#7sus4   C#m7  C#7sus4   C#m7  C#7sus4   C#m7

INTRO RIFF
D|-------------2
A|------4-2-0--0
E|-2-2----------

VERSE (play intro chords)
Too alarming now to talk about
Take your pictures down and shake it out
Truth or consequence, say it aloud
Use that evidence, race it around

CHORUS
A (D#5   E5   F#5)   A
   There goes my hero         
(D#5  E5        C#5)        E  (D#5 E5 F#5)  E  (D#5 E5 B5)
     Watch him as he goes
     
   There goes my hero
      He''s ordinary

REPEAT INTRO RIFF then
e|-0-0-0-0-
B|-4-5-4-0-

VERSE
Don''t the best of them bleed it out
While the rest of them peter out
Truth or consequence, say it aloud
Use that evidence, race it around

REPEAT CHORUS

VERSE
Kudos my hero leaving all the best
You know my hero, the one that''s on

REPEAT CHORUS

END ON INTRO RIFF', CAST(0x0000A328012D25E2 AS DateTime), CAST(0x0000A328012D25E2 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (51, N'matt@a4tab.net', 31, N'Times Like These', N'Foo Fighters - Times Like These (Acoustic)
A4 tab by Matt Frear

INTRO: a plain D while hammering the A (2nd fret) on the G sting.
e||---2-2-2---2-----2-----2-----2-2---||
B||o--3-3-3---3-----3-----3-----3-3--o||
G||---0-2-2-0-2---0-2---0-2---0-2-2---||
D||---0-0-0-0-0---0-0---0-0---0-0-0---||
A||o---------------------------------o||
E||-----------------------------------|| 3x

VERSE
Dsus2 D          Am7   Am  Am7
I, I''m a one way motorway 
           C/B   Cadd7        Em      Em7        D intro 
I''m the one that drives away, follows you back home
I, I''m a streetlight shining
I''m a white light blinding bright, burning off and on... uh huh


CHORUS
     Cadd7                 Em              D Dsus2 D
It''s times like these you learn to live again
It''s times like these you give and give again
It''s times like these you learn to love again
It''s times like these time and time again


VERSE
I, I''m a new day rising
I''m a brand new sky that hangs stars upon tonight
I, I''m a little divided
Do I stay or run away and leave it all behind


REPEAT CHORUS

SOLO
D    C   C/B

e|------------------------------------------|
B|------------------------------------------|
G|----------12--11----------12--11----------|
D|--12--10----------12--10------------------|
A|----------------------------------12--10--|
E|------------------------------------------|

REPEAT CHORUS', CAST(0x0000A328012D25E4 AS DateTime), CAST(0x0000A328012D25E4 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (52, N'matt@a4tab.net', 32, N'Careless Whisper', N'GEORGE MICHAEL - CARELESS WHISPER
A4 tab by Matt Frear www.a4tab.net

INTRO
Dm7                   Gm7          A#7          Am7
Shouldda known better, yeah

SAX SOLO
e|--/12-10-------12-10-----------/8-6-----8-6-----|
B|---------10----------10-------------6-------6~--|
G|------------10----------10~-----------7---------|

e|--6-5----------------------------------|
B|------6--------------------------8-10--|
G|--------7----------------7-9--10-------|
D|----------8~~----7-8--10---------------|

I feel so unsure as I take your hand And lead you to the dance floor
As the music dies Something in your eyes Calls to mind a silver screen And all its sad goodbyes

CHORUS
I''m never gonna dance again Guilty feet have got no rhythm
Though it''s easy to pretend I know you''re not a fool
I should have known better than to cheat a friend And waste a chance that i''ve been given
So i''m never gonna dance again The way i danced with you

SOLO
e|-----------------------10-12-13-10-|
B|-6-5-6-----6-5-6s8-10--------------|
G|-----------------------------------|
D|-------8~~-------------------------|

Time can never mend The careless whispers of a good friend
To the heart and mind Ignorance is kind There''s no comfort in the truth 
Pain is the whole you''ll find

REPEAT CHORUS

REPEAT SAX SOLO TWICE

Tonight the music seems so loud I wish that we could lose this crowd
Maybe it''s better this way
We''d hurt each other with the things we want to say
We could have been so good together We could have lived this dance forever
But now who''s gonna dance with me Please stay

REPEAT CHORUS

REPEAT SAX SOLO ONCE

(Now that you''ve gone) Now that you''ve gone
(Now that you''ve gone) Was what i did so wrong
That you had to leave me alone ', CAST(0x0000A328012D25E6 AS DateTime), CAST(0x0000A328012D25E6 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (53, N'matt@a4tab.net', 33, N'I Do', N'GIN WIGMORE - I DO
A4 Tab by Matt Frear http://www.a4tab.net

Capo 6th fret - she plays this on a ukelele but these are the guitar chords

VERSE
G                                 D                            Em
Star light kicking around without you by my side makes me feel all right
             Am
I start this day as new until I 
G                              D                           Am
Wake up find myself and I''ll break up Today ain''t gonna be great but 
        C
Can we ride this through?

PRE-CHORUS
          Em             Bm           Em           Bm
You know i need you sometimes And I''ll hold on til I
Em                              D
Don''t matter what my reasons are I still do love you

CHORUS
C     Bm    Em     G          C             Bm                      Em
I do I do, I do I do I do I choose you, So why don''t you choose me too? 
C         Bm   Em    G             C        Bm 
It''s no mistake On a lonely day I want you

VERSE 2
      G ....
I can change babe my bitter cold and dark days are stayin away When i see you 
And your beautiful ways
To be hollow stop go I don''t know But if your thinking bout leaving me, no no no
Am
We can get through it, just let us do it

REPEAT PRE-CHORUS
Em              Bm
I need you sometimes...

CHORUS:
And I do, I do I do I do I choose you, So why don''t you choose me too? 
                                               Bm                    Em
It''s no mistake On a lonely day I want you, so why don''t you want me too?
C     Bm  
I do I do I do I...

INSTRUMENTAL
C   Bm    Am     D

REPEAT CHORUS:
I do I do, I do I do I do I choose you So why don''t you choose me too?
It''s no mistake no, it''s not even a lonely day n I want you, so why don''t you want me too?

I do I do I do I do I do I choose choose you I choose you, 
C        Bm                 G
So why don''t you choose me too?

OUTRO (play verse chords)
     D                     Em                                   Am
Mmm yeah It''s no mistake no, it''s not even a lonely day and I want you, 
                          G
so why don''t you want me too?
D                 Em        Am        G (end)
 I do I do, I do I do

			', CAST(0x0000A328012D25E7 AS DateTime), CAST(0x0000A328012D25E7 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (54, N'matt@a4tab.net', 34, N'Tijuana Lady', N'GOMEZ - TIJUANA LADY
A4 tab by Matt Frear www.a4tab.net

VERSE
E       C#m          B
Take me down           To where you hide
Lay me down Lay down inside
Why, do you scowl? About the specific time

CHORUS
A                           F#m
Tijuana lady, where did you go, yeah?
I''ve been chasin'' you around old Mexico, yeah, Gotta 
A       B                 E
Find my way back to San Diego

Baby where do you hide?

Take me down To where you hide
Lay me around Lay me around inside
Baby go south ''Cos I know you hide

Tijuana lady, lets take it slow, yeah but I
I know that I''m no head honcho, yeah but I
I''ll keep you warm in my silky poncho

Where do you hide? Where do you hide?

SOLO

Tijuana lady, where did you go? Yeah well I
I heard you lost in El Sombrero
Tijuana lady, which way do you flow? Yeah but I
El Mariachi Desperado

Where do you hide? Tell me where do you hide?
', CAST(0x0000A328012D25EA AS DateTime), CAST(0x0000A328012D25EA AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (55, N'matt@a4tab.net', 35, N'Somebody that I used to know', N'GOTYE - SOMEBODY THAT I USED TO KNOW
A4 tab by Matt Frear www.a4tab.net

VERSE
Dm     C      Dm       Dm       C       Dm     C     Dm    C
Now and then I think of when we were together
Like when you said you felt so happy you could die
Told myself that you were right for me
But felt so lonely in your company
But that was love and it''s an ache I still remember

You can get addicted to a certain kind of sadness
Like resignation to the end, always the end
So when we found that we could not make sense
Well you said that we would still be friends
But I''ll admit that I was glad it was over

CHORUS
Dm       C             A#      C  
But you didn''t have to cut me off
Make out like it never happened and that we were nothing
And I don''t even need your love
But you treat me like a stranger and that feels so rough
No you didn''t have to stoop so low
Have your friends collect your records and then change your number
I guess that I don''t need that though
Now you''re just somebody that I used to know

Now you''re just somebody that I used to know
Now you''re just somebody that I used to know

[Kimbra:]
Now and then I think of all the times you screwed me over
But had me believing it was always something that I''d done
A#               C
But I don''t wanna live that way
Reading into every word you say
You said that you could let it go
And I wouldn''t catch you hung up on somebody that you used to know

REPEAT CHORUS

[x2]
Somebody
(I used to know)
Somebody
(Now you''re just somebody that I used to know)

(I used to know)
(That I used to know)
(I used to know)
Somebody', CAST(0x0000A328012D25EB AS DateTime), CAST(0x0000A328012D25EB AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (56, N'matt@a4tab.net', 36, N'Are we the waiting', N'GREEN DAY - ARE WE THE WAITING
Tab by Matt Frear http://www.a4tab.net

A                                D
Starry nights city lights coming down over me
Skyscrapers and stargazers in my head
Are we we are, are we we are the waiting unknown 
F#m(high)           E(high)            D
This dirty town was burning down in my dreams
Lost and found city bound in my dreams

CHORUS
(And screaming) Are we we are, are we we are the waiting
(And screaming) Are we we are, are we we are the waiting

Forget me nots and second thoughts live in isolation
Heads or tails and fairytales in my mind
Are we we are, are we we are the waiting unknown
The rage and love, the story of my life
The Jesus of suburbia is a lie 

(And screaming) Are we we are, are we we are the waiting
(And screaming) Are we we are, are we we are the waiting (unknown)

Are we we are, are we we are the waiting
(And screaming) Are we we are, are we we are the waiting (unknown)
Are we we are, are we we are the waiting (unknown)', CAST(0x0000A328012D25EE AS DateTime), CAST(0x0000A328012D25EE AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (57, N'matt@a4tab.net', 36, N'Give me Novacaine', N'GREEN DAY - GIVE ME NOVACAINE
Tab by Matt Frear http://www.a4tab.net

A                        F#m(high)
Take away the sensation inside
Bm                          E(high)
Bitter sweet migraine in my head
Its like a throbbing tooth ache of the mind
I can''t take this feeling anymore

CHORUS
DDDDD                      A
Drain the pressure from the swelling,
This sensations overwhelming,
D                                 F#m
Give me a long kiss goodnight and everything will be alright
Bm                         E
Tell me that (Jimmy) I won''t feel a thing
               A
So give me Novacaine

Out of body and out of mind
Kiss the demons out of my dreams
I get the funny feeling, that''s alright
Jimmy says it''s better than air, I''ll tell you why

REPEAT CHORUS

           F#m
Oh Novacaine

SOLO
F#m   A
F#m   A
F#m   A
F#m   A    B     E

REPEAT CHORUS
', CAST(0x0000A328012D25EE AS DateTime), CAST(0x0000A328012D25EE AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (58, N'matt@a4tab.net', 36, N'Jesus of Suburbia', N'GREEN DAY - JESUS OF SUBURBIA

Tabbed by Ben O''Brien (bawitdaba69@hotmail.com)
(Standard Tuning)

Part I: Jesus Of Suburbia (4/4)
-------------------------------
VERSE 1
-------
C#                                A#
    I''m the son of rage and love       The Jesus of Suburbia
    F#                               G#
The bible of none of the above, on a steady diet of
C#                                A#
    Soda pop and Ritalin               No one ever died for my
F#                                               G#
Sins in Hell, as far as I can tell, at least the ones I got away with

CHORUS
------
            F#                  G#           F#                  G#
And there''s nothing wrong with me,   this is how I''m supposed to be
     F#              G#                             C#  G#  F#  C#  G#  F#
In a land of make believe that don''t believe in me

VERSE 2
-------
    Get my television fix,        sitting on my crucifix
A living room on my private womb, while the moms and brads are away
    To fall in love and fall in debt       to alcohol and cigarettes
And mary jane to keep me insane, doing someone else''s cocaine

REPEAT CHORUS

C#  G#  F#  C#  G#  F#
C#  A#  F#  G#
C#  F   A#  G#  F#  G#

Part II: City Of The Damned (4/4)
---------------------------------
VERSE 1 (some chords are arranged for guitar from piano)
-------
       C#                         C                  A#        G#
At the center of the Earth in the parking lot of the 7-11 were I was taught
F#                      G#
    The motto was just a lie
        C#                               C                    A#                       G#
It says home is where your heart is, but what a shame, ''cause everyone''s heart doesn''t beat the same
F#                      G#
    It''s beating out of time

CHORUS
------
A#         G#         C#                 F#
    City of the Dead,      at the end of another lost highway
A#           G#              F#
    Signs misleading to nowhere
    City of the damned,    lost children with dirty faces today
    No one really seems to care

VERSE 2 (same as first)
-----------------------
I read the graffiti in the bathroom stall like the holy scriptures of a shopping mall
    And so it seemed to confess
It didn''t say much, but it only confirmed that the center of the earth is the end of the world
    And I could really care less

REPEAT CHORUS

Part III: I Don''t Care (3/3 turning into 4/4)
---------------------------------------------
G#  C#  G#  C#  F#  C#

G#           C#            G#           C#            F#           C#           G#
I don''t care if you don''t, I don''t care if you don''t, I don''t care if you don''t care
I don''t care if you don''t, I don''t care if you don''t, I don''t care if you don''t care
I don''t care if you don''t, I don''t care if you don''t, I don''t care if you don''t care
I don''t care if you don''t, I don''t care if you don''t, I don''t care if you don''t care
F#  G#    C#    A  G#  C#  A  G#  C#  A  G#  C#  A  G#
I   don''t care

                      A  G#
Everyone''s so full of shit
                       A  G#
Born and raised by hypocrites
Hearts recycled but never saved
From the cradle to the grave
We are the kids of war and peace
From Anaheim to the Middle East
We are the stories and disciples of
The Jesus of Suburbia

F#           G#      C#  G#
Land of make believe
And it don''t believe in me
Land of make believe
F#           G#          F#  G#    C#
And I don''t believe, and I   don''t care
F#  G#    C#    F#  G#    C#
I   don''t care, I   don''t care
F#  G#    C#    F#  G#    C#  C#  C#  C#  G#
I   don''t care, I   don''t care

Part IV: Dearly Beloved (4/4)
-----------------------------
G#                    Cm
   Dearly beloved are you listening?
  C#                                  G#     D#
I can''t remember a word that you were saying
   Are we demented or am I disturbed?
The space that''s in between insane and insecure

G#  Cm  C#  G#  D#

   Oh therapy, can you please fill the void?
Am I retarded or am I just overjoyed
   Nobody''s perfect and I stand accused
For lack of a better word, and that''s my best excuse

G#  C  C#  G#  D#

Part V: Tales Of Another Broken Home (4/4)
------------------------------------------
G#  F#  C#  G#  F#  C#  G#  F#  C#  G#  F#

C# G#       F#  C# G#       F# C# G#     F# C# G#  F#
To live and not to breathe, is to die in trage-dy
C# G#      F#  C# G# F# C# G#        F#  C# G#   F#
To run, to run aw-ay,   to find what you believe

    C# G# C# G# C#    G#   D# G#2 D# G#2 D# G#2
And I           leave behind
C#   G#   C#  G#  C# G#   D# G#2 D# G#2 D# G#2
This hurricane of fucking lies

I  lost my faith to this,  this town that don''t ex-ist
So I  run, I run aw-ay,   the light of mas-o-chist

And I           leave behind
This hurricane of fucking lies
And I               walked this line
A million and one fucking times
    F#   C#   G#  F#  C#  G#  F#  C#  G#
But not this time

F#  C#  G#  F#  C#  G#  F#  C#  G#  F#  C#  G#
F#  C#  G#  F#  C#  G#  F#  C#  G#  F#  C#  G#
C# G# C# G# C# G# D# G#2 D# G#2 D# G#2
C# G# C# G# C# G# D# G#2 D# G#2 D# G#2

C#             D#           G#         C#
  I don''t feel any shame, I won''t apologize
   When there ain''t nowhere you can go
   Running away from pain when you''ve been victimized
   Tales from another broken home

       F#  C#  G#
You''re leaving
       F#  C#  G#
You''re leaving
You''re leaving
Ah, you''re leaving home

F#  C#  G#  F#  C#  G#', CAST(0x0000A328012D25F0 AS DateTime), CAST(0x0000A328012D25F0 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (59, N'matt@a4tab.net', 36, N'Wake me up when September ends', N'GREEN DAY - WAKE ME UP WHEN SEPTEMBER ENDS
A4 Tab by Matt Frear http://www.a4tab.net

{Intro (acoustic)
{e| |----------------|
{B| |----3-----3-----|
{G| |--0-----0-------| x4
{D| |5-----5---------|
{A| |----------------|
{E| |----------------|

{Verse 1
{e| |------------|------------|------------|------------|
{B| |----3-----3-|----3-----3-|----3-----3-|----3-----3-|
{G| |--0-----0---|--0-----0---|--0-----0---|--0-----0---|
{D| |5-----5-----|4-----4-----|2-----2-----|0-----0-----|
{A| |------------|------------|------------|------------|
{E| |------------|------------|------------|------------|
{
{    C                Cm               G                
{e| |----------------|----------------|----------------|
{B| |----5-----5-----|----4-----4-----|----3-----3-----|
{G| |----5-5---5---5-|--5---5---5---0-|----0-0---0---0-|
{D| |--5-------5-----|--------5-----0-|--0-------0-----|
{A| |3-------3-------|3---------------|----------------|
{E| |----------------|----------------|3-------3-------|

Summer has come and passed The innocent can never last
C         Cm             G
wake me up when September ends
like my father''s come to pass seven years has gone so fast
wake me up when September ends

CHORUS (clean)
Em             Bm        C                 G   G/F#     
here comes the rain again falling from the stars
Em             Bm        C               D
drenched in my pain again becoming who we are

as my memory rests but never forgets what I lost
wake me up when September ends

REPEAT INTRO

summer has come and passed the innocent can never last
C (distorted - it''s always distorted now)
wake me up when September ends
ring out the bells again like we did when spring began
wake me up when September ends

REPEAT CHORUS (distorted)

As my memory rests but never forgets what I lost
wake me up when September ends

SOLO (play CHORUS distorted)
{e| |----------------|----------------|----------------|----|
{B| |----12----12--12|----12----12--12|----13----13--13|1515|
{G|/|1212--1212--12--|1111--1111--11--|1212--1212--12--|1212|
{D| |----------------|----------------|----------------|----|
{A| |----------------|----------------|----------------|----|
{E| |----------------|----------------|----------------|----|
{
{e| |----------------|----------------|----------------|----|
{B| |----12----12--12|----12----12--12|----13----13--13|1515|
{G| |1212--1212--12--|1111--1111--11--|1212--1212--12--|1212|
{D| |----------------|----------------|----------------|----|
{A| |----------------|----------------|----------------|----|
{E| |----------------|----------------|----------------|----|
{
{e| |----------------|----------------|----------------|
{B| |1515151515151515|1515151515151515|1515151515151515|
{G| |1111111111111111|1212121212121212|1111111111111111| 
{D| |----------------|----------------|----------------| 
{A| |----------------|----------------|----------------|
{E| |----------------|----------------|----------------|

Summer has come and passed The innocent can never last
wake me up when September ends
like my father''s come to pass twenty years has gone so fast
wake me up when September ends
wake me up when September ends
wake me up when September ends 
', CAST(0x0000A328012D25F9 AS DateTime), CAST(0x0000A328012D25F9 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (60, N'matt@a4tab.net', 37, N'Warning', N'INCUBUS - WARNING
A4 tab by Matt Frear http://www.a4tab.net

B                   A  B
Bat your eyes girl, be otherworldly.
A B                  A  G      F#
Count your blessings. Seduce a stranger.

What''s so wrong with being happy?
                 A E          G           F#  
Kudos to those who see through sickness. (yeah)
E F#
Over and over and over and over and ooh...

CHORUS
B        A      B        A    B
She woke in the morning.
          A        G        F#         B
She knew that her life had passed her by
               A      B        A    B
And she called out a warning:
          A   E     G        B    A
"Don''t ever let life pass you by!"

I suggest we learn to love
ourselves before it''s made illegal.
When will we learn? (When will we learn?)
When will we change? (When will we change?)
Just in time to see it all come down.
Those left standing will make millions
writing books on the way it should have been.

REPEAT CHORUS (end F#)
          A   E     G        F#    E  F#
"Don''t ever let life pass you by!"

E  
Floating in this cosmic jacuzzi,
we are like frogs oblivious
to the water starting to boil.
No one flinches. We all float face down.

(PLAY FIRST HALF OF CHORUS WITH NO VOCALS)

She woke in the morning.
She knew that her life had passed her by
And she called out a warning,
"Don''t ever let life pass you by...
pass you by..."', CAST(0x0000A328012D25FA AS DateTime), CAST(0x0000A328012D25FA AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (61, N'matt@a4tab.net', 38, N'Esta Saliendo El Sol', N'INTOXICADOS - ESTA SALIENDO EL SOL
A4 tab by Matt Frear www.a4tab.net

RIFF

A|------0---0------------ 
E|--0h2---2-------------- 

VERSE

A                 E
Esta saliendo el sol que es

F#m          D 
sin duda mi dios

A                E
pero no estoy apto para aprender hoy

F#m       D
de su sabiduría

A                 E
porque la luna apareció

        D                            Bm-C#m  A      
y me invito a estar con ella hasta que vuel-vas    vos

VERSE 2

Ya esta saliendo el sol que es
sin duda mi dios
y aunque no cerré un ojo en toda la semana
y tenga ganas de desmayarme en la cama
voy a salir a recibir su bendición oh dios

VERSE 3

Padre sol nuestro que estas en los cielos
guiame si no esta bien la vida que llevo
no dejes nunca de brillar
porque eso me pone bien cuando estoy un poco mal

la luz nuestra de cada día danosle hoy 
y que así sea amen.

GUITAR SOLO
HARMONICA SOLO
REPEAT VERSE 2
REPEAT VERSE 3
HARMONICA SOLO
GUITAR SOLO', CAST(0x0000A328012D25FC AS DateTime), CAST(0x0000A328012D25FC AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (62, N'matt@a4tab.net', 38, N'Fuego', N'INTOXICADOS - FUEGO
A4 tab by Matt Frear http://www.a4tab.net

INTRO
D A G A

VERSE
D                 A                   G             A  Asus2 A
Esta vez si es en serio, no estoy mintiendo, algo se prende fuego
S� que muchas veces dije que el lobo ven�a, pero esta vez, 
el lobo esta ac�
Se prende fuego a mi pelo, mi piano mis discos la ropa y el perro
Puede ser que otra vez no sea cierto pero siento como el fuego, 
me quema por dentro

REPEAT FIRST VERSE

Bm                           G                    A
Dame un balde de agua, o de arena, o pasame el matafuegos
F#m                                         G                A
Que el incendio esta cerca y no voy a quemarme, sin antes pelear

se prende fuego a mi pelo, mi piano mis discos la ropa y el perro
Puede ser que otra vez no sea cierto pero siento como el fuego,
me quema por dentro

fuego fuego fuego, fuego, fuego, fuego
fuego fuego fuego, fuego, fuego, fuego

Estamos enfermos, fuego, fuego 
Estamos enfermos, fuego, fuego 

fuego fuego fuego, fuego, fuego, fuego
fuego fuego fuego, fuego, fuego, fuego

Estamos enfermos, perdonenos, perdonenos 
Estamos enfermos, perdonenos, perdonenos 

fuego fuego fuego, fuego, fuego, fuego
fuego fuego fuego, fuego, fuego, fuego

Estamos enfermos, fuego, fuego 
Estamos enfermos, fuego, fuego', CAST(0x0000A328012D25FD AS DateTime), CAST(0x0000A328012D25FD AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (63, N'matt@a4tab.net', 38, N'Nunca Quise', N'INTOXICADOS - NUNCA QUISE
A4 tab by Matt Frear http://www.a4tab.net

INTRO / CHORUS
D  E  A Asus2 A x2
D  E  A F#m Bm E

VERSE
      D              Bm
Nunca quise tanto a nadie como vos, 
     C#m                   F#m
por eso es que empiezo a dudar
     Bm                         E
Si seremos hermanos que nos separado 
       A
ni nosotros sin sabernos nos volvimos a juntar

Tu sangre es roja, la m�a tambi�n, 
veo no me equivoco a lo que tendremos que ver
Somos indios latinos con guitar el�ctrica y
comunicados a trav�s de Internet

CHORUS
  D     E          A
Para odiar hay que querer, 
para destruir hay que hacer
  D           E          A       F#m        Bm               E         
y estoy orgulloso de quererte romper, la cabeza contra la pared, si

y por todas esas cosas que tenemos en com�n, 
hace tiempo ya marchaste de ac�
te cansaste de m�, yo me cans� de vos, 
pero cuando nos miramos sabemos que no es verdad

porque tanto te quise y tanto te quiero, 
siempre una marca tuya llevar� mi coraz�n
disculpa si te parece raro pero comparto,
la opini�n que escuch� en una canci�n, let it be

si la amas dejala ser, si la queres dejala volar
nunca fui tu patr�n, no quisiera cambiarte 
y no quiero que pierdas tu personalidad

REPEAT CHORUS

SOLO (REPEAT CHORUS)

REPEAT CHORUS

Para dejar hay que beber, para morir primero hay que nacer
siento ganas nuevamente de tirarme a tus pies, y llevarte a mi morada otra vez

si lo sembras lo recoges, y si esperas vas a entender
cuando las cosas salen como no las espero, la vida me hace mas guerrero', CAST(0x0000A328012D25FF AS DateTime), CAST(0x0000A328012D25FF AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (64, N'matt@a4tab.net', 39, N'Taylor', N'JACK JOHNSON - TAYLOR
A4 tab from http://www.a4tab.net

INTRO 
play that riff

VERSE
         C                       C/B
They say Taylor was a good girl, never one to be late
Am                 F
complain, express ideas in her brain.
Working on the night shift, passing out the tickets,
You''re gonna have to pay her if you wanna park here.

Well mommy''s little dancer is quite a little secret
Working on the streets now, never gonna keep it.
It''s quite an imposition and now she''s only wishin
That she would have listened to the words they said...Poor Taylor.

CHORUS
C          G             Am         F
She just wanders around, unaffected by,
the winter winds here, she''ll pretend that
She''s somwhere else, so far and clear
about two thousand miles, from here.

Well Peter Patrick pitter patters on the window,
the sunny silhouette won''t let him in.
Poor old Pete''s got nothing cuz he''s been falling,
And somehow sunny knows just where he''s been.

He thinks that singin on Sunday''s gonna save his soul,
now that Saturday''s gone.
And sometimes he thinks that he''s on his way, 
but i can see, that his brake lights are on.

REPEAT CHORUS

Such a tough enchilada, filled up with nada, 
givin what you gotta give to get a dollar bill.
Used to be a limber chicken, times have been a ticking, 
now she''s finger lickin to the man, 
With the money in his pocket, flying in his rocket, 
only stopping by on his way to a better world.

OUTRO (play C D F G by sliding an open C chord up)

If Taylor finds a better world
then Taylor''s gonna run away.

REPEAT INTRO riff', CAST(0x0000A328012D25FF AS DateTime), CAST(0x0000A328012D25FF AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (65, N'matt@a4tab.net', 40, N'I''m Yours', N'JASON MRAZ - I''M YOURS (Radio edit)
A4 tab www.a4tab.net

Intro
e|-7s9s7-7-|-7s9s7-6-|-------|-------|
B|-7s9s7-7-|-7s9s7-7-|-7s9---|-------|
G|---------|---------|-6s8-8-|-8-8h9-|
D|---------|---------|-----9-|-9-9---|

Capo on 2nd. 

       A
Well, you dawned on me and you bet I felt it 
   E 
I tried to be chill but your so hot that I melted 
   F#m
I fell right through the cracks, 
D
now I''m tryin to get back 

before the cool done run out I''ll be givin it my bestest 
and nothin''s gonna stop me but divine intervention 
I reckon it''s again my turn 
to win some or learn some 

CHORUS
But I wont hesitate No more, No more It can not wait; I''m Yours

(Hmmm mm hmm mmmmm)

VERSE
Well open up your mind and see like me 
open up your plans and damn you''re free 
look into your heart and you''ll find 
love love love love 

listen to the music of the moment people dance and sing
We''re just one big family
                                                              B7
And it''s our godforsaken right to be loved loved loved loved loved 

CHORUS 2
So, i won''t hesitate  no more, no more, it cannot wait i''m sure 
there''s no need to complicate our time is short 
this is your fate I''m yours 

BRIDGE
A            E    F#m        
Do do do do do do do do do do you want to come on 
E                     D                     B7
scooch on over closer dear, and I will nibble your ear

Woah woah woah oh oh oh oh oh oh hmmm

VERSE
I''ve been spendin'' way too long checkin'' my tongue in the mirror 
and bendin'' over backwards just to try to see it clearer 
But my breath fogged up the glass; 
and so I drew a new face and I laughed 

I guess what I''d be sayin'' is there ain''t no better reason 
to rid yourself of vanities and just go with the seasons 
it''s what we aim to do; our name is our virtue 

CHORUS (no strum)
But I won''t hesitate no more, no more it cannot wait I''m yours 

REPEAT CHORUS 2, with these lyrics overlayed
Well open up your mind and see like me 
open up your plans and damn you''re free 
look into your heart and you will find that the sky is yours 
so please don''t, please don''t, please don''t, 
there''s no need to complicate, 
Cause our time is short 
This, this, this is our fate, 
     D  B7
I''m yours', CAST(0x0000A328012D2602 AS DateTime), CAST(0x0000A328012D2602 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (66, N'matt@a4tab.net', 41, N'La Senda', N'Javier Calamaro - La Senda
A4 Tab by Matt Frear http://www.a4tab.net

VERSE
Em                    D                C
Creo que me estas llevando por el mal camino
Que me lleva por la senda de la tentacion
Y no creo que te vaya a ir muy bien conmigo
Si lo que estas esperando es una bendicion

CHORUS
G             D               Em       C
Quiero que te olvides del amor
G             D               Em (hold)
Quiero que te olvides del amor

VERSE
Y te veo entre las sombras vestida de negro
Ahora se que estas vestida para matar
Y yo zarpo navegando hacia un nuevo puerto
Por las aguas que me alejan de la oscuridad

Quiero que te olvides del amor
Quiero que te olvides del amor
G             D               Em      D         C
Quiero que te olvides del amor

SOLO (play VERSE chords)

REPEAT FIRST VERSE

REPEAT SECOND CHORUS

REPEAT SOLO

End on Em', CAST(0x0000A328012D2603 AS DateTime), CAST(0x0000A328012D2603 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (67, N'matt@a4tab.net', 42, N'Hold on You', N'JEFF BRIDGES - HOLD ON YOU
A4 tab  http://www.a4tab.net

D G D A D x 2

VERSE
D                             G                            D
I been loved and I been alone all my life I been a rolling stone
D                            G	                 C        D
done everything a man can do everything but get a hold on you
C                        D   
done everything a man can do 
G      D            A       D
everything but get a hold on you

G  D  A  D

I''ve been blessed and I''ve been cursed all my lies have been unrehearsed
a wall of fire that I walked through only trying to get a hold on you
a wall of fire that I walked through 
only trying to get a hold on you

G	D	A	D

BRIDGE
A                             D
I saw you waiting at the gate but I arrived a moment late 
A                                G        D           A          D
I saw you shed a single tear but still I can''t get to there from here

I been high and I been low I been people that I don''t know 
I been to China and to Peru only trying to get a hold on you
I been to China and to Peru 
only trying to get a hold on you

only trying to get a hold on you', CAST(0x0000A328012D2606 AS DateTime), CAST(0x0000A328012D2606 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (68, N'matt@a4tab.net', 43, N'I Can See Clearly Now', N'JOHNNY NASH - I CAN SEE CLEARLY NOW
A4 tab from http://www.a4tab.net

VERSE
D          G               D
I can see clearly now the rain is gone
D          G            A
I can see all obstacles in my way
D             G                D
Gone all the dark clouds that made me blind

CHORUS
                 C                 G                         D
It''s gonna be a bright, (bright) bright, (bright) sun shiny day
                 C                 G                         D
It''s gonna be a bright, (bright) bright, (bright) sun shiny day

Yes I can make it now the pain is gone,
All of the bad feelings have disappeared.
Here is the rainbow I have been praying for.
It''s gonna be a bright, (bright) bright, (bright) sun shiny day

BRIDGE
F                                     C
Look all around, there''s nothing but blue skies
F                   
Look straight ahead,
                      A         C#m G C#m G C Bm A
 there''s nothing but blue skies _________


VERSE
I can see clearly now the rain is gone
I can see all obstacles in my way
Here is the rainbow I have been praying for.

It''s gonna be a bright, (bright) bright, (bright) sun shiny day
It''s gonna be a bright, (bright) bright, (bright) sun shiny day

It''s gonna be a bright, (bright) bright, (bright) sun shiny day
It''s gonna be a bright, (bright) bright, (bright) sun shiny day
', CAST(0x0000A328012D2607 AS DateTime), CAST(0x0000A328012D2607 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (69, N'matt@a4tab.net', 44, N'Dificil', N'JUANES - DIFICIL
A4 tab  http://www.a4tab.net
                 C#m            E(C shape)   F#sus4    F#
No s� que es m�s dif�cil            ya para mi
si irme y olvidarte o tu mejor amigo ser.
Ya somos tan distintos y afines a la vez,
ya no es posible amarnos como la primera vez.

Lo veo en tus ojos cansados de llorar
andar en esta guerra luchando por amarnos bien.
Lo siento en mis l�grimas que ahogan ya mi fe
de hablarnos como antes como la primera vez.

CHORUS
Y quiero gritar y quiero gritar.
Por qu� se acab�? Por qu� termin�?
Si supuestamente esto era para siempre.
Por qu� se acab�? Por qu� termin� as�?

A d�nde fue nuestro amor? jard�n que sembramos los dos.
A d�nde fue nuestro amor? el viento se lo llev�.

"En el lugar m�s obscuro de mi esp�ritu, se refleja
aun viva tu imagen y conoce tu carne, tu vida y tu fuerza
tu noche, tu espacio, tu mente"

Y quiero gritar quiero gritar.
Por qu� se acab�? Por que termin�?
Si supuestamente esto era para siempre.
Por qu� se acab�? Por qu� termin� as�?

por qu� se acab�? Por qu� termin�?
Si supuestamente esto era para siempre.
Por qu� se acab�? Por qu� termin� as�?

A d�nde fue nuestro amor?
jard�n que sembramos los dos.
A d�nde fue nuestro amor?
el viento se lo llev�.', CAST(0x0000A328012D2608 AS DateTime), CAST(0x0000A328012D2608 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (70, N'matt@a4tab.net', 45, N'Down With My Baby', N'KEVIN JOHANSEN - DOWN WITH MY BABY
A4 tab by Matt Frear http://www.a4tab.net

A                         F#m
I''m gonna get down with my baby,
A                              C#m
and I''m gonna get down, with her soon.
D                            B
She''s on her way, and I just can''t wait,
G                           C
she''ll be back by this afternoon, wooo

I''ve been waitin'' for this moment, baby
Knowing all along that it was goin'' to happen
Even through the moments of doubt, baby
I knew you''d come through

You owed it to yourself
You were with him for way too long
Trapped in your own fears for almost 8 years

[STRUM]

And all you had to do was wake up and walk out
�Cause I was here, waitin'' all along
(high) And I just can''t wait
And now you know

Now you know that you belong to yourself
Not to him. not to me
(high) And I just can''t wait
And you chose me
Thank you
', CAST(0x0000A328012D260A AS DateTime), CAST(0x0000A328012D260A AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (71, N'matt@a4tab.net', 46, N'Sex on Fire', N'KINGS OF LEON - SEX ON FIRE
A4 tab by Matt Frear www.a4tab.net

VERSE RIFF
          E   E   E         C#m   C#m
D|--11p9--9---9---9--|-7p6--6--6---6-
A|--7-----7---7---7--|-4----4--4---4-
E|-------------------|---------------

VERSE
E                     
Lay where you''re laying Don''t make a sound 
             C#m  
I know they''re watching They''re watching

All the commotion "The kiddie-like play" 
Has people talking Talking

CHORUS
E                C#m
You Your sex is on fire

VERSE
Dark of the alley The breaking of day 
Head while I''m driving I''m driving

Soft lips are open Them knuckles are pale 
Feels like you''re dying You''re dying

CHORUS
E                  C#m    A
You Your sex is on fire 
Consumed, with what''s to transpire

Hot as a fever Rattling bones 
I could just taste it Taste it

If it''s not forever If it''s just tonight 
Oh we''re still the greatest The greatest The greatest

CHORUS
You Your sex is on fire 
E (stop)           C#m (stop)
You Your sex is on fire
E (stop)           C#m (stop)      A (stop)
Consumed, with what''s to transpire

And you Your sex is on fire 
Consumed, with what''s to transpire.', CAST(0x0000A328012D260C AS DateTime), CAST(0x0000A328012D260C AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (72, N'matt@a4tab.net', 46, N'Use Somebody', N'KINGS OF LEON - USE SOMEBODY
A4 tab by Matt Frear http://www.a4tab.net

All E-shape bar chords
C             C/E           F x2
(Oh, oh, oh, oh, oh, oh
Oh, oh, oh, oh, oh, oh
Am          C             F x2
Oh, oh, oh, oh, oh, oh
Oh, oh, oh, oh, oh, oh)

I''ve been roaming around, Always looking down at all I see
Painted faces, fill the places I can''t reach

You know that I could use somebody...
you know that I could use somebody...

Someone like you and all you know and how you speak
countless lovers under cover of the streets

You know that I could use somebody...
you know that I could use somebody...

Someone like you

(Oh, oh, oh, oh, oh, oh
Oh, oh, oh, oh, oh, oh [wha-ah-ah]
Oh, oh, oh, oh, oh, oh [wha-ah-ah]
Oh, oh, oh, oh, oh, oh)

Off in the night, while you live it up, I''m off to sleep
waging wars to shape the poet and the beat

I hope it''s going to make you notice...
I hope it''s going to make you notice...

Someone like me...
(Oh, oh, oh, oh, oh, oh) Someone like me...
(Oh, oh, oh, oh, oh, oh) someone like me... somebody...
(Oh, oh, oh, oh, oh, oh) [wha-ah-ah]
(Oh, oh, oh, oh, oh, oh)

D                    F#m
(I''m ready now, I''m ready now
                   D
I''m ready now, I''m ready now
                    F#m                    B
I''m ready now, I''m ready now I''m ready now)

SOLO
C       C/E       F (once)
Am        C              F
(Oh, oh, oh, oh, oh, oh) Someone like you... somebody
(Oh, oh, oh, oh, oh, oh) Someone like you... somebody
(Oh, oh, oh, oh, oh, oh) Someone like you... somebody
(Oh, oh, oh, oh, oh, oh)
                  C                    C/E             F
I''ve been roaming around, Always looking down at all I see', CAST(0x0000A328012D260E AS DateTime), CAST(0x0000A328012D260E AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (73, N'matt@a4tab.net', 47, N'En El Muelle De San Blas', N'Mana - En El Muelle de San Blas
A4 tab by Matt Frear http://www.a4tab.net

INTRO
Em         A      D           G      D/F#
Sola en el olvido sola con su esp�ritu
Em         A      D           G      A
Sola en el olvido sola con su esp�ritu

VERSE
Em                 A          D                                   G D/F#
Ella despidi� a su amor el parti� en un barco en el muelle de San Blas
�l jur� que volver�a y empapada en llanto ella jur� que esperar�a
miles de lunas pasaron y siempre ella estaba en el muelle, esperando
muchas tardes se anidaron se anidaron en su pelo y en sus labios

Ooh oooh oooh
Ooh oooh oooh

Llevaba el mismo vestido y por si el volviera no se fuera a equivocar
los cangrejos le mordian sus ropajes, su tristeza y su ilusion
y el tiempo se escurrio y sus ojos se le llenaron de amaneceres
y del mar se enamor� y su cuerpo se enrraiz� en el muelle

CHORUS
D               A
Sola, sola en el olvido
  Bm              A
sola, sola con su esp�ritu
  D                A
sola, sola con su amor del mar
  G   A                      D
solaaaa, en el muelle de San Blas

Su cabello se blanque� pero ning�n barco a su amor le devolv�a
y en el pueblo le dec�an le dec�an la loca del muelle de San Blas
y una tarde de abril la intentaron trasladar al manicomio
nadie la pudo arrancar y del mar nunca jam�s la separaron

REPEAT CHORUS

BRIDGE
Bm (Bsus2) Bm G    Bm    A

REPEAT CHORUS (sin canta el fin)

REPEAT CHORUS 

OUTRO
D        G
        Oooooh  seeee
D     Dsus4    D      G
se qued�, se qued�, sola sola
se qued�, se qued�, con el sol y con el mar
se qued� ahi, se qued� hasta el fin,
se qued� ahi, se qued�, en el muelle de San Blas
Oooh, Sola sola se qued�.', CAST(0x0000A328012D2610 AS DateTime), CAST(0x0000A328012D2610 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (74, N'matt@a4tab.net', 47, N'Te Salté La Rienda', N'Mana - Te Salt� La Rienda
A4 tab by Matt Frear http://www.a4tab.net

INTRO
e-5-7-8-9-8-7-5---
B-----------------
G-6-7-8-9-8-7-6---
D-----------------
A-----------------
E-----------------

VERSE
A
Se me acab� la fuerza de mi mano izquierda
                               E
voy a dejarte el mundo para ti solita

Como al caballo blanco le solt� la rienda
                                   A
a ti tambi�n te suelto y te me vas ahorita


CHORUS
            D
Y cuando al fin comprendas que el amor bonito lo ten�as conmigo
                 E
Vas a extra�ar mis besos en los propios brazos del que est� contigo
                 D               E              A              F#m
Vas a sentir que lloras sin poder siquiera derramar tu llanto
                  Bm                E                    A     F#m
y vas a querer mirarte en mis ojos tristes que quisiste tanto
             Bm     E
que quisiste tanto
     A
que quisiste tanto

SOLO
A   E    Bm    E    A

Cuando se quiera fuerza rebasar la meta
y se abandona todo lo que se ha tenido
Como t� traes el alma con la rienda suelta
a ti tambi�n te suelto y te me vas ahorita

REPEAT CHORUS
y que quieres tanto

                E                    A
Se me acab� la fuerza y te solt� la rienda', CAST(0x0000A328012D2611 AS DateTime), CAST(0x0000A328012D2611 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (75, N'matt@a4tab.net', 47, N'Desapariciones', N'Man� - Desapariciones

Am                                    G             E
Oh oh oh...

Am                                    G             E
Que alguien me diga si han visto a mi esposo preguntaba la Do�a
Se llama Ernesto X, tiene cuarenta a�os
F                                   C
trabaja de celador, en un negocio el carros
llevaba camisa oscura y pantal�n claro
E                         A
Sali� antenoche y no ha regresado
D                 G               E                     Am
y no s� ya qu� pensar. Pues esto, antes no me hab�a pasado
Oh oh oh...

Llevo tres d�as buscando a mi hermana
se llama Altagracia igual que la abuela
sali� del trabajo pa'' la escuela
llevaba unos jeans y una camisa clara
no ha sido el novio, el tipo est� en su casa
no saben de ella en la PSN ni en el hospital
Oh oh oh...

Que alguien me diga si han visto a mi hijo
es estudiante de PRE-medicina
se llama Agust�n y es un buen muchacho
a veces es terco cuando opina
lo han detenido, no s� qu� fuerza
pantal�n claro, camisa a rayas pas� anteayer

CHORUS
Am                      G                    E
Ad�nde van los desaparecidos? busca en el agua y en los matorrales
y por qu� es que se desaparecen? por qu� no todos somos iguales
y cu�ndo vuelve el desaparecido? cada ves que lo trae el pensamiento
c�mo se le habla al desaparecido? con la emoci�n apretando por dentro
Oh oh oh...
 
Clara Clara Clara Clara Qui�ones se llama mi madre
ella es, ella es un alma de Dios no se mete con nadie
Y se la han llevado de testigo
por un asunto que es nada m�s conmigo
y fue a entregarme hoy por la tarde
y ahora dicen que no saben qui�n se la llev�. del cuartel

Anoche escuch� varias explosiones pat�n pata pat�n pete
tiro de escopeta y de revolver
carros acelerados frenos gritos
eco de botas en la calle
toque de puertas por dioses platos rotos
estaban dando la telenovela por eso nadie mir� pa''fuera

REPEAT CHORUS', CAST(0x0000A328012D2614 AS DateTime), CAST(0x0000A328012D2614 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (76, N'matt@a4tab.net', 47, N'Rayando El Sol chords', N'Mana - Rayando el sol
A4 tab http://www.a4tab.net

INTRO
G D Em C 
G Bm C D Em

VERSE
            G C             D C
Rayando el sol rayando por ti
      G                 C            D C 
esta pena me duele me quema sin tu amor
       Bm            C          D
No me has llamado estoy desesperado
     Bm          C                 D
son muchas lunas las que te he llorado


CHORUS
            G D        Em   C
Rayando el sol desesperacion
        G               Bm               C D 
es mas facil llegar al sol que a tu corazon
              G D              Em C
Me muero por ti  viviendo sin ti
        G              Bm           C D 
y no aguanto me duele tanto estar asi
             Em 
rayando el sol

VERSE

A tu casa yo fui y no te encontre
en el parque, en la plaza, en el cine yo te busque
Te tengo atrapada entre mi piel y mi alma. mas ya 
no puedo tanto y quiero estar junto a ti

REPEAT CHORUS

LEAD
    C D Bm C D

HARMONICA
Em Bm C D Em Bm C D

REPEAT CHORUS

OUTRO
             G          D Em        C
rayando el sol (rayando,     rayando) 
        G                Bm        C  
Rayando el sol, (rayando,  rayando) 
            D              G
ay ay ay ay ay ay! Rayando el sol...', CAST(0x0000A328012D2615 AS DateTime), CAST(0x0000A328012D2615 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (77, N'matt@a4tab.net', 48, N'Sunday Morning', N'MAROON 5 - SUNDAY MORNING
A4 tab  http://www.a4tab.net

VERSE
Dm7     G              C
Sunday morning rain is falling
Dm7     G              Cmaj7
Steal some covers share some skin

Clouds are shrouding us in moments unforgettable
You twist to fit the mold that I am in

But things just get so crazy living life gets hard to do
And I would gladly hit the road get up and go if I knew
That someday it would lead me back to you
That someday it would lead me back to you

CHORUS
That maybe all I need
In darkness she is all I see
Come and rest your bones with me
Driving slow on Sunday morning
And I never want to leave

Fingers trace your every outline
Paint a picture with my hands
Back and forth we sway like branches in a storm
Change the weather still together when it ends

REPEAT CHORUS

LEAD BREAK
|----------------|--------------------|---------------|
|----------------|--------------------|---------------|
|----------------|--------------------|---------------|
|-----1-2--------|--------------------|---------------|
|-3---------2-1-0|-2-3----2-3----2-3--|------------3--|
|----------------|-----3------2------1|-1-3--x-3-5---5|
                                                
|----------------|--------------------|----------|-----------|
|----------------|--------------------|----------|-----------|
|----------------|--------------------|----------|-----------|
|-----1-2--------|--------------------|----------|-----------|
|-3---------2-1-0|-2-3----2-3----2-3--|---------3|--4----5---|
|----------------|-----3------2------1|--3--5----|-----------|

But things just get so crazy living life gets hard to do
Sunday morning rain is falling and I''m calling out to you
Singing someday it''ll bring me back to you
Find a way to bring myself back home to you

And you may not know
REPEAT CHORUS TO FADE (oh yeah yeah)', CAST(0x0000A328012D2617 AS DateTime), CAST(0x0000A328012D2617 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (78, N'matt@a4tab.net', 49, N'The Letter', N'MIDNIGHT YOUTH - THE LETTER
A4 tab by Matt Frear http://www.a4tab.net

Capo first fret

VERSE
C                   Am                           F      G
Yesterday, I got a letter, from an old friend of mine.
It had some words and a picture, you had changed your life. You said that...

F                       G                F                       G
If you''re the same boy I knew of, when those days slipped slowly by, 
F                       G     C  C/B   Am   G F           G
we should meet up and see if, we could be all right, this time.

VERSE
And so we talked of our stories til the sun and the waves, they turned in.
We made plans for the next year, you were on my mind, all of the time. Because 

If you''re the same girl I knew of, when those days slipped slowly by, 
Well we should meet up and see if, we could be all right, this time.

CHORUS
                         F          C           G
Do you think that I will change your world if I go?
Join you on the shore with stories untold?
                            F       G       C   C/B    Am   G    F
Do you think that we could do this, living, breathing, under the sun?
          G                  C
Not on my mind, all of the time.

SOLO

If we''re the same kids we knew of, when those days slipped slowly by.
Well we should meet up and see if, we could be all right this time.

REPEAT CHORUS

Oh oh oh oh ...
(Did you think that you were homeward bound? Cos I am leaving on the next plane out.
And all these stars, are they aligning now?)

OUTRO
Do you think that I will change your world if I go? 
Join you on the shores with stories untold?
Yeah we could do this, oh
', CAST(0x0000A328012D2618 AS DateTime), CAST(0x0000A328012D2618 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (79, N'matt@a4tab.net', 50, N'Heart of Gold', N'NEIL YOUNG - Heart Of Gold
A4 tab  http://www.a4tab.net

 Em D Em Em D E
               
 Em C D G  x3

 Em D Em
     

 Em      C      D       C   
 I wanna live   I wanna give
 Em          C           D        C    
 I''ve been a miner for a heart of gold.
 Em           C         D       G   
 It''s these expressions I never give
 Em                          G            
 That keep me searchin for a heart of gold
 C                    G
 And I''m gettin old.  
 Em                          G            
 That keep me searchin for a heart of gold
 C                      G
 And I''m gettin old.    

HARMONICA SOLO 1
                       
 I''ve been to Hollywood I''ve been to Redwood
 I crossed the ocean for a heart of gold
 I''ve been in my mind, it''s such a fine line
 That keeps me searching for a Heart of Gold
 And I''m getting old.

 That keeps me searching for a Heart of Gold
 And I''m getting old.

HARMONICA SOLO 2

 Em                     D        Em  
 Keep me searchin for a heart of gold
                              D      Em 
 You keep me searchin and I''m growin old
                        D        Em  
 Keep me searchin for a heart of gold
                         G             
 I''ve been a miner for a heart of gold.

 C           G      (hold)', CAST(0x0000A328012D261A AS DateTime), CAST(0x0000A328012D261A AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (80, N'matt@a4tab.net', 51, N'Don''t Go Away', N'OASIS - DON''T GO AWAY

VERSE
  Am              Am7              Gsus4
a cold and frosty morning, there''s not a lot to say
          Fadd9                Dm   Fadd9
about the things caught in my mind
and as the day was dawning my plane flew away
with all the things caught in my mind

PRE-CHORUS
Dm7/4                                Fadd9   
and i wanna be there when you''re coming down
and i wanna be there when you hit the ground

CHORUS
   Gsus4       C                 C2/B                 Am7*
so don''t go away, say what you say, say that you''ll stay
                 G                   Fmaj7
forever and a day, in the time of my life
                 G                     Am
cos i need more time, yes i need more time
        G            Fmaj7
just to make things right

VERSE
damn my situation and the games i have to play
with all the things caught in my mind
damn my education, i can''t find the words to say
with all the things caught in my mind

REPEAT PRE-CHORUS

REPEAT CHORUS

BRIDGE
Fm                        C   C2/B   Am
  me and you what''s going on?
F                             Fm
all we seem to know is how to show
                      C    C2/B   Am   G   F   G
the feelings that are wrong

REPEAT CHORUS

REPEAT CHORUS
', CAST(0x0000A328012D261C AS DateTime), CAST(0x0000A328012D261C AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (81, N'matt@a4tab.net', 51, N'Don''t look back in anger', N'OASIS - DON''T LOOK BACK IN ANGER
A4 tab by Matt Frear www.a4tab.net

VERSE
C               G               Am
Slip inside the eye of your mind
          E7             F     G
Don''t you know you might find
                    C     Am G
A better place to play

You said that you''d never been
But all the things that you''ve seen Slowly fade away

PRE-CHORUS
F            Fm                 C
So I start a revolution from my bed
Cos you said the brains I have went to my head
Step outside the summertime''s in bloom
G
Stand up beside the fireplace
G#/E7
Take that look from off your face
Am                 G                F             G
Cos you ain''t ever going to burn my heart ouuuuuuuuuut

CHORUS
C   G        Am        E7             F
So Sally can wait, she knows it''s too late
         G          C    Am G
As we''re walking on by
Her soul slides away, but don''t look back in anger
I heard you say

VERSE
Take me to the place where you go
Where nobody knows If it''s night or day
Please don''t put your life in the hands
Of a Rock and Roll band Who''ll throw it all away

REPEAT PRE-CHORUS

CHORUS

SOLO (play Pre-Chorus

REPEAT CHORUS

REPEAT HALF CHORUS, then

OUTRO 
E7                      F                  Fm
  But don''t look back in anger, don''t look back in anger

I heard you say… At least not today', CAST(0x0000A328012D261D AS DateTime), CAST(0x0000A328012D261D AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (82, N'matt@a4tab.net', 51, N'Live Forever', N'OASIS - LIVE FOREVER

VERSE
G	       D	         Am7
Maybe, I don''t really wanna know How your garden grows
C	     D
I just wanna fly

Lately, did you ever feel the pain in the morning rain
as it soaks it to the bone

CHORUS
Em7		     D
  Maybe I just wanna fly
			   Am7
Wanna live I don''t wanna die
		   C
Maybe I just wanna breathe
      D		      Em
Maybe I just don''t believe
			 D
Maybe you''re the same as me
			    Am7
We see things they''ll never see
			    Fadd9
You and I are gonna live forever

REPEAT VERSE ONE

CHORUS
Em7                D
Maybe i will never be
                        Am7
all the things i want to be
                        C
but now is not the time to cry
       D                   Em
now''s the time to find out why.
                           D
i think you''re the same as me
                            Am7
we see things they''ll never see
                            Fadd9
you and i are gonna live forever.

SOLO (repeat verse chords, then chorus chords)

REPEAT VERSE ONE

REPEAT CHORUS ONE

OUTRO
Am7              Fadd9    Am7
gonna live forever       gonna live forever
Am7               Fadd9   Am7
gonna live forever       gonna live forever


Am7       Fadd9        Am7        Fadd9       Am7
', CAST(0x0000A328012D261F AS DateTime), CAST(0x0000A328012D261F AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (83, N'matt@a4tab.net', 51, N'Wonderwall', N'OASIS - WONDERWALL

Capo 2nd fret

VERSE

Em7        G		 		 Dsus4			A7sus4
  Today is gonna be the day that they''re gonna throw it back to you
  By now you should''ve somehow realized what you gotta do
I don''t believe that anybody feels the way I do
	  Cadd9	   Dsus4    A7sus4 
About you now

   Backbeat, the word is on the street that the fire in your heart is out
   I''m sure you''ve heard it all before but you never really had a doubt
I don''t believe that anybody feels the way I do 
about you now


PRE-CHORUS
    Cadd9            Dsus4	      Em7
And all the roads we have to walk are winding
And all the lights that lead us there are blinding
There are many things that I 
      G       Dsus4/F#  Em7        G         A7sus4
would like to say to    you but I don''t know how

Chorus
------
	Cadd9  Em7   G    Em7   		     Cadd9    Em7   G
Because maybe	        You''re gonna be the one that saves me
   Em7       Cadd9   Em7   G         Em7          Cadd9  Em7   G  Em7
And after all		     You''re my wonderwall

(hold Em7, then silence)

drums come in, then:

G

VERSE

Today was gonna be the day but they''ll never throw it back to you
By now you should''ve somehow realized what you''re not to do
I don''t believe that anybody feels the way I do about you now

REPEAT PRE-CHORUS

REPEAT CHORUS

OUTRO
-----
[this riff repeated a number of times with chorus chords in background]

   Cadd9    Em7     G       Em7
e--------3--0-------------3--0----
B--0--1----------1--0--1----------
G---------------------------------
D---------------------------------
A---------------------------------
E---------------------------------
', CAST(0x0000A328012D2620 AS DateTime), CAST(0x0000A328012D2620 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (84, N'matt@a4tab.net', 52, N'One Day', N'Opshop - One Day
A4 Tab by Matt Frear http://www.a4tab.net

VERSE
A                 Bm         F#m    
Absence makes her heart grow fonder
            D            Bm       A
While I''m conquering the last frontier
Lately I''ve found myself wonderin'' out loud 
Wonderin'' what I was doin'' here

CHORUS
    G                 D             A
One day you''ll understand how much you have me
One day you''ll realise we have it easy
I can''t offer you the future - I don''t know it myself
    Bm           G     A
All I can offer you is me
              Bm        G
I''m all I can offer you right now

VERSE
Patience makes her heart grow stronger 
Reassure her she''s where I want to be
Never was the grass ever greener I''m about ready as I''ll ever be

CHORUS
And one day you''ll understand how much you have me
One day you''ll realise we have it easy
If an expression of love is what you need to believe
All I can offer you is me
I''m all I can offer you right now

BRIDGE
C                  D
C                  D
                     I''m all I am
C                  D
                     All I am, yeah
C                  D

CHORUS
One day you''ll understand how much you have me
One day you''ll realise we have it easy
I can''t offer you the future - I don''t know it myself
All I can offer you is me

REPEAT FIRST CHORUS

[Pause]
Absence make her heart grow fonder
While I''m conquering the last frontier', CAST(0x0000A328012D2621 AS DateTime), CAST(0x0000A328012D2621 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (85, N'matt@a4tab.net', 52, N'Waiting Now', N'Opshop - Waiting Now
A4 Tab by Matt Frear http://www.a4tab.net

VERSE
G     Am         F
Dawn says almost everything
Passing in front of you and me Disguised as a memory
We''re all guilty and under the influence - of gravity
But I''m so partial to those moments with you
Oh I''m so partial to those moments with you

Oh-woah�
Oh-woah�

I''ve bathed in our own lament
When we were flashing in front of my eyes and 
I and I and me are my own worst enemies
But I hope you''ll see the best of us in time

CHORUS
    F       G            Am
I''m waitin'' now for this cause to take effect
    F       Am      G
I''m waitin'' now - I am
                  F           G       Am
And though you''re standing up high on this precipice
   F        G    Am
I''m waitin'' now I am
F       Am       G
Waitin'' now         - I am

VERSE
G       Am         F
                      I am
I''ll kneel before my, before my detriment
Before my stomach starts churning both inside and out
I''ve been broken down before 
And this apartment - is still a mess

REPEAT CHORUS

BRIDGE
F    G     Am  Em    F
          Woah�    woah�
          Woah�    woah�

REPEAT CHORUS

VERSE
I am
I am
I am', CAST(0x0000A328012D2623 AS DateTime), CAST(0x0000A328012D2623 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (86, N'matt@a4tab.net', 53, N'Black', N'PEARL JAM - BLACK
A4 Tab by Matt Frear http://www.a4tab.net

Hey...oooh...

E               A  Asus4  A       E         A      Asus4 A
Sheets of empty canvas, untouched sheets of clay
Were laid spread out before me as her body once did
All five horizons revolved around her soul
As the earth to the sun
Now the air I tasted and breathed has taken a turn

CHORUS
     C                           Em
Ooh, and all I taught her was everything
Ooh, I know she gave me all that she wore
           D                   C 
And now my bitter hands chafe beneath the clouds
            Em
Of what was everything?
        D                      C                          Em
Oh, the pictures have all been washed in black, tattooed Everything...

I take a walk outside
I''m surrounded by some kids at play
I can feel their laughter, so why do I sear


Oh, and twisted thoughts that spin round my head
I''m spinning, oh, I''m spinning
How quick the sun can, drop away
And now my bitter hands cradle broken glass
Of what was everything
All the pictures have all been washed in black, tattooed everything...
All the love gone bad turned my world to black
Tattooed all I see, all that I am, all I will be...yeah...

Uh huh...uh huh...ooh...

I know someday you''ll have a beautiful life, I know you''ll be a star
In somebody else''s sky, but why, why, why
Can''t it be, can''t it be mine', CAST(0x0000A328012D2625 AS DateTime), CAST(0x0000A328012D2625 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (87, N'matt@a4tab.net', 53, N'Oceans', N'Pearl Jam
Oceans

 Dbsus4    Db          E/D          G/D
  --2--    --1--	   --4--        --7--
  --2--    --2--	   --5--        --8--
  --1--    --1--	   --4--        --7--
  -----    -----	   --0--        --0--
  -----    -----	   -----        -----
  -----    -----	   -----        -----

 D              Dbsus4 Db
 Hold on to the thread
     D                   Dbsus4   Db
 The currents will shift glide me towards
 D                    Dbsus4  Db
 You know something''s left
     D                 Dbsus4   Db
 And we''re all allowed to dream of the 
 C
 Next   ohh   of the next time we
 
 D     E/D    G/D   D      C
 Oooh  oooh   oooh  oooh
 D     E/D    G/D   D      C
 Oooh  oooh   oooh  oooh
 
 You don''t have to stray    
 The oceans away, waves roll in my 
 Thoughts, hold tight the ring
 The sea will rise please stand by the 
 C
 Shore  oh ohh   oh I will be, I will be there once 
 
 D     E/D    G/D   D      C
 More  oooh   oooh  oooh
 Oooh  oooh   oooh  oooh
 Ahhh  ahhh   ohhh  ohhh
 Ahhh  ahhh   ohhh  ohhh
 ', CAST(0x0000A328012D2625 AS DateTime), CAST(0x0000A328012D2625 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (88, N'matt@a4tab.net', 54, N'So Beautiful', N'PETE MURRAY - SO BEAUTIFUL
A4 Tab by Matt Frear http://www.a4tab.net
Standard Tuning, Capo on 3rd fret (Tab is written relative to capo)

VERSE
Em
Found myself just the other day
Asus4                Csus2                   Asus2
in the backyard of a friends place, thinking about you
thinking of the crowd you''re in
what you''re up to where you''ve been, just thinking

you know the clothes that you wear
and the colour in your hair, shouldn''t change you
now you tell me why is it so
you''re bigger than mighty joe, at least you think so

CHORUS
Em    Am  Asus2 Am       D      
          God my fingers burn
   Dsus2 D   C         D          Em
now when i think of touching your hair

you have changed so much that I don''t know
if I can call you and tell you I care
and I would love to bring you down
plant your feet back on the ground

POST CHORUS:    Em       Asus2/Am                           

VERSE
threw a smoke down on the ground
turned my head and I heard the sound, that reminded me
of the days so young and sweet
always so much fun to me, at least I thought so
and now you think you''re so damn fine
you can rule the world no not mine, I don''t think so 

REPEAT CHORUS

PLAY CHORUS CHORDS FOR BREAK

you know the scene that you''re in
and the people that you''ve been with, just get to me
but you think I''m not as cool
as you are so beautiful, who you fooling?
well I''m here to tell you babe
the game you''re in in just a game, so damn pretentious

REPEAT CHORUS

you think you''re so beautiful, so beautiful', CAST(0x0000A328012D2627 AS DateTime), CAST(0x0000A328012D2627 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (89, N'matt@a4tab.net', 55, N'Try', N'PINK - TRY
A4 tab by Matt Frear www.a4tab.net

 VERSE
 Bm           G              D        A
 Ever wonder about what he''s doing
 How it all turned to lies
 Sometimes I think that it''s better 
 To never ask why

 (Bm    G     D    A)

 CHORUS
                   G                         D
 Where there is desire  There is gonna be a flame
                    A                            Bm
 Where there is a flame Someone''s bound to get burned
 But just because it burns Doesn''t mean you''re gonna die
 You''ve gotta get up and try try try
 Gotta get up and try try try
 You gotta get up and try try Try
 
 VERSE
 Funny how the heart can be deceiving
 More than just a couple times
 Why do we fall in love so easy
 Even when it''s not right

 REPEAT CHORUS

 VERSE
 Ever worried that it might be ruined
 And does it make you wanna cry?
 When you''re out there doing what you''re doing
 Are you just getting by?
 Tell me are you just getting by by by

 REPEAT CHORUS
 
 Gotta get up and try try try
 You gotta get up and try try try
 Gotta get up and try try try
 You gotta get up and try try try
 
 VERSE
 You gotta get up and try try try
 Gotta get up and try try try ', CAST(0x0000A328012D2629 AS DateTime), CAST(0x0000A328012D2629 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (90, N'matt@a4tab.net', 56, N'Universally Speaking', N'RED HOT CHILI PEPPERS - UNIVERSALLY SPEAKING (from By the Way)
A4 tab from http://www.a4tab.net

VERSE
D � � � � � Em7
I saw your face elegant and tired
cut up from the chase still i so admired
blood shot your smile delicate and wild
well give me she wolf style rip right thru me

PRE-CHORUS
silvereta the jets of a lifetime
go and get her i got her on my mind
nothing better the feeling is so fine [all the better to make it so fine]
simply put i saw your love stream flow

CHORUS
A
come on baby cos there''s no name for
Amaj7
give it up and i got what i came for
G � � � � � Bm
universally speaking i
A
take you back and you make me nervous
Amaj7
nothing better than love and service
G � � � � � Bm � � �F#m7/b5
universally speaking i
B7+              Em
win in the long run

VERSE
i saw your crime dying to get high
two of a kind beats all hands tonite

REPEAT PRE-CHORUS
REPEAT CHORUS�

REPEAT PRE-CHORUS then
Simply put I saw your love stream flow
let''s go

SOLO', CAST(0x0000A328012D262B AS DateTime), CAST(0x0000A328012D262B AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (91, N'matt@a4tab.net', 56, N'Scar Tissue', N'RED HOT CHILI PEPPERS - CALIFORNICATION - 03 - SCAR TISSUE

VERSE - bar chords
F (high)                   Dm
Scar tissue that I wish you saw Sarcastic mister know it all
Close your eyes and I''ll kiss you ''cause With the birds I''ll share

CHORUS
F (low)                        Dm
With the birds I''ll share This lonely view
With the birds I''ll share This lonely view

Push me up against the wall Young Kentucky girl in a push-up bra
Fallin'' all over myself To lick your heart and taste your health cos

REPEAT CHORUS
F                              Dm     C   Dm
With the birds I''ll share This lonely view

SOLO - play Dm  C  Dm   Dm E F 
e|-8s5-5s3-3s5-5s7-7s8

Blood loss in a bathroom stall Southern girl with a scarlet drawl
Wave goodbye to ma and pa ''cause With the birds I''ll share

REPEAT CHORUS

Soft spoken with a broken jaw Step outside but not to brawl
Autumn''s sweet we call it fall 
I''ll make it to the moon if I have to crawl

REPEAT CHORUS

SOLO 2 
e|-8s10-10s8s5-5s3-8s5--8s10-12s8s5-8s3-8s5--10s12s13

REPEAT FIRST VERSE

REPEAT CHORUS

SOLO 3 
e|-15s17-17s15-15s17s12-12s13s10-8s10s8s10-10s8s5-8s3-8s5

e|-----3s5-5-5-5---------------------3s5--13s12-8s10s5-8s3--3s5-
B|-5s3-----------3s5-3-3s5--------------------------------------
G|-------------------------5-5s7s2------------------------------
', CAST(0x0000A328012D262D AS DateTime), CAST(0x0000A328012D262D AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (92, N'matt@a4tab.net', 56, N'Otherside', N'RED HOT CHILI PEPPERS - OTHERSIDE
A4 tab by Matt Frear http://www.a4tab.net

INTRO
D|----------7-7-9-7-5---------------|
A|---7-7-7------------7-----5-5-5---|
E|----------------------------------|

CHORUS - first time, no chords, just intro
Am          F             C
How long how long  will I slide
G           Am    
Separate my side   I don''t
I don''t believe it''s bad
Slit my throat It''s all I ever

VERSE
Am                                Em
I heard your voice through a photograph
I thought it up it brought up the past
Once you know you can never go back
             G                  A
I''ve got to take it on the otherside

Centuries are what it meant to me, A cemetery where I marry the sea
Stranger things could never change my mind
             G                  A
I''ve got to take it on the otherside
G                  A
Take it on the otherside
G              A
Take it on    Take it on

REPEAT CHORUS

Pour my life into a paper cup, The ashtray''s full and I''m spillin'' my guts
She wants to know am I still a slut, I''ve got to take it on the otherside

Scarlet starlet and she''s in my bed, A candidate for my soul mate bled
Push the trigger and pull the thread, I''ve got to take it on the otherside
Take it on the otherside, Take it on     Take it on

REPEAT CHORUS

BRIDGE

Em
Turn me on take me for a hard ride
  C
Burn me out leave me on the otherside
I yell and tell it that It''s not my friend
I tear it down I tear it down And then it''s born again

SOLO (play chorus chords)
e|-------------|-12-12-12-12-12-|-15-12-12-12-12-|
B|-10-10-10-10-|----------------|----------------|

e-15-12-12-15-12-12-15-12-15s17

REPEAT CHORUS x2', CAST(0x0000A328012D262E AS DateTime), CAST(0x0000A328012D262E AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (93, N'matt@a4tab.net', 56, N'Californication', N'RED HOT CHILI PEPPERS - CALIFORNICATION
A4 tab by Matt Frear http://www.a4tab.net

(Intro/Verse)
    Am                  F                         
e|-----------------------------------------------|
B|--------0-1------------------------------------|
G|--------2-----------------0-2------------------|
D|-----2------2-0h2p0-------3----3-3--0----------|
A|--0----------------3---3-----------------------|
E|---------------------1-------------------------|

VERSE
Psychic spies from China Try to steal your mind''s elation 
Little girls from Sweden Dream of silver screen quotations 
    C                 G                   Am        Dm
And if you want these kind of dreams It''s Californication 

It''s the edge of the world And all of western civilization 
The sun may rise in the East At least it settles in a foreign location 
It''s understood that Hollywood sells Californication 

PRE CHORUS - STRUM
Pay your surgeon very well To break the spell of aging 
Celebrity skin is this your chin Or is that war your waging 
First born unicorn Hard core soft porn 

CHORUS
C             G   Dm    Am
Dream of Californication 
C             G    Dm   
Dream of Californication 

(PICKING)
Marry me girl be my fairy to the world Be my very own constellation 
A teenage bride with a baby inside Getting high on information 
And buy me a star on the boulevard It''s Californication 

Space may be the final frontier But it''s made in a Hollywood basement 
Cobain can you hear the spheres Singing songs off station to station 
And Alderaan''s not far away It''s Californication 

PRE-CHORUS
Born and raised by those who praise Control of population 
everybody''s been there and I don''t mean on vacation 
First born unicorn Hard core soft porn 

REPEAT CHORUS TWICE

SOLO

Destruction leads to a very rough road But it also breeds creation 
And earthquakes are to a girl''s guitar They''re just another good vibration 
And tidal waves couldn''t save the world From Californication 

PRE-CHORUS
Pay your surgeon very well To break the spell of aging 
Sicker than the rest There is no test But this is what you''re craving 
First born unicorn Hard core soft porn 

REPEAT CHORUS TWICE (ends)


HERE''S THE SOLO:

e|----9-----------9---------------------------|
B|-10----------10-----------------------------|
G|------13s11------13s11--11-11-11-11p9-------|
D|--------------------------------------11-11-|
A|--------------------------------------------|
E|--------------------------------------------|
                           ~~~~
e|--------------------9-12-14----9-12-14s16-14|
B|------------------10---------10-------------|
G|-----9�13s11�9------------------------------|
D|-9-11----------11---------------------------|
A|--------------------------------------------|
E|--------------------------------------------|


e|-17-16-14----14-----------------------------|
B|----------17----17-14-17-14--14-14-14�------|
G|-----------------------------16-16-16-------|
D|--------------------------------------------|
A|--------------------------------------------|
E|--------------------------------------------|
                                                ~~
e|-------14s16-14-12----12----------12-10-9---|
B|-17-14-------------14----14-12-10--------10-|
G|--------------------------------------------|
D|--------------------------------------------|
A|--------------------------------------------|
E|--------------------------------------------|
', CAST(0x0000A328012D262F AS DateTime), CAST(0x0000A328012D262F AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (94, N'matt@a4tab.net', 56, N'Easily', N'RED HOT CHILI PEPPERS - CALIFORNICATION - 07 - EASILY
A4 tab by Matt Frear http://www.a4tab.net

VERSE
Am  Dm  F        (G)
Easily let''s get carried away
Easily let''s get married today
Shao Lin shouted a rose from his throat Everything must go
A lickin'' stick is thicker When you break it to show
Everything must go

BRIDGE
C                            G          F
The story of a woman on the morning of a war
Remind me if you will exactly what we''re fighting for
Am                      G           F
Calling calling for something in the air
Calling calling I know you must be there

VERSE
Easily let''s get caught in a wave
Easily we won''t get caught in a cave
Shao Lin''s shakin'' for the sake of his soul Everything must go 
Lookin'' mighty tired of All the thing that you own
Everything must go

BRIDGE
I can''t tell you who to idolize
You think it''s almost over But it''s only on the rise 
Calling calling For something in the air
Calling calling I know you must be there

BRIDGE
The story of a woman on the morning of a war
Remind me if you will exactly what we''re fighting for
Throw me to the wolves Because there''s order in the pack
Throw me to the sky Because I know I''m coming back

SOLO (play verse chords)

VERSE
Shao Lin''s shakin'' for the sake of his soul Everything must go 
Lookin'' mighty tired of All the thing that you own
Everything must go

BRIDGE
The story of a woman on the morning of a war
Remind me if you will exactly what we''re fighting for
Calling calling for something in the air
Calling calling I know you must be there

I don''t want to be your little research monkey boy
The creature that I am is only going to destroy
Throw me to the wolves Because there''s order in the pack 
Throw me to the sky Because I know I''m coming back 

SOLO 2', CAST(0x0000A328012D2631 AS DateTime), CAST(0x0000A328012D2631 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (95, N'matt@a4tab.net', 56, N'This Velvet Glove', N'RED HOT CHILI PEPPERS - CALIFORNICATION - 11 - THIS VELVET GLOVE
A4 tab by Matt Frear http://www.a4tab.net

Dm     C   Bb                  Dm      C       Bb
Close to my skin I''m falling in Someone who''s been 
Sittin'' by the phone I''m left alone In another zone 
John says to live above hell My will is well 
No one is waiting For me to fail My will could sail yeah 

It''s such a waste to be wasted In the first place 
I want to taste the taste of Being face to face with common grace 
To meditate on the warmest dream 
And when I walk alone I listen to our secret theme 

CHORUS
Dm                       Am
Your solar eyes are like Nothing I have ever seen 
Somebody close That can see right through 
I''d take a fall and you know That I''d do anything 
C          Am
I will for you 

Sailin'' for the sun ''Cause There is one Knows where I''m from 
I care for you I really do I really do 
Come closer now So you can lie Right by my side 
Sit alone in the sun I wrote a letter to you Getting over myself 

REPEAT CHORUS

REPEAT CHORUS 

Close to my skin Someone who''s been I''m a falling in 
Disasters are Just another star Falling in my yard 
John says to live above hell My will is well 
Long to be with Someone to tell I love your smell	
', CAST(0x0000A328012D2632 AS DateTime), CAST(0x0000A328012D2632 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (96, N'matt@a4tab.net', 56, N'Desecration Smile', N'RED HOT CHILI PEPPERS - DESECRATION SMILE
A4 tab by Matt Frear http://www.a4tab.net

INTRO
C#m      E  E/F# x2, Em       D  C  x2

VERSE
Em            D    C
All alone not by myself
Another girl bad for my health
I''ve seen it all through someone else and a 
(''nother girl bad for my health)

Celebrated but undisturbed  [la la la la la la...] 
serenaded by the terror bird
It''s seldom seen and its never heard I''m
(Serenaded by the terror bird)

CHORUS
      D            A            E
Never in the wrong time or wrong place  [na na na na na...]
Desecration is the smile on my face
The love i made is the shape of my space
My face my face

VERSE
Disintegrated by the rising sun, A rolling black out of oblivion And I 
like to think that i''m your number one A (rolling black out of oblivion)

I wanna leave but i just get stuck, A broken record runnin'' low on luck
There''s heavy metal coming from your truck and I''m, 
(a broken record runnin'' low on luck)

REPEAT CHORUS

BRIDGE
C D | E  Esus4 | C D | E  Esus4
C         D               E          Esus4          E
We could all go down to Malibu and make some noise
Coca Cola doesn''t do the justice She enjoys
We could all come up with Something new to be destroyed
C            D   Em
We could all go down

Em | D C | Em | D C

I love feeling when it falls apart, I''m slow to finish but i''m quick to start and
Beneath the heather lies the meadowlark And I''m, (Slow to finish but i am quick to start)

REPEAT CHORUS TWICE - yeah

REPEAT START OF INTRO end on E', CAST(0x0000A328012D2634 AS DateTime), CAST(0x0000A328012D2634 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (97, N'matt@a4tab.net', 56, N'Dani California', N'RED HOT CHILI PEPPERS - DANI CALIFORNIA
A4 tab by Matt Frear http://www.a4tab.net

VERSE
Am                  G     
Gettin'' born in the state of Mississippi
Dm                  Am
Papa was a copper and Mama was a hippie
In Alabama, she would swing a hammer,
Price you gotta pay when you break the panorama

She never knew that there was anything more than poor
What in the world does your company take me for?

Black bandanna, sweet Louisiana, 
Robbin'' on a bank in the state of Indiana
She''s a runner, rebel and a stunner 
On her merry way sayin'', "Baby whatcha gonna?"

Looking down the barrel of a hot metal .45 
Just another way to survive

CHORUS
F          C       Dm    G
California rest in peace 
Simultaneous release
California show your teeth
She''s my priestess; I''m your priest
Yeah, yeah

VERSE
She''s a lover, baby, and a fighter
Shoulda seen it comin'' when it got a little brighter
With a name like Dani California,
The day was gonna come when I was gonna mourn ya

A little loaded she was stealin'' another breath
I love my baby to death

REPEAT CHORUS

BRIDGE
Bm           G     F#
Who knew the other side of you?
Who knew what others died to prove?
Too true to say goodbye to you
Bm
Too true to say, say, say

VERSE
Push the fader, gifted animator,
One for the now and eleven for the later
Never made it up to Minnesota
North Dakota man was a gunnin'' for the quota

Down in the Badlands she was savin'' the best for last
It only hurts when I laugh
Em
Gone too fast

REPEAT CHORUS

REPEAT CHORUS', CAST(0x0000A328012D2635 AS DateTime), CAST(0x0000A328012D2635 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (98, N'matt@a4tab.net', 56, N'Snow', N'RED HOT CHILI PEPPERS - SNOW (HEY OH)
A4 tab by Matt Frear http://www.a4tab.net

Capo 4th fret

Em                     C                       G                D
Come to decide that the things that I tried Were in my life just to get high on
When I sit alone come get a little known But I need more than myself this time

Step from the road to the sea to the sky And I do believe it we rely on
When I lay it on Come get to play it on All my life to sacrifice

CHORUS
Hey oh, Listen what I say, oh
I got your hey oh, Now listen what I say, oh

When will I know that I really can''t go To the well once more time to decide on
When it''s killing me, when will I really see All that I need to look inside

Come to believe that I better not leave Before I get my chance to ride
When it''s killing me, what do I really need All that I need to look inside

REPEAT CHORUS

INTERLUDE
C
The more I see The less I know The more I like to let it go
Em       C
Hey   oh�

BRIDGE
G                         D
Deep beneath the cover of another perfect wonder
Am
Where it''s so white as snow
G                      D
Privately divided by a work so undecided
              Am  
And there''s nowhere to go

In between the cover of another perfect wonder
Where it''s so white as snow
Running through a field where all my tracks will be concealed
and there''s nowhere to go - Oh!

VERSE
When to descend to amend for a friend All the channels that have broken down
Now you bring it up, I''m gonna ring it up Just to hear you sing it out

Step from the road to the sea to the sky And I do believe what we rely on
When I lay it on, come get to play it on All my life to sacrifice

REPEAT CHORUS

REPEAT INTERLUDE

REPEAT BRIDGE

I said hey, hey yeah, oh yeah, tell my Love now
Hey, hey yeah, oh yeah, tell my Love now

REPEAT BRIDGE

I said hey, oh yeah, oh yeah, tell my love now
Hey, hey yeah, oh yeah ', CAST(0x0000A328012D2637 AS DateTime), CAST(0x0000A328012D2637 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (99, N'matt@a4tab.net', 56, N'Stadium Arcadium', N'RED HOT CHILI PEPPERS - STADIUM ARCADIUM
A4 tab  http://www.a4tab.net

VERSE
F#m                                A
Bells around St. Petersburg when I saw you
  F#m                             A               E
I hope I get what you deserve and this is where I find

Smoke surround your perfect face and I''m falling
Pushing a broom out into space and this is where I find a way

CHORUS

    Bm                 D
The stadium arcadium a mirror to the moon (a mirror to the moon)
          A
Well, I''m forming and I''m warming (to you)
    E
The state of the art until the clouds come crashing
Bm
Stranger things have happened both
  D
Before and afternoon (before and afternoon)
          A
Well, I''m forming and I''m warming (to you)
E                                           F#m
Pushing myself and no I don''t mind asking...now

VERSE
Alone inside my forest room and it''s storming
I never thought I''d be in bloom but this is where I start

Derelict days and the stereo plays For the all night crowd that it cannot phase and I''m calling
Tedious weeds that the media breeds But the animal gets what the animal needs And I''m sorry

REPEAT CHORUS

SOLO

    A               E
And this is where I find

Rays of dust that wrap around your citizen
Kind enough to disavow and this is where I stand

REPEAT CHORUS

REPEAT CHORUS, but end on "to you"', CAST(0x0000A328012D2639 AS DateTime), CAST(0x0000A328012D2639 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (100, N'matt@a4tab.net', 56, N'Tear', N'RED HOT CHILI PEPPERS - TEAR
A4 tab by Matt Frear http://www.a4tab.net

(Bar chords)
C          G              Am
This is my time This is my tear
I can see clearly now That this is not a place For playing solitaire
Tell me where you want me
This is my time This is my tear
Comin'' on strong Baudelaire
Seems to me like All the world gets high When you take a dare
Let it rise before you
This is my crime

CHORUS
C      C/B     Am           G                 F                 Em
All in all I''m Loving every rise and fall The sun will make and I will take
F             G
Breath to be sure of this
In the end and then All will be forgiven when Surrender rises high and I
Gave what I came to give
Am
Say it now because you never know

VERSE
Devil may cry devil may care
Distiller''s got a scream And now I know just why When she''s movin'' air
Can you feel the voltage
This is my time

SOLO (play VERSE chords)

California skies Got room to spare
This is my time

REPEAT CHORUS

BRIDGE SOLO - play F   Em   x4
e|-12-12-12-|-10-10-10
B|-13-13-13-|-12-12-12

TRUMPET SOLO - play VERSE chords
e|-12-15-17-15-12 x6   G|-12b14-9-9

VERSE
Take it outside Take it out there
Seems to me like All the world gets high When you take a dare
In the final moment
This is my time

REPEAT CHORUS

oh, never know ', CAST(0x0000A328012D263A AS DateTime), CAST(0x0000A328012D263A AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (101, N'matt@a4tab.net', 57, N'Angels', N'ROBBIE WILLIAMS - ANGELS
A4 tab by Matt Frear http://www.a4tab.net

VERSE
E                                   A             B
I sit and wait Does an angel contemplate my fate
And do they know The places where we go When we''re grey and old

               F#m           A                C#m           A
''Cos I''ve been told That salvation lets their wings unfold

PRE-CHORUS
            D                        A
So when I''m lying in my bed Thoughts running through my head
      E                      D         A            E
And I feel that love is dead I''m loving angels instead


CHORUS
              B                   C#m
And through it all she offers me protection
                  A                              E
A lot of love and affection Whether I''m right or wrong
              B                        C#m
And down the waterfall Wherever it may take me
                      A                        Abm
I know that life won''t break me When I come to call  
           F#m        D         A       E
she won''t forsake me I''m loving angels instead

VERSE
When I''m feeling weak And my pain walks down a one way street
I look above And I know I''ll always be blessed with love

PRE-CHORUS
And as the feeling grows She breathes flesh to my bones
And when love is dead I''m loving angels instead

REPEAT CHORUS

SOLO
play Bm      A        E

B|---9--7s5---5-(5)s7-|x2 then  |--9--7s5-----|
G|----------6---------|         |---------6s4-|

REPEAT CHORUS', CAST(0x0000A328012D263D AS DateTime), CAST(0x0000A328012D263D AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (102, N'matt@a4tab.net', 58, N'Don''t You (Forget About Me)', N'SIMPLE MINDS - DON''T YOU (FORGET ABOUT ME)
A4 tab by Matt Frear www.a4tab.net

INTRO
D E                   D E  C D     D  E      D E   C D
     Hey hey hey hey      Ooh ooh ooh  Oh

VERSE
E              D 
Won''t you come see about me?
A             D
I''ll be alone, dancing you know it baby
Tell me your troubles and doubts
Giving me everything inside and out and

Love''s strange so real in the dark
Think of the tender things that we were working on
Slow change may pull us apart
When the light gets into your heart, baby

CHORUS
E         D            A     D
Don''t You Forget About Me    Don''t Don''t Don''t Don''t
E         D            A 
Don''t You Forget About Me

BRIDGE
C                        G
Will you stand above me? Look my way, never love me
D                                     A
Rain keeps falling, rain keeps falling Down, down, down
Will you recognise me? Call my name or walk on by
Rain keeps falling, rain keeps falling Down, down, down, down

REPEAT INTRO 

VERSE
Don''t you try to pretend It''s my feeling we''ll win in the end
I won''t harm you or touch your defenses Vanity and security

Don''t you forget about me
I''ll be alone, dancing you know it baby
Going to take you apart
I''ll put us back together at heart, baby

REPEAT CHORUS

D              E               D               A       
As you walk on by              Will you call my name?
As you walk on by              Will you call my name?
When you walk away
(QUIETLY)
Or will you walk away?
Will you walk on by?                          Come on - call my name
              Will you call my name?

OUTRO
       E         D            A             D
I say La la la....
REPEAT OUTRO 3 TIMES (when you walk on by... and you call my name)', CAST(0x0000A328012D263E AS DateTime), CAST(0x0000A328012D263E AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (103, N'matt@a4tab.net', 59, N'santeria', N'SUBLIME - SANTERIA
A4 tab by Jeremy Roswell http://www.a4tab.net

E, Ab, Dbm, B

Verse 1:
             E                        Ab                
I don''t practice santeria I ain''t got no crystal ball
     Dbm                            B
I had a million dollars but I''d, I''d spend it all

If I could find that Heina and that Sancho she''s found
Well I''d pop a cap in Sancho and I''d   slap her down

CHORUS
A        B             E   Dbm
All I really wanna know my baby
A        B            E   Dbm      A
All I really wanna say I can''t define
       B            E    Dbm
It''s love that I need 
A          B
But my soul will have to

VERSE
Wait ''till I get back, find a Heina of my own
Daddy''s gonna love one and all
I feel the break, feel the break, feel the break
And I gotta live it up
Oh yeah, uh huh, well I swear that I

REPEAT CHORUS

Solo

CHORUS

All I really wanna say my baby
All I really wanna say is I''ve got mine
And I''ll make it yes I''m comin'' up
Tell Sanchito that if

He knows what is good for him he best go run and hide
Daddy''s got a new 45
And I won''t think twice to stick that barrel straight down Sancho''s throat
Believe me when I say that I''ve got something for his punk ass

REPEAT CHORUS
', CAST(0x0000A328012D2640 AS DateTime), CAST(0x0000A328012D2640 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (104, N'matt@a4tab.net', 59, N'What I Got', N'SUBLIME - WHAT I GOT (Reprise)
A4 tab by Matt Frear http://www.a4tab.net

CHORDS D G
SOLO
e-----------------------------
B-------6----------7-x-5-x-33-
G---5h7---7-x-5h7--7-x-5-x-44-
D-7---------------------------
A-----------------------------
E-----------------------------

e-------------10-----------------------------------
B--------10h12--12-12p10-13p12-10------------------
G-4/11h12-------------------------12b14p10-12-10---
D------------------------------------------------12
A--------------------------------------------------
E--------------------------------------------------

Early in the morning risin'' to the street
Light me up that cigarette and I strap shoes on my feet
Got to find a reason a reason things went wrong
Got to find a reason why my money''s all gone
But I got a dalmatian and I can still get high
I can play the guitar like a mother fuckin riot

SOLO

Life is too short so love the one you got cause you might get
runover or you might get shot
Never had to battle with no bulletproof vest
Never start no static I just get it off my chest
Take a small example A tip from me 
take all of your money and give it up to charity
Lovin''s what I got It''s within my reach
And the sublime style''s still straight from long beach
It all comes back to you you''re gonna get what you deserve
Try and test that you''re bound to get served
Love''s what I got Don''t start a riot
You feel it when the dance gets hot

CHORUS
Lovin is What I got I said remember that
Lovin is What I got I said remember that

Well I don''t cry when my dog runs away 
I don''t get angry at the bills I have to pay
I don''t get angry when my Mom smokes pot, hits
the bottle and goes back to the rock
Fuckin and fighting it''s all the same
Livin'' with Louie dog''s the only way to stay sane
Let the lovin come back to me 

REPEAT CHORUS
REPEAT CHORUS (no guitar)
REPEAT CHORUS
REPEAT CHORUS
I got I got I got I got I.. got
OUTRO SOLO', CAST(0x0000A328012D2642 AS DateTime), CAST(0x0000A328012D2642 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (105, N'matt@a4tab.net', 60, N'Fuck Her Gently', N'TENACIOUS D - FUCK HER GENTLY
Tabs by John Prichard

VERSE
D                F#m
You don''t always have to fuck her hard,  In
Em                        A 
Fact sometimes that''s not right ... to do.
D                   F#m
Sometimes you gotta make some love
Em                          A
   And fuckin give her some smooches too

PRE CHORUS
Bm                   G
Sometimes you got to squeeze
Bm                       G
Sometimes you got to say please
D                        A
Sometimes you got to say hey:

CHORUS
          D             F#m
I''m gonna fuck you .... softly
Em                  A
I''m gonna screw you gently
          D             F#m
I''m gonna hump you....  sweetly
          Em            A
I''m gonna ball you ...  discretely---

Bm                  G
  And then you say, Hey I brought you flowers
D                   A
  And then you say, Wait a minute sally!
B               G                               Em
  I think I got something in my teeth could you get it out for me?
A
That''s fuckin'' Teamwork!

VERSE
What''s your favorite posish?
That''s cool with me it''s not my favorite but I''ll do it for you
What''s your favorite dish?
I''m not gonna cook it but I''ll order it from Zanzibar!

    Bm                         G
And then I''m gonna love you completely
    D                             A
And then I''ll fuckin'' fuck you discretely
    Bm                           G
And then I''ll fuckin bone you completely
    D
But then...

OUTRO
          Em         A         C    G    D
I''m gonna fuck ----  you ----- haaaaaaaaaard-------
Bb7          C             D
haaaaaaaaaaaaaaaaaaaaaaaaaard!!!!', CAST(0x0000A328012D2645 AS DateTime), CAST(0x0000A328012D2645 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (106, N'matt@a4tab.net', 61, N'Little Black Submarines', N'THE BLACK KEYS - LITTLE BLACK SUBMARINES
Tabbed by: tele.kom

VERSE
Am          G            D        A 
Little black submarines Operator please
Am         G       A
Put me back on the line

Told my girl I''d be back Operator please
This is wrecking my mind

CHORUS
Am         G
Oh, can it be
    D              A
The voices calling me
A - B - C         D      A  
They get lost and out of time
  Am                G
I should''ve seen it glow
    D         A
But everybody knows
       C      D        A
That a broken heart is blind
A - B - C     D        A
That a broken heart is blind

VERSE
Pick you up, let you down, When I wanna go
To a place I can hide
You know me, I had plans, But they just disappeared
To the back of my mind

REPEAT CHORUS

DISTORTED GUITAR COMES IN (Same chords as the acoustic guitar, just strum)

Treasure maps, fallen trees Operator please
Call me back when it''s time
Stolen friends and disease Operator please
Pass me back to my mind

REPEAT CHORUS
That a broken heart is blind', CAST(0x0000A328012D2646 AS DateTime), CAST(0x0000A328012D2646 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (107, N'matt@a4tab.net', 61, N'Lonely Boy', N'THE BLACK KEYS - LONELY BOY

Tuning:Standard

INTRO

A|-------------------------------5s7----------------------------------------|
E|---0-0-0-0-3b--0-0--0-0-0-0-----------------------------------------------|

RIFF 1 (with keyboard)

e|--------------------------------------------------------------------------|
B|----5-5--5-3--------------------------------------------------------------|
G|---------------2-0-2---2-2--2-0-------------------------------------------|x2
D|----------------------------------2-0-2-----------------------------------|
A|--------------------------------------------------------------------------|
E|--------------------------------------------------------------------------|

VERSE
E                              G        A (bar chords)
Well I’m so above you And it’s plain to see
But I came to love you anyway
So you pulled my heart out And I don’t mind bleeding
Any old time you keep me waiting Waiting, waiting

CHORUS
E (high)         G                  A
Oh, oh-oh I got a love that keeps me waiting
Oh, oh-oh I got a love that keeps me waiting
I’m a lonely boy
I’m a lonely boy
Oh, oh-oh I got a love that keeps me waiting

VERSE
Well your mama kept you but your daddy left you
And I should’ve done you just the same
But I came to love you Am I born to bleed?
Any old time you keep me waiting Waiting, waiting

REPEAT CHORUS

REPEAT INTRO AND RIFF 1

REPEAT CHORUS', CAST(0x0000A328012D2647 AS DateTime), CAST(0x0000A328012D2647 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (108, N'matt@a4tab.net', 62, N'All These Things That I''ve Done', N'THE KILLERS - ALL THESE THINGS THAT I''VE DONE
CAPO 2

INTRO
E                             E7                           A
When there''s nowhere else to run Is there room for one more son?
         E
One more son?
       C#m                 A                E
If you can hold on, If you can hold on, hold on.

VERSE
E
I want to stand up, I want to let go
                                        A
You know you know - no, you don''t, you don''t.
                                    E
I want to shine on in the hearts of men.
I want a meaning from the back of my broken hand.

Another head aches, another heart breaks.
I''m so much older than I can take.
And my affection, well it comes and goes.
I need direction to perfection, no no no no

CHORUS
E
Help me out, yeah. You know you gotta help me out, yeah
                           A
Oh don''t you put me on the back burner,
                           E
You know you gotta help me out, yeah.

VERSE
And when there''s nowhere else to run Is there room for one more son?
These changes ain''t changing me, The cold-hearted boy I used to be.

REPEAT CHORUS, THEN
                            C#m
You''re gonna bring yourself down, yeah
                            A
You''re gonna bring yourself down, yeah
                            E
You''re gonna bring yourself down.

BRIDGE
E
I got soul, but I''m not a soldier I got soul, but I''m not a soldier
A                                   E
I got soul, but I''m not a soldier I got soul, but I''m not a soldier (2x)

C#m                                A                               E
I got soul, but I''m not a soldier I got soul, but I''m not a soldier

REPEAT SECOND CHORUS

OUTRO
C#m      F#m               A
Over and in, last call for sin.
                                     B
While everyone''s lost, the battle is won
                                E
With all these things that I''ve done.
                                C#m
With all these things that I''ve done.
       A                   B           E
If you can hold on, if you can hold on...', CAST(0x0000A328012D264A AS DateTime), CAST(0x0000A328012D264A AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (109, N'matt@a4tab.net', 62, N'Runaways', N'THE KILLERS - RUNAWAYS
A4 tab by Matt Frear - a4tab.net

CAPO 1ST FRET

VERSE
 C           G              F
Blonde hair blowing in the summer wind
 F         C           G
Blue eyed girl playing in the sand

I''ve been on the trail for a little while
But that was the night that she broke down and held my hand

BRIDGE
F         Am        Dm                     G
Teenage rush, She said ain''t we all just runaways?
        F                  Am
We got time and that ain''t much

PRE-CHORUS
          G            F
We can''t wait ''till tomorrow
           G                 Am         F
You gotta know that this is real Baby, why you wanna fight it?
It''s the one thing you can''t choose, Oh

VERSE
We got engaged on a Friday night, I swore on the head of our unborn child
That I could take care of the three of us
But I''ve got the tendency to slip when the nights get wild

BRIDGE
It''s in my blood, She said she might just runaway, Somewhere else, someplace good

REPEAT PRE-CHORUS
             G
Let''s take a chance, baby we can''t lose

CHORUS
                  C   G    F
Ain''t we all just runaways?
                  F      C              G       C   G   F
I knew it when I met you I''m not gonna let you runaway
I knew it when I held you I wasn''t letting go

            Em                       Am
We used to look at the stars and confess our dreams
           F
Hold each other ''till the morning light
    C                     Am
We used to laugh, now we only fight
 G                    F
Baby are you lonesome now?

VERSE
At night I come home after they go to sleep
Like a stumbling ghost I haunt these halls
There''s a picture of us on our wedding day
I recognise the girl but I can''t settle in these walls

PRE-CHORUS
We can''t wait ''till tomorrow
Now we''re caught up in the appeal baby, why you wanna hide it?
It''s the last thing on my mind (Why you wanna hide it?)
   G
I turn the engine over and my body just comes alive 

REPEAT CHORUS

Ain''t we all just runaways?
Yeeeaah, runaways (Ain''t we all just runaways?)
Yeeeaah

OUTRO
G Am F', CAST(0x0000A328012D264B AS DateTime), CAST(0x0000A328012D264B AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (110, N'matt@a4tab.net', 63, N'Lola', N'THE KINKS - LOLA
A4 tab from www.a4tab.net

C  D  E 
 E
I met her in a club down in old Soho
            A                      D                A     E
Where you drink champagne and it tastes just like cherry Cola
          A  Asus
C-O-L-A Cola
      E
She walked up to me and she asked me to dance
    A                          D                    A    E
I asked her her name and in a dark brown voice she said Lola
          A   D            C  D  E
L-O-L-A Lola la-la-la-la Lola

Well I''m not the world''s most physical guy
But when she sqeezed me tight she nearly broke my spine
Oh my Lola la-la-la-la Lola
Well I''m not dumb but I can''t understand
Why she walked like a woman but talked like a man
Oh my Lola la-la-la-la Lola la-la-la-la Lola

CHORUS #1:
          B
Well we drank champagne and danced all night
F#m                             A
Under electric candlelight She picked me up and sat me on her knee
                                B7
And said "Dear boy, won''t you come home with me?"

Well I''m not the world''s most passionate guy
But when I looked in her eyes well I almost fell for my Lola
La-la-la-la Lola la-la-la-la Lola
Lola la-la-la-la Lola la-la-la-la Lola

BRIDGE
    A     C#m  B       A     C#m    B
I pushed her away, I walked to the door
   A    C#m    B            E   G#m    C#m
I fell to the floor, I got down on my knees
      B
Then I looked at her and she at me

Well that''s the way that I want it to stay
And I always want it to be that way for my Lola
La-la-la-la Lola
Girl will be boys and boys will be girls
It''s a mixed up muddled up shook up world except for Lola
La-la-la-la Lola

CHORUS #2:
Well I left home just a week before, And I''d never ever kissed a woman 
before, But Lola smiled and took me by the hand
And said "Dear boy, I''m gonna make you a man"

Well I''m not the world''s most masculine man
But I know what I am and I''m glad that I''m a man, And so is Lola
La-la-la-la Lola la-la-la-la Lola
Lola la-la-la-la Lola la-la-la-la Lola', CAST(0x0000A328012D264E AS DateTime), CAST(0x0000A328012D264E AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (111, N'matt@a4tab.net', 64, N'Ho Hey', N'THE LUMINEERS - HO HEY

INTRO
C        F C

VERSE
C                               F C
I''ve been trying to do it right
I''ve been living the lonely life
I''ve been sleeping here instead
I''ve been sleeping in my bed
Am                   G       C
I''ve been sleeping in my bed

So show me family
And all the blood that I will bleed
I don''t know where I belong
I don''t know where I went wrong
But I can write a song.

CHORUS
              Am                  G                   C
I belong with you, you belong with me, you''re my sweetheart
              Am                  G                   C
I belong with you, you belong with me, you''re my sweet

VERSE
I don''t think you''re right for him
Think of what it might''ve been if you
Took a bus to Chinatown
I''d be standing on Canal...and Bowery
And she''d be standing next to me

REPEAT CHORUS

BRIDGE
      F      G
And love, we need it now
Let''s hope for some
Cuz oh, we''re bleeding out

REPEAT CHORUS', CAST(0x0000A328012D2650 AS DateTime), CAST(0x0000A328012D2650 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (112, N'matt@a4tab.net', 65, N'All I Want Is You', N'U2 - ALL I WANT IS YOU
A4 tab from http://www.a4tab.net
CAPO 1ST FRET)

INTRO:          G    Cadd9    G    Cadd9

                    G       Cadd9    G                     Cadd9
VERSE 1:        you say you want     diamonds and a ring of gold
                    G       Cadd9     G                 Cadd9
                you say you want your story to remain untold


                            Em          Cadd9
CHORUS 1:       but all the promises we made
                         Em             Cadd9
                from the cradle to the grave
                     G     Cadd9     G    Cadd9    G    Cadd9
                when all i want is you


VERSE 2:        you say you''ll give me a highway with no-one on it
                a treasure just to look upon it
                all the riches in the night

                you say you''ll give me eyes in a moon of blindness
                a river in a time of dryness
                a harbour in the tempest

CHORUS 2:       but all the promises we made
                from the cradle to the grave
                when all i want is you


LINK 1:         G    Cadd9    G    Cadd9


VERSE 3:        you say you want your love to work out right
		to last with me through the night
                you say you want     diamonds and a ring of gold
                your story to remain untold
                your love not to grow cold

CHORUS 3:       all the promises we break
                from the cradle to the grave
                when all i want is you


LINK 2:         G    Cadd9    G    Cadd9

MIDDLE:         you - ou, all i want is you - ou, all i want is
                you - ou, all i want is you - ou

SOLO:           G    Cadd9    G    Cadd9    (x4)

OUTRO:          G    Cadd9    G    Cadd9    (x11)    G
', CAST(0x0000A328012D2652 AS DateTime), CAST(0x0000A328012D2652 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (113, N'matt@a4tab.net', 65, N'Beautiful Day', N'U2 - Beautiful day
A4 tab by Matt Frear http://www.a4tab.net

INTRO    A   Bm   D    G    D   A

VERSE
               A   Bm   D    G         D                     A
The heart is a bloom           Shoots  up  through the stony ground 
There''s no room               No  space  to rent in this town 
You''re out of luck               And the reason that you had to care
The traffic is stuck             And you''re not moving anywhere

You thought you''d found   a friend     To take you out  of  this  place 
Someone you   could  lend    a hand         In return   for   grace

CHORUS
                 A5     B5   D5    G5     D5                   A5
It''s a beautiful day                      Sky   falls,   you feel  like
It''s a beautiful day                      Don''t let  it   get  away

VERSE
You''re on the road             But you''ve got   no  destination
You''re in the mud              In the maze of her  imagination
You love this town             Even if that   doesn''t ring true
You''ve been all over           And it''s been   all   over you

REPEAT CHORUS

POST CHORUS
F#m          G        D               A
Touch    me           Take me to that other  place
Teach    me           I know I''m not a hopeless case

A   Bm   D    G    D   A

BRIDGE
Em              G                      D           A
See the world   in green and blue     See China right in front of you
See the canyons broken by cloud See the tuna fleets clearing the sea out
See the Bedouin fires at night   See the oil fields at first light and
See the bird with a leaf in her mouth 
after the flood all the colors came out

REPEAT CHORUS

REPEAT POST CHORUS

A                        Bm           D       G
 What  you  don''t  have  you  don''t   need it now  
 What  you  don''t  know  you can feel   it somehow   
 What  you  don''t  have  you  don''t   need it now
 Don''t  need  it  now

 Was a beautiful day', CAST(0x0000A328012D2653 AS DateTime), CAST(0x0000A328012D2653 AS DateTime))
GO
INSERT [dbo].[Tab] ([Id], [Author], [ArtistId], [Name], [Content], [CreatedOn], [ModifiedOn]) VALUES (114, N'matt@a4tab.net', 65, N'Pride', N'U2 - PRIDE
A4 tab from http://www.a4tab.net

[Capo on 2nd fret]

 A                   D
One man come in the name of love,
 G               Em
One man come and go.
 A                   D
One come here to justify,
 G               Em
One man to overthrow,

CHORUS
 A                   D
In the name of love,
 G               Em
What more in the name of love.

In the name of love, What more in the name of love.

One man crawled on a barbed wire fence,
One man he resist.
One man washed on an empty beach.
One man betrayed with a kiss.

REPEAT CHORUS

Early morning, April 4.
A shot rings out in the Memphis sky.
Free at last, they took your life,
But they could not take your pride.

REPEAT CHORUS

REPEAT CHORUS

oh oh oh oh 
oh oh oh oh
oh oh oh oh 
oh oh oh oh  ... REPEAT TO FADE', CAST(0x0000A328012D2654 AS DateTime), CAST(0x0000A328012D2654 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Tab] OFF
GO
