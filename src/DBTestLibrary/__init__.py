from RPA.Database import Database
from src.DBTestLibrary.DBTestExtendedLibrary import DBTestExtendedLibrary


class DBTestLibrary(DBTestExtendedLibrary):
    def __init__(self):
        super(DBTestExtendedLibrary, self).__init__()
        super(Database, self).__init__()

    