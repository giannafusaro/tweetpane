# The main.js should create windows and handle system events
# is start up script, and runs main process of app
electron = require 'electron'

app = electron.app                       # Module to control application life.
BrowserWindow = electron.BrowserWindow   # Module to create native browser window.

# Report crashes to our server.
electron.crashReporter.start()

# Keep a global reference of the window object, if you don't, the window will
# be closed automatically when the JavaScript object is garbage collected.
mainWindow = null

# Quit when all windows are closed.
app.on 'window-all-closed', ->
  # On OS X it is common for applications and their menu bar
  # to stay active until the user quits explicitly with Cmd + Q
  if process.platform != 'darwin'
    app.quit()

# This method will be called when Electron has finished
# initialization and is ready to create browser windows.
app.on 'ready', ->
  # Create the browser window.
  mainWindow = new BrowserWindow width: 1200, height: 600

  # and load the index.html of the app.
  mainWindow.loadURL "file://#{__dirname}/../views/index.html"

  # Open the DevTools.
  mainWindow.webContents.openDevTools()

  # Emitted when the window is closed.
  mainWindow.on 'closed', ->
    # Dereference the window object, usually you would store windows
    # in an array if your app supports multi windows, this is the time
    # when you should delete the corresponding element.
    mainWindow = null
