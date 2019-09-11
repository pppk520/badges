class Condition(object):
    def __init__(self):
        pass

    def the_ifelse(self, flag):
        if flag:
            return True
        else:
            return False

    def the_while(self, flag):
        while flag:
            print("in while")

        return flag
