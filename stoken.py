from itsdangerous import URLSafeTimedSerializer
salt='extra@123'
secret_key='Codegnan@2018'
def entoken(data):
    serializer=URLSafeTimedSerializer(secret_key)
    return serializer.dumps(data,salt=salt)
def dtoken(data):
    serializer=URLSafeTimedSerializer(secret_key)
    return serializer.loads(data,salt=salt)