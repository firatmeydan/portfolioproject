
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
    t = User_Account.query.get_or_404(id)
    return jsonify(t.serialize())


# @bp.route('', methods=['POST'])
# def create():
#     # req body must contain user_id and content
#     if 'user_id' not in request.json or 'content' not in request.json:
#         return abort(400)
#     # user with id of user_id must exist
#     User.query.get_or_404(request.json['user_id'])
#     # construct Tweet
#     t = User(
#         user_id=request.json['user_id'],
#         content=request.json['content']
#     )
#     db.session.add(t) # prepare CREATE statement
#     db.session.commit() # execute CREATE statement
#     return jsonify(t.serialize())

# @bp.route('/<int:id>', methods=['DELETE'])
# def delete(id: int):
#     t = User.query.get_or_404(id)
#     try:
#         db.session.delete(t) # prepare DELETE statement
#         db.session.commit() # execute DELETE statement
#         return jsonify(True)
#     except:
#         # something went wrong :(
#         return jsonify(False)
    
# @bp.route('/<int:id>/liking_users', methods=['GET'])
# def liking_users(id: int):
#     t = Tweet.query.get_or_404(id)
#     result = []
#     for u in t.liking_users:
#         result.append(u.serialize())
#     return jsonify(result)