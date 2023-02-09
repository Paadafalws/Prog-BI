import PySimpleGUI as sg
from random import randint
import BD

sg.theme('darkblue') 
layout = [  [sg.Text('PardalLog')],
            [sg.Text('Nome'), sg.InputText(' ',key='-NAME-')],
            [sg.Text('preço de venda '), sg.InputText(' ',key='-PVENDA-')],
            [sg.Text('preço de custo '), sg.InputText(' ',key='-PCUSTO-')],
            [sg.Button('Adicionar'), sg.Button('Sair')] ]

# Create the Window
window = sg.Window('crud', layout)
# Event Loop to process "events" and get the "values" of the inputs
while True:
    button,values = window.read()
    if button == 'Adicionar':
        ID=randint(1,999)
        NAME = values['-NAME-'].capitalize()
        PVENDA = values['-PVENDA-']
        PCUSTO = values['-PCUSTO-']

        BD.write(ID,NAME,PCUSTO,PVENDA)

    window.find_element('-NAME-').update(' ')
    window.find_element('-PVENDA-').update(' ')
    window.find_element('-PCUSTO-').update(' ')