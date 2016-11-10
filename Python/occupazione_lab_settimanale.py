#!/usr/bin/python
import datetime

from bs4 import BeautifulSoup

try:
    import urllib.request as urllib
except:
    import urllib

OUTPUT_PAGE_NAME = "output.html"
NUMERO_GIORNI = 5

lab3 = "Laboratorio 3", "http://www.unive.it/phpapps/occupazione_aule/main.php?&aula=14-196"
lab5 = "Laboratorio 5", "http://www.unive.it/phpapps/occupazione_aule/main.php?&aula=14-197"

HTML = """
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Occupazione Laboratori</title>
<style>
table {
  border: 2px solid black;
  border-collapse: separate;
  border-spacing: 5px;
}
</style>
</head>
<body>
""", """</body>
</html>
"""


def this_week():
    week = []
    today = datetime.datetime.today().strftime('%d/%m/%Y')
    date = datetime.datetime.today()
    week.append(today)
    i = 1
    while len(week) < NUMERO_GIORNI:
        date += datetime.timedelta(days=1)
        if date.weekday() < 5:
            week.append((date.strftime('%d/%m/%Y')))
        else:
            print (date.weekday())
        i += 1
    return week


def eater_page(date, url):
    link = url[1] + "&data=" + date
    print ("Working on " + link)
    response = urllib.urlopen(link)
    data = response.read()
    data = BeautifulSoup(data, 'html.parser')
    data = data.findAll('table')[2]
    print ("End working on " + link)
    return "<h2>" + url[0] + "</h2>" + str(data) + "</table>"


if __name__ == '__main__':
    element = ""
    for e in this_week():
        print (e)
        element += "<h1>" + e + "</h1>"
        element += eater_page(e, lab3) + eater_page(e, lab5)
    html_page = HTML[0] + element + HTML[1]
    file = open(OUTPUT_PAGE_NAME, 'w+')
    file.write(html_page)
    file.close()
