# Write your code here :-)
_REG_INPUT = 0x00
_REG_OUTPUT = 0x01


class McuCommunication:
    def __init__(self, i2c, *, address=0x20, int1=None, int2=None):
        self._i2c = i2c
        self._address = address
        super().__init__()

    def ReadMcuOutputData(self):
        mucData = self.read_register(_REG_OUTPUT, 12)
        return mucData

    def WriteMcuInputData(self, value):
        self.write_register_byte(_REG_INPUT, value)

    def read_register(self, register, length):
        return self._i2c.readfrom_mem(self._address, register, length)

    def write_register_byte(self, register, value):
        self._i2c.writeto(self._address, chr(register) + value)

