from flask import *

app = Flask(__name__)

@app.route("/",methods=['POST','GET'])
def login():
    if request.method == "POST" :
        usr_name = request.form['usrname']
        usr_mail = request.form['usrmail']
        usr_num = request.form['usrnum']
        return redirect(url_for('user',user=usr_name,mail=usr_mail,number=usr_num))
    else:
        return render_template("home.html")

@app.route('/<user>/<mail>/<number>')
def user(user,mail,number):
    return render_template("user_info.html", data = user,maildata=mail,num=number)


if __name__ == "__main__":
    app.run(debug=True)