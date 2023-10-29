from . import db 
from flask_login import UserMixin
from sqlalchemy.sql import func

class Rooms(db.Model):
    room_id = db.Column(db.Integer, primary_key=True)
    room_name = db.Column(db.String(150), nullable=False, default='Room Name')
    room_type = db.Column(db.String(150), nullable=False, default='Room Type')
    room_size = db.Column(db.String(150), nullable=False, default='Room Size')
    room_price = db.Column(db.Integer, nullable=False, default=0)
    room_view_images = db.Column(db.String(150), nullable=False, default='Room View Images')
