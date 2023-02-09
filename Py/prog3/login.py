import PySimpleGUI as sg

layout=[
    [sg.Text('usuario')],
    [sg.Input(key='usuario')],
    [sg.Text('senha')],
    [sg.Input(key='senha')],
    [sg.Button('Login')],
    [sg.Text('',key='mensagem')],
 
]
window = sg.Window('login',layout=layout)

while True:
    event,values = window.read()
    if event == sg.WIN_CLOSED:
        break
    elif event == 'Login':
        usuario = values ['usuario']  
        senha = values ['senha']              
        senha_correta ='123'
        usuario_correto = 'P'

        if senha ==senha_correta and usuario ==usuario_correto:
            window['mensagem'].update('Login feito com sucesso')
        else:
            window['mensagem'].update('senha ou user incorreto')
