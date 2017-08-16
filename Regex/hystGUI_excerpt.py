# Probe max DC Offset
self.probeMaxDCLabel = tk.Label(self.hystGUI, text="DC Max", bg=self.backClr)
self.probeMaxDCUnit = tk.Label(self.hystGUI, text="V", bg=self.backClr)
self.probeMaxDCEntry = tk.Entry(self.hystGUI, validate="key")
self.probeMaxDCEntry['validatecommand'] = (self.probeMaxDCEntry.register(self.testVal),'%P','%i','%d')

# Probe min DC Offset
self.probeMinDCLabel = tk.Label(self.hystGUI, text="DC Min", bg=self.backClr)
self.probeMinDCUnit = tk.Label(self.hystGUI, text="V", bg=self.backClr)
self.probeMinDCEntry = tk.Entry(self.hystGUI, validate="key")
self.probeMinDCEntry['validatecommand'] = (self.probeMinDCEntry.register(self.testVal),'%P','%i','%d')


self.botElectLabel = tk.Label(self.hystGUI, text="Bottom Electrode", font=("bold", 10), bg=self.backClr)

# Bottom Electrode max DC Offset
self.botElectMaxDCLabel = tk.Label(self.hystGUI, text="DC Max", bg=self.backClr)
self.botElectMaxDCUnit = tk.Label(self.hystGUI, text="V", bg=self.backClr)
self.botElectMaxDCEntry = tk.Entry(self.hystGUI, validate="key")
self.botElectMaxDCEntry['validatecommand'] = (self.botElectMaxDCEntry.register(self.testVal),'%P','%i','%d')

# Bottom Electrode min DC Offset
self.botElectMinDCLabel = tk.Label(self.hystGUI, text="DC Min", bg=self.backClr)
self.botElectMinDCUnit = tk.Label(self.hystGUI, text="V", bg=self.backClr)
self.botElectMinDCEntry = tk.Entry(self.hystGUI, validate="key")
self.botElectMinDCEntry['validatecommand'] = (self.botElectMinDCEntry.register(self.testVal),'%P','%i','%d')


self.configLabel = tk.Label(self.hystGUI, text="Configure Scan", font=("bold", 10), bg=self.backClr)

# Times
# Bias time
self.biasTimeLabel = tk.Label(self.hystGUI, text="Bias Time", bg=self.backClr)
self.biasTimeUnit = tk.Label(self.hystGUI, text="ms", bg=self.backClr)
self.biasTimeEntry = tk.Entry(self.hystGUI, validate="key")
self.biasTimeEntry['validatecommand'] = (self.biasTimeEntry.register(self.testValPos),'%P','%i','%d')

# Bias intermission time; to allow system to settle before data aquisition
self.biasInterLabel = tk.Label(self.hystGUI, text="Bias Wait", bg=self.backClr)
self.biasInterUnit = tk.Label(self.hystGUI, text="ms", bg=self.backClr)
self.biasInterEntry = tk.Entry(self.hystGUI, validate="key")
self.biasInterEntry['validatecommand'] = (self.biasInterEntry.register(self.testValPos),'%P','%i','%d')

# 0 V time
self.zeroVTimeLabel = tk.Label(self.hystGUI, text="0 V Time", bg=self.backClr)
self.zeroVTimeUnit = tk.Label(self.hystGUI, text="ms", bg=self.backClr)
self.zeroVTimeEntry = tk.Entry(self.hystGUI, validate="key")
self.zeroVTimeEntry['validatecommand'] = (self.zeroVTimeEntry.register(self.testValPos),'%P','%i','%d')

# 0 V intermission time; to allow system to settle before data aquisition
self.zeroVInterLabel = tk.Label(self.hystGUI, text="0 V Wait", bg=self.backClr)
self.zeroVInterUnit = tk.Label(self.hystGUI, text="ms", bg=self.backClr)
self.zeroVInterEntry = tk.Entry(self.hystGUI, validate="key")
self.zeroVInterEntry['validatecommand'] = (self.zeroVInterEntry.register(self.testValPos),'%P','%i','%d')


# Hysteresis Setup
# Number of voltage increments, from 0th, per loop
self.numStepsLabel = tk.Label(self.hystGUI, text="Steps", bg=self.backClr)
self.numStepsEntry = tk.Entry(self.hystGUI, validate="key")
self.numStepsEntry['validatecommand'] = (self.numStepsEntry.register(self.testValPosInteg),'%P','%i','%d')

