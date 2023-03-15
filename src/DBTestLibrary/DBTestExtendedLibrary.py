from robot.api.deco import library, keyword
from RPA.Database import  Database

@library
class DBTestExtendedLibrary (Database):

    def __init__(self):
        super(Database,self).__init__()

    @keyword
    def connect_to_database(self):
       return  super().connect_to_database()
    
    @keyword
    def call_stored_procedure(self):
        return super().call_stored_procedure()
    
    @keyword
    def description(self):
       return super().description()
    
    @keyword
    def disconnect_from_database(self):
       return super().disconnect_from_database()
    
    @keyword
    def execute_sql_script(self):
       return super().execute_sql_script()
    
    @keyword
    def get_number_of_rows(self):    
       return super().get_number_of_rows()
    
    @keyword
    def get_rows(self):
        return super().get_rows()
    
    @keyword
    def query(self):
       return super().query()
    
    @keyword
    def set_auto_commit(self):
        return super().set_auto_commit
   