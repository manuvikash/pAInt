import pygame as pg
import random

class Interface:
    def __init__(self, xdim, ydim):
        self.xdim = xdim
        self.ydim = ydim
        self.drawing = False
        self.last_pos = None
        self.w = 10
        self.drawcolor = (255, 255, 255)
        self.blacklist = ["Key", "Lollipop", "Mushroom", "Helmet", "Mountain", "Ladder", "Triangle", "Square", "Spoon", "Door", "Screwdriver"]

    def getPrompt(self):
        return self.prompt

    def init(self):
        self.game = True
        def genPrompt():
            return (random.choice(labels).capitalize().replace('_', ' ').replace('\n', ''))

        global screen
        f = open("labels.txt","r")
        labels = f.readlines()
        f.close()
        self.prompt = genPrompt()
        while self.prompt in self.blacklist:
            self.prompt = genPrompt()
        self.blacklist.append(self.prompt)
        
        pg.init()
        screen = pg.display.set_mode((self.xdim,self.ydim))
        bgcolor = (255,255,255)
        screen.fill(bgcolor)
        pg.font.init()
        my_font = pg.font.SysFont('Comic Sans MS', 25)
        text_surface = my_font.render(self.prompt[0:len(self.prompt)-1], False, (0,0,0))
        screen.blit(text_surface, (350,10))
        pg.draw.rect(screen, (0,0,0), pg.Rect(50, 50, 700, 700))
        #create submit button
        pg.draw.rect(screen, (128,128,128), pg.Rect(350, 750, 100, 50))
        my_font = pg.font.SysFont('Comic Sans MS', 25)
        text_surface = my_font.render("Submit", False, (255,255,255))
        screen.blit(text_surface, (360,760))
        pg.display.flip()


        self.mainloop()
    
    def draw(self,event):
        if event.type == pg.MOUSEMOTION:
            if (self.drawing):
                mouse_position = pg.mouse.get_pos()
                if self.last_pos is not None:
                    pg.draw.line(screen, self.drawcolor, self.last_pos, mouse_position, self.w)
                self.last_pos = mouse_position
        elif event.type == pg.MOUSEBUTTONUP:
            mouse_position = (0, 0)
            self.drawing = False
            self.last_pos = None
        elif event.type == pg.MOUSEBUTTONDOWN:
            self.drawing = True
        #quit is submit is pressed
        if event.type == pg.MOUSEBUTTONDOWN and self.game:
            if 350 <= event.pos[0] <= 450 and 750 <= event.pos[1] <= 800:
                pg.quit()
                quit()
    
    
    def mainloop(self):
        global screen
        loop = 1
        while loop:
            # checks every user interaction in this list
            for event in pg.event.get():
                if event.type == pg.MOUSEBUTTONDOWN:
                    if 350 <= event.pos[0] <= 450 and 750 <= event.pos[1] <= 800:
                        pg.image.save(screen, "image.png")
                        return

                if event.type == pg.QUIT:
                    loop = 0
                self.draw(event)
            pg.display.flip()
        pg.quit()

    def gameover(self, score):
        global screen
        self.game = False
        screen.fill((0,0,0))
        my_font = pg.font.SysFont('Comic Sans MS', 25)
        text_surface = my_font.render("Game Over!", False, (255,255,255))
        screen.blit(text_surface, (350,10))
        my_font = pg.font.SysFont('Comic Sans MS', 25)
        text_surface = my_font.render("Score: " + str(score) + "/5", False, (255,255,255))
        screen.blit(text_surface, (350,50))
        pg.draw.rect(screen, (128,128,128), pg.Rect(300, 470, 200, 100))
        my_font = pg.font.SysFont('Comic Sans MS', 25)
        text_surface = my_font.render("Retry", False, (255,255,255))
        screen.blit(text_surface, (360,500))
        pg.display.flip()
        loop = 1
        while loop:
            for event in pg.event.get():
                if event.type == pg.QUIT:
                    loop = 0
                    return False
                if event.type == pg.MOUSEBUTTONDOWN:
                    if 300 <= event.pos[0] <= 500 and 470 <= event.pos[1] <= 570:
                        return True
        pg.quit()

