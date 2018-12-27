import sys
import time
import random
from random import randint
from PyQt5.QtWidgets import QWidget, QApplication, QPushButton, QInputDialog, QLabel, QLineEdit
from PyQt5.QtGui import QPainter, QColor, QPixmap

flag = randint(0,11)

# 0 Армения
# 1 Болгария
# 2 Венгрия
# 3 россия
# 4 Йемен
# 5 Колумбия
# 6 Латвия
# 7 Литва
# 8 германия
# 9 Нидерланды
# 10 Эстония
# 11 Южная Осетия

class Example(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()
        self.loadPic()
    def initUI(self):
        self.setGeometry(700, 300, 350, 300)
        self.setWindowTitle('Flagario')
        self.c1 = 0
        self.c2 = 0
        self.c3 = 0

        valuekol = 0
        self.sp = [['Аргентина', 'Япония', 'Армения'], ['Болгария', 'Россия', 'Люксмбург'], #0 1
                   ['США', 'Венгрия', 'Франция'], ['Румыния', 'Россия', 'Италия'],          #2 3
                   ['Йемен', 'Китай', 'КНДР'], ['Нигер', 'Колумбия', 'Великобритания'],     #4 5
                   ['Канада', 'Литва', 'Латвия'], ['Казахстан', 'Ваканда', 'Литва'],        #6 7
                   ['Таиланд', 'Германия', 'Индия'], ['Нидерланды', 'Бразилия', 'Египет'],  #8 9
                   ['Польша', 'Эстония', 'Колумбия'], ['Узбекистан', 'СССР', 'Южная Осетия']] #10 11
        self.rightsp = ["Армения", "Болгария", "Венгрия", "Россия", "Йемен", "Колумбия", "Латвия",
                        "Литва", "Германия", "Нидерланды", "Эстония", "Южная Осетия"]

        self.button_1 = QPushButton(self)
        self.button_1.move(200, 120)
        self.button_1.setText("ответить")
        self.button_1.clicked.connect(self.run)

        self.label1 = QLabel(self)
        self.label1.setText(self.sp[flag][0])
        self.label1.move(200, 30)

        self.label2 = QLabel(self)
        self.label2.setText(self.sp[flag][1])
        self.label2.move(200, 60)

        self.label3 = QLabel(self)
        self.label3.setText(self.sp[flag][2])
        self.label3.move(200, 90)

        self.label4 = QLabel(self)
        self.label4.setText("__________")
        self.label4.move(200, 160)

        self.label5 = QLabel(self)
        self.label5.setText("Название страны надо воодить с большой буквы")
        self.label5.move(50, 190)

        self.label6 = QLabel(self)
        self.label6.setText("Введите название страны в окно ниже")
        self.label6.move(75, 5)

        self.name_input = QLineEdit(self)
        self.name_input.move(25, 150)

        self.pic = QPixmap()
        self.img = QLabel(self)
        self.img.move(150, 200)
        self.img.resize(200, 100)
        self.img.setPixmap(self.pic)

        self.show()

    def run(self):

        name = self.name_input.text()
        if name == self.rightsp[flag]:
            self.label4.setText("ВЕРНО")
        else:
            self.label4.setText("НЕВЕРНО")

    def changes(self):
        valuekol += 1
        self.label1.setText(self.sp[valuekol][0])
        self.label2.setText(sp[valuekol][1])
        self.label3.setText(sp[valuekol][2])

    def paintEvent(self, event):
        for i in range(11):
            qp = QPainter()
            qp.begin(self)
            self.drawFlag(qp,flag)
            qp.end()

    def loadPic(self):
        self.pic.load("logo4.jpg")
        self.img.setPixmap(self.pic)

    def drawFlag(self, qp, flag):
    #   армения
        if flag == 0:
            qp.setBrush(QColor(217, 0, 18))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(0, 51, 160))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(242, 168, 0))
            qp.drawRect(30, 90, 120, 30)

    #   болгария
        if flag == 1:
            qp.setBrush(QColor(255, 255, 255))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(0, 150, 110))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(214, 38, 18))
            qp.drawRect(30, 90, 120, 30)

    #   венгрия
        if flag == 2:
            qp.setBrush(QColor(205, 42, 62))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(255, 255, 255))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(67, 111, 77))
            qp.drawRect(30, 90, 120, 30)

    #   россия
        if flag == 3:
            qp.setBrush(QColor(255, 255, 255))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(0, 57, 166))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(213, 43, 30))
            qp.drawRect(30, 90, 120, 30)

    #   йемен
        if flag == 4:
            qp.setBrush(QColor(206, 17, 38))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(255, 255, 255))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(0, 0, 0))
            qp.drawRect(30, 90, 120, 30)

    #   колумбия
        if flag == 5:
            qp.setBrush(QColor(252, 209, 22))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(0, 56, 147))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(206, 17, 38))
            qp.drawRect(30, 90, 120, 30)

    #   латвия
        if flag == 6:
            qp.setBrush(QColor(161, 40, 48))
            qp.drawRect(30, 30, 120, 35)
            qp.setBrush(QColor(255, 255, 255))
            qp.drawRect(30, 62, 120, 20)
            qp.setBrush(QColor(161, 40, 48))
            qp.drawRect(30, 80, 120, 35)

    #   литва
        if flag == 7:
            qp.setBrush(QColor("#FAB900"))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor("#096540"))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor("#BE2A2A"))
            qp.drawRect(30, 90, 120, 30)

    #   германия
        if flag == 8:
            qp.setBrush(QColor(0,0,0))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(    221, 0, 0))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(255, 206, 0))
            qp.drawRect(30, 90, 120, 30)

    #   нидерланды
        if flag == 9:
            qp.setBrush(QColor(213, 43, 30))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(255, 255, 255))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(0, 57, 166))
            qp.drawRect(30, 90, 120, 30)

    #   эстония
        if flag == 10:
            qp.setBrush(QColor(0, 125, 195))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(0, 0, 0))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(255,255,255))
            qp.drawRect(30, 90, 120, 30)

    #   южная осетия
        if flag == 11:
            qp.setBrush(QColor(255, 255, 255))
            qp.drawRect(30, 30, 120, 30)
            qp.setBrush(QColor(255, 0, 0))
            qp.drawRect(30, 60, 120, 30)
            qp.setBrush(QColor(255, 255, 0))
            qp.drawRect(30, 90, 120, 30)



if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = Example()
    sys.exit(app.exec_())