# Number of loops
self.numLoopsLabel = tk.Label(self.hystGUI, text="Loop", bg=self.backClr)
self.numLoopsUnit = tk.Label(self.hystGUI, text="times", bg=self.backClr)
self.numLoopsEntry = tk.Entry(self.hystGUI, validate="key")
self.numLoopsEntry['validatecommand'] = (self.numLoopsEntry.register(self.testValPosInteg),'%P','%i','%d')

# Pattern
self.patternLabel = tk.Label(self.hystGUI, text="Pattern", bg=self.backClr)
self.patternUnit = tk.Label(self.hystGUI, text="", bg=self.backClr)
self.patternEntry = tk.ttk.Combobox(self.hystGUI, values=self.scanPatterns)


# Probe offset source
self.probeAuxLabel = tk.Label(self.hystGUI, text="Aux Out", bg=self.backClr)
self.probeAuxUnit = tk.Label(self.hystGUI, text="", bg=self.backClr)
self.probeAuxEntry = tk.ttk.Combobox(self.hystGUI, values=self.auxOuts)

# Bottom Electrode offset source
self.botElectAuxLabel = tk.Label(self.hystGUI, text="Aux Out", bg=self.backClr)
self.botElectAuxUnit = tk.Label(self.hystGUI, text="", bg=self.backClr)
self.botElectAuxEntry = tk.ttk.Combobox(self.hystGUI, values=self.auxOuts)


# Execution buttons
self.executeButton = tk.Button(self.hystGUI, text='Execute', command=self.execute, bg=self.btnClr)
self.restoreDefaultButton = tk.Button(self.hystGUI, text='Restore Default Values',
                                      command=self.restoreDefault, bg=self.btnClr)
self.makeDefaultButton = tk.Button(self.hystGUI, text='Make Values Default',
                                   command=self.makeDefault, bg=self.btnClr)


# Plot
self.plotLabel = tk.Label(self.hystGUI, text="Plot", font=("bold", 10), bg=self.backClr)

# Horizontal axis
self.plotxLabel = tk.Label(self.hystGUI, text="Horizontal Axis", bg=self.backClr)
self.plotxUnit = tk.Label(self.hystGUI, text="", bg=self.backClr)
self.plotxEntry = tk.ttk.Combobox(self.hystGUI, values=self.plotSelection)

# Vertical axis
self.plotyLabel = tk.Label(self.hystGUI, text="Vertical Axis", bg=self.backClr)
self.plotyUnit = tk.Label(self.hystGUI, text="", bg=self.backClr)
self.plotyEntry = tk.ttk.Combobox(self.hystGUI, values=self.plotSelection)

# Plot button
self.plotButton = tk.Button(self.hystGUI, text='New Plot', command=self.plot, bg=self.btnClr)
self.clearPlotButton = tk.Button(self.hystGUI, text='Clear', command=self.clear_meas,
                                 bg=self.btnClr)
self.saveButton = tk.Button(self.hystGUI, text='Save', command=self.output_data,
                                 bg=self.btnClr)

# Probe out
self.probeOutLabel = tk.Label(self.hystGUI, text="Probe Out", bg=self.backClr)
self.probeOutUnit = tk.Label(self.hystGUI, text="", bg=self.backClr)
self.probeOutEntry = tk.ttk.Combobox(self.hystGUI, values=self.probeOut)

# Average over repeated x values
self.avgRepeatedx = tk.IntVar()
self.avgRepeatedxLabel = tk.Label(self.hystGUI, text="Avg Horiz Repeats", bg=self.backClr)
self.avgRepeatedxEntry = tk.Checkbutton(self.hystGUI, text="", variable=self.avgRepeatedx, onvalue=1, 
                                        offvalue=0, bg=self.backClr)

# Average over repeated y values
self.avgRepeatedy = tk.IntVar()
self.avgRepeatedyLabel = tk.Label(self.hystGUI, text="Avg Vert Repeats", bg=self.backClr)
self.avgRepeatedyEntry = tk.Checkbutton(self.hystGUI, text="", variable=self.avgRepeatedy, onvalue=1,
                                        offvalue=0, bg=self.backClr)

# Demodulator
self.demodLabel = tk.Label(self.hystGUI, text="Demod", bg=self.backClr)
self.demodUnit = tk.Label(self.hystGUI, text="", bg=self.backClr)
self.demodEntry = tk.ttk.Combobox(self.hystGUI, values=self.demods)
