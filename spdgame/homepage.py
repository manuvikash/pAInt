import pygame
import time
import random

pygame.init()

# Game Screen Width
display_width = 800
display_height = 600

# Colours
pink = (255,128,176)
peach = (255,199,199)
blue = (147,153,255)
teal = (169,255,253)
black = (0, 0, 0)
green = (0, 255, 171)

# Fonts
largeText = pygame.font.Font(None, 115)
font = pygame.font.Font(None, 25)

# Display Screen
gameDisplay = pygame.display.set_mode((display_width, display_height))
pygame.display.set_caption('pAInt')

# Game Clock
clock = pygame.time.Clock()

def game_intro():

    intro = True
    
    while intro:
        for event in pygame.event.get():
            print(event)
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()
                
        gameDisplay.fill(peach)
        titlebox = largeText.render("pAInt", True, black)
        text_rect_0 = titlebox.get_rect(center=(display_width/2, display_height/4))
        gameDisplay.blit(titlebox, text_rect_0)
        
        mouse = pygame.mouse.get_pos()
        # Button 0
        if 300 <= mouse[0] <= 500 and 250 <= mouse[1] <= 325:
            pygame.draw.rect(gameDisplay, pink, pygame.Rect(300,250,200,75), 0, 10)
        else:
            pygame.draw.rect(gameDisplay, green, pygame.Rect(300,250,200,75), 0, 10)
        # Button 1
        if 50 <= mouse[0] <= 250 and 400 <= mouse[1] <= 475:
            pygame.draw.rect(gameDisplay, teal, pygame.Rect(50,400,200,75), 0, 10)
        else:
            pygame.draw.rect(gameDisplay, blue, pygame.Rect(50,400,200,75), 0, 10)
        # Button 2
        if 300 <= mouse[0] <= 500 and 400 <= mouse[1] <= 475:
            pygame.draw.rect(gameDisplay, teal, pygame.Rect(300,400,200,75), 0, 10)
        else:
            pygame.draw.rect(gameDisplay, blue, pygame.Rect(300,400,200,75), 0, 10)
        # Button 3
        if 550 <= mouse[0] <= 750 and 400 <= mouse[1] <= 475:
            pygame.draw.rect(gameDisplay, teal, pygame.Rect(550,400,200,75), 0, 10)
        else:
            pygame.draw.rect(gameDisplay, blue, pygame.Rect(550,400,200,75), 0, 10)
                
        playgame = font.render("Play Now!", True, black)
        text_rect_play = playgame.get_rect(center=(300+200/2, 250+75/2))
        gameDisplay.blit(playgame, text_rect_play)
        
        viewimages = font.render("View Saved Images", True, black)
        text_rect_1 = viewimages.get_rect(center=(50+200/2, 400+75/2))
        gameDisplay.blit(viewimages, text_rect_1)

        downloaddataset = font.render("Download Dataset", True, black)
        text_rect_2 = downloaddataset.get_rect(center=(300+200/2, 400+75/2))
        gameDisplay.blit(downloaddataset, text_rect_2)
        
        viewhistory = font.render("View Game History", True, black)
        text_rect_2 = viewhistory.get_rect(center=(550+200/2, 400+75/2))
        gameDisplay.blit(viewhistory, text_rect_2)
        
        pygame.display.update()
        clock.tick(15)

game_intro()
pygame.quit()
quit()