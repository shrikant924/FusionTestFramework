from typing import Dict, List, Optional, Union
from robot.api.deco import library, keyword
from RPA.Database import Database


@library
class DBTestExtendedLibrary(Database):

    @keyword
    def call_stored_procedure(self, name: str, params: Optional[List[str]] = None, sanstran: Optional[bool] = False) -> List[str]:
        return super().call_stored_procedure(name, params, sanstran)

    @keyword
    def connect_to_database(self, module_name: Optional[str] = None, database: Optional[str] = None, username: Optional[str] = None, password: Optional[str] = None, host: Optional[str] = None, port: Optional[int] = None, charset: Optional[str] = None, config_file: Optional[str] = "db.cfg", autocommit: Optional[bool] = False) -> None:
        return super().connect_to_database(module_name, database, username, password, host, port, charset, config_file, autocommit)

    @keyword
    def disconnect_from_database(self) -> None:
        return super().disconnect_from_database()

    @keyword
    def description(self, table: str) -> list:
        return super().description(table)
    
    @keyword
    def query(self):
        return super().query()
    
    @keyword
    def execute_sql_script(self, filename: str, sanstran: Optional[bool] = False, encoding: Optional[str] = "utf-8") -> None:
        return super().execute_sql_script(filename, sanstran, encoding)
        
    @keyword
    def get_number_of_rows(self, table: str, conditions: Optional[str] = None) -> int:
        return super().get_number_of_rows(table, conditions)
    
    @keyword
    def get_rows(self):
        return super().get_rows()
    

