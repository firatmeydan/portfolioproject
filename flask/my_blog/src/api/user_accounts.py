
from flask import Blueprint, jsonify, abort, request
from ..models import Student, User_Account, db

bp = Blueprint('user_accounts', __name__, url_prefix='/user_accounts')

@bp.route('', methods=['GET']) # decorator takes path and list of HTTP verbs
def index():
    user_accounts = User_Account.query.all() # ORM performs SELECT query
    result = []
    for t in user_accounts:
        result.append(t.serialize()) # build list of user_accounts as dictionaries
    return jsonify(result) # return JSON response

@bp.route('/<int:id>', methods=['GET'])
def show(id: int):
    ua = User_Account.query.get_or_404(id)
    return jsonify(ua.serialize())
