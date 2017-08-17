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
