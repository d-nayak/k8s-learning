from flask import Flask
from flask import request

app = Flask(__name__)

@app.route("/")
def index():
    number = request.args.get("number", "")
    if number:
        factorial = get_factorial(number)
    else:
        factorial = ""
        
    return (
	"""<form action="" method="get">
                Number: <input type="text" name="number">
                <input type="submit" value="Get factorial">
            </form>"""
	+ "Number: " 
        + number 
        + "  Factorial: "
	+ factorial
    )

def get_factorial(number):
    try:
        num = int(number)
        if num < 1:
            return str(1)
        fact = 1
        while num:
            fact = fact*num
            num = num-1
        return str(fact)
    except:
        return "Invalid input"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8081, debug=True)
