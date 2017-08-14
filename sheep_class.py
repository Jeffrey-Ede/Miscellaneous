class Sheep:
    def __init__(self, name='default', mum='mother', dad='father'):
        print("Baa")
        self.sheep_name = name
        self.mother = mum
        self.father = dad
        
    def name(self):
        print(self.sheep_name)
        
    @staticmethod
    def walk():
        print("Sheep is walking")
    
    # Give birth to a new sheep
    def create_sheep(self, name, sheep2):
        return Sheep(name, mum=self.sheep_name, dad=sheep2.sheep_name)
    
    def add(self, x, y):
        print(x+y)
        
    def new_parents(self, mum, dad):
        self.mother = mum
        self.father = dad
        
    
sheep1 = Sheep('Johnny')
sheep2 = Sheep('Barbara')

sheep1.name()
sheep1.walk()

baby_sheep = sheep2.create_sheep('Fluffy', sheep1)
print(baby_sheep.mother, baby_sheep.father, baby_sheep.sheep_name)

baby_sheep.add(2,3)

baby_sheep.new_parents('Jill', 'Jack')
print(baby_sheep.mother, baby_sheep.father)

print(sheep1.__str__())