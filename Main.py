import PySimpleGUI as sg

sg.theme('DarkAmber')
layout = [[sg.Text('Momentum Mod Installation Directory')],
          [sg.Input(), sg.FileBrowse()],
          [sg.Output(size=(50, 10))],
          [sg.OK(), sg.Cancel()]]
window = sg.Window('Window Title', layout)
while True:
    event, values = window.read()
    if event in (none, 'Cancel'):
        break
window.close()
