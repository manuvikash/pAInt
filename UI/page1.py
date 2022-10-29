import pygame
import button

pygame.init()

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

screen = pygame.display.set_mode((screenWidth, screenHeight)) # setting screen size

arial = pygame.font.SysFont("arialblack", 40, True, True) # set up a font for the text

# Button redicrecting to game
playnow_img = pygame.image.load("images/playbutton.png").convert_alpha()
playnow_button = button.Button(275, 55, playnow_img, 0.75)

# Button that logs you out
logout_img = pygame.image.load("images/logoutbutton.png").convert_alpha()
logout_button = button.Button(725, 10, logout_img, 0.45)

# Button that redirects to dataset download facility
download_img = pygame.image.load("images/downloadbutton.png").convert_alpha()
download_button = button.Button(275, 230, download_img, 0.75)

# Button that redirects to user history page
history_img = pygame.image.load("images/historybutton.png").convert_alpha()
history_button = button.Button(275, 405, history_img, 0.75)

# Button that redirects to the main menu from wherever you are
return_img = pygame.image.load("images/returnbutton.png").convert_alpha()
return_button = button.Button(10, 10, return_img, 0.75)

# Used to render any text on the screen
def draw_text(text, font, text_col, x, y):
    img = font.render(text, True, text_col)
    screen.blit(img, (x, y))

while run:    
    screen.fill(backgroundColor) # colour the background
    pygame.display.set_caption("pAInt") # display game title 
    # If logout button is pressed, set run to false. Game quits
    if logout_button.draw(screen):
        # Logout functionality here
        run = False
    # if spacebar is pressed
    if enterApp:
        # Display all the button messages
        if return_button.draw(screen):
            menuState = "main"
            pygame.display.set_caption("Main Menu")
        if menuState == "main":
            if playnow_button.draw(screen):
                menuState = "game"
                pygame.display.set_caption("Game")
                # Game functionality here
            if download_button.draw(screen):
                menuState = "download"
                pygame.display.set_caption("Download Dataset")
                # Download functionality here
                pass
            if history_button.draw(screen):
                menuState = "history"
                pygame.display.set_caption("View History")
                # redirect to history button page
                pass
    else:
        # game is not paused
        draw_text("pAInt", arial, black, 300, 250)
        draw_text("Press space bar to view main menu", arial, black, 100, 300)
    # Checking possible events in the game
    for event in pygame.event.get():
        # If a quit action is being initiated
        if event.type == pygame.QUIT:
            # Change run variable
            run = False
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_SPACE:
                enterApp = True
    pygame.display.update()

pygame.quit()