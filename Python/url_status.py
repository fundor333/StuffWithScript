try:
    import httplib
except:
    import http.client as httplib

url = ""


def get_status_code(host, path="/"):
    """ This function retreives the status code of a website by requesting
        HEAD data from the host. This means that it only requests the headers.
        If the host cannot be reached or something else goes wrong, it returns
        None instead.
    """
    try:
        conn = httplib.HTTPConnection(host)
        conn.request("HEAD", path)
        return conn.getresponse().status
    except Exception:
        return None


status_code = get_status_code(url)
if status_code:
    print(status_code)
else:
    print("Cannot reach " + url)
