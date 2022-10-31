from Paint import draw
from Paint import preProcessor
from Paint import re
from Paint import DBaccess
from tensorflow import keras
import numpy as np
import login
import pygame as pg
import button
import cred as cr

def history(user):
    conn = DBaccess.connection(cr.user, cr.password)
    h = conn.getHistory(user)
    pg.init()
    screen = pg.display.set_mode((800,600))
    screen.fill((255,199,199))
    my_font = pg.font.SysFont('Comic Sans MS', 45)
    text_surface = my_font.render("Game History", False, (0,0,0))
    screen.blit(text_surface, (250,10))
    my_font = pg.font.SysFont('Comic Sans MS', 25)
    text_surface = my_font.render("User : "+str(user), False, (0,0,0))
    screen.blit(text_surface, (300,200))
    my_font = pg.font.SysFont('Comic Sans MS', 25)
    text_surface = my_font.render("Wins : " + str(h[0]), False, (0,0,0))
    screen.blit(text_surface, (300,300))
    my_font = pg.font.SysFont('Comic Sans MS', 25)
    text_surface = my_font.render("Losses : "+ str(h[1]), False, (0,0,0))
    screen.blit(text_surface, (300,400))
    return_img = pg.image.load("images/returnbutton.png").convert_alpha()
    return_button = button.Button(10, 10, return_img, 0.75)
    pg.display.flip()
    loop = 1
    while loop:
        for event in pg.event.get():
            if event.type == pg.QUIT:
                loop = 0
                return False
    pg.quit()

def play(d, counter, conn, user):
    for i in range(5):
        d.init()
        p = preProcessor.PreProcessor()
        img_arr = p.dta("image.png")
        f = open("class_names.txt","r")
        class_names = f.readlines()
        class_names = [c.replace('\n','').replace(' ','_') for c in class_names]
        f.close()

        model = keras.models.load_model('ClassifierModel')
        pred = model.predict(np.expand_dims(img_arr, axis=0))[0]
        ind = (-pred).argsort()[:10]
        latex = [class_names[x] for x in ind]
        prompt = d.getPrompt().lower().strip().replace(" ", "_")
        if(prompt in latex):
            print("Correct!")
            counter+=1
            res = "pass"
        else:
            print("Incorrect!")
            res = "fail"
        c.storeImage(user, res, prompt)

    print("Score: ",counter)
    retry = d.gameover(counter)
    if(retry):
        nc = 0
        play(d,nc)
    else:
        conn.close()
        return


user = login.start()
if(user == None):
    exit()
pg.init()

#Screen sizes
screenWidth = 800 # screen width (horizontal size)
screenHeight = 600 # screen height (vertical size)

# Colours

backgroundColor = (255,199,199) # peach colour in the background
black = (0, 0, 0)
white = (255, 255, 255)

# Game variables
run = True # game loop variable
enterApp = False # changed when spacebar is pressed in the homescreen
menuState = "main" # changed when each button is clicked

screen = pg.display.set_mode((screenWidth, screenHeight)) # setting screen size

arial = pg.font.SysFont("arialblack", 40, True, True) # set up a font for the text

# Button redicrecting to game
playnow_img = pg.image.load("images/playbutton.png").convert_alpha()
playnow_button = button.Button(275, 55, playnow_img, 0.75)

# Button that logs you out
logout_img = pg.image.load("images/logoutbutton.png").convert_alpha()
logout_button = button.Button(725, 10, logout_img, 0.45)

# Button that redirects to dataset download facility
download_img = pg.image.load("images/downloadbutton.png").convert_alpha()
download_button = button.Button(275, 230, download_img, 0.75)

# Button that redirects to user history page
history_img = pg.image.load("images/historybutton.png").convert_alpha()
history_button = button.Button(275, 405, history_img, 0.75)

# Button that redirects to the main menu from wherever you are
return_img = pg.image.load("images/returnbutton.png").convert_alpha()
return_button = button.Button(10, 10, return_img, 0.75)

# Used to render any text on the screen
def draw_text(text, font, text_col, x, y):
    img = font.render(text, True, text_col)
    screen.blit(img, (x, y))

while run:    
    screen.fill(backgroundColor) # colour the background
    pg.display.set_caption("pAInt") # display game title 
    # If logout button is pressed, set run to false. Game quits
    if logout_button.draw(screen):
        # Logout functionality here
        run = False
    # if spacebar is pressed
    if enterApp:
        # Display all the button messages
        if return_button.draw(screen):
            menuState = "main"
            pg.display.set_caption("Main Menu")
        if menuState == "main":
            if playnow_button.draw(screen):
                menuState = "game"
                pg.quit()
                pg.display.set_caption("Game")
                # Game functionality here
                counter = 0
                d = draw.Interface(800,800)
                c = DBaccess.connection(cr.user, cr.password)
                play(d,counter,c, user)

            if download_button.draw(screen):
                menuState = "download"
                pg.display.set_caption("Download Dataset")
                # Download functionality here
                re.rec("0.tcp.in.ngrok.io",17256) #only works if server running and ip and host are configured properly
                pass
            if history_button.draw(screen):
                menuState = "history"
                pg.quit()
                pg.display.set_caption("View History")
                # redirect to history button page
                history(user)
                
    else:
        # game is not paused
        draw_text("pAInt", arial, black, 300, 250)
        draw_text("Press space to atart!", arial, black, 100, 300)
    # Checking possible events in the game
    for event in pg.event.get():
        # If a quit action is being initiated
        if event.type == pg.QUIT:
            # Change run variable
            run = False
        if event.type == pg.KEYDOWN:
            if event.key == pg.K_SPACE:
                enterApp = True
    pg.display.update()

pg.quit()





