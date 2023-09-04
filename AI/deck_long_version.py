#first let's import random procedures since we will be shuffling
import random
cardfaces = []#used to store  single set of cards
suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
royals = ["J", "Q", "K", "A"]
deck = []#used to store all set of cards
#now, let's start using loops to add our content:
for i in range(2,11):
    cardfaces.append(str(i)) #this adds numbers 2-10 and converts them to string data
for j in range(4):
    cardfaces.append(royals[j]) #this will add the royal faces to the cardbase
#print(cardfaces)
for k in range(4):#loop to take name of each suit
    for l in range(13):#loop to create set of each suit 
        card = (cardfaces[l] + " of " + suits[k])
        #print(card) to get complete one set before shuffling
#this makes each card, cycling through suits, but first through faces
        deck.append(card)
#this adds the information to the "full deck" we want to make
#now let's shuffle our deck!
random.shuffle(deck)
#now let's see the cards!
for m in range(52):
    print(deck[m])
