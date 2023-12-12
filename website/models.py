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
    room_view_images2 = db.Column(db.String(150), nullable=False, default='Room View Images2')


class Booking(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    own_name = db.Column(db.String(50))
    own_phone_number = db.Column(db.String(15))
    own_email = db.Column(db.String(50), unique=True, nullable=False)
    own_country = db.Column(db.String(50))
    own_contact_details = db.Column(db.String(255))
    room_id = db.Column(db.String(20))
    booking_date = db.Column(db.DateTime, default=func.now())
    payments = db.relationship('Payment', backref='booking', lazy=True)
    guests = db.relationship('Guest', backref='booking', lazy=True)
class Payment(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    payment_method = db.Column(db.String(20))
    amount = db.Column(db.Float)
    voucher = db.Column(db.String(50))
    booking_id = db.Column(db.Integer, db.ForeignKey('booking.id'), nullable=False)

class Guest(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    guest_name = db.Column(db.String(50))
    guest_id = db.Column(db.String(20))
    booking_id = db.Column(db.Integer, db.ForeignKey('booking.id'), nullable=False)


class Review(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    room_id = db.Column(db.Integer, db.ForeignKey(
        'rooms.room_id'), nullable=True)
    guest_id = db.Column(db.Integer, db.ForeignKey('guest.id'), nullable=True)
    content = db.Column(db.String(1000), nullable=True)
    # Options: Pending, Approved, Rejected
    status = db.Column(db.String(50), default='Pending')
    created_at = db.Column(db.DateTime, default=func.now())

    room = db.relationship('Rooms', backref='reviews')
    guest = db.relationship('Guest', backref='reviews')