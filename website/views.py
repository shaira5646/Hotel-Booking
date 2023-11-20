from flask import Blueprint
from flask import render_template, request
from flask import redirect
from flask import url_for
from . import db
from .models import Rooms, Payment, Guest, Booking
import random
views = Blueprint('views', __name__, template_folder='templates/home', static_folder='assets')

rooms = None


@views.route('/', methods=['GET', 'POST'])
def index():
    return render_template('index.html')


@views.route('/book', methods=['GET', 'POST'])
def book():
    if request.method == 'POST':
        print(request.form)
        own_name = request.form.get('ownName')
        own_phone_number = request.form.get('ownPhoneNumber')
        own_email = request.form.get('ownEmail')
        own_country = request.form.get('ownCountry')
        own_contact_details = request.form.get('ownContactDetails')
        room_id = request.form.get('roomId')

        guests = []
        guest_count = int(request.form.get('guestCount'))
        for i in range(1, guest_count + 1):
            guest_name = request.form.get(f'guestName{i}')
            guest_id = request.form.get(f'guestID{i}')
            guests.append(Guest(guest_name=guest_name, guest_id=guest_id))

        payment_method = request.form.get('paymentMethod')
        amount = request.form.get('amount')
        voucher = request.form.get('voucher')

        # Create a new booking
        booking = Booking(
            own_name=own_name,
            own_phone_number=own_phone_number,
            own_email=own_email,
            own_country=own_country,
            own_contact_details=own_contact_details,
            room_id=room_id,
            guests=guests
        )

        # Add payment details
        payment = Payment(
            payment_method=payment_method,
            amount=amount,
            voucher=voucher
        )

        booking.payments.append(payment)
        db.session.add(booking)
        db.session.commit()
        db.session.add(payment)
        db.session.commit()

        return render_template('confirmation.html')
    return render_template('book.html')


@views.route('/search', methods=['GET', 'POST'])
def search():
    if request.method == 'POST':
        print("POSTED")
        print(request.form)
        date = request.form.get('date')
        room_type = request.form.get('room_type')
        room_size = request.form.get('room_size')

        rooms = Rooms.query.filter_by(
            room_type=room_type, room_size=room_size).all()
        print(rooms)
        all_room_ids = [room.room_id for room in rooms]
        all_room_ids = ",".join([str(room_id) for room_id in all_room_ids])
        # Redirect to results page with the rooms
        return redirect(url_for('views.result', rooms=all_room_ids))
    return render_template('search.html')


@views.route('/result', methods=['GET', 'POST'])
def result():
    rooms = request.args.get('rooms')  # Get rooms from the query parameters
    # get all rooms from room id
    if rooms: 
        rooms = Rooms.query.filter(Rooms.room_id.in_(rooms.split(','))).all()
        return render_template('result.html', rooms=rooms)
    else: 
        return render_template('result.html', rooms=None)

@views.route('/room/<int:room_id>', methods=['GET', 'POST'])
def room(room_id):
    room = Rooms.query.filter_by(room_id=room_id).first()
    room_name = room.room_name
    room_image = f"http://127.0.0.1:5000/assets/images/{room.room_view_images}"
    print(room)
    return render_template('room.html', room_image = room_image, room_name = room_name)


@views.route('/populate', methods=['GET', 'POST'])
def populate():
    room_types = ["single", "double", "suite"]
    room_sizes = ["kids", "single-adult", "For Couple"]
    num_rooms = 20
    for _ in range(num_rooms):
        room = Rooms(
            room_name=f"Room {random.randint(1, 100)}",
            room_type=random.choice(room_types),
            room_size=random.choice(room_sizes),
            room_price=random.randint(5000, 20000),
            room_view_images=f"image_{random.randint(0,8)}.jpg"
        )
        db.session.add(room)

    db.session.commit()
    print("Populated")
    return redirect(url_for('views.index'))
