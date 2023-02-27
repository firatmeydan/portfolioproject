import datetime
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class User_Account(db.Model):
    __tablename__ = 'user_accounts'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    username = db.Column(db.String(128), unique=True, nullable=False)
    password = db.Column(db.String(128), nullable=False)
    student_id = db.Column('student_id', db.Integer,
        db.ForeignKey('students.id'))
    
    def __init__(self, username: str, password: str):
        self.username = username
        self.password = password
        
    def serialize(self):
        return {
            'id': self.id,
            'username': self.username,
        }
class Student(db.Model):
    __tablename__='students'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    first_name = db.Column(db.String(128), nullable=False)
    last_name = db.Column(db.String(128), nullable=False)
    account_id = db.Column('account_id', db.Integer,
        db.ForeignKey('user_accounts.id'))
   
    def __init__(self, first_name: str, last_name: str, account_id:int):
        self.first_name = first_name
        self.last_name = last_name
        self.account_id = account_id
    
    def serialize(self):
        return {
            'id': self.id,
            'first_name': self.first_name,
            'last_name' : self.last_name,
        }