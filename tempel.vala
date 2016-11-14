void post(string? text) {
    var session = new Soup.Session();
    var message = new Soup.Message("POST", "http://tempel.blankon.in");
    var payload = Soup.Form.encode("content", text, "language", "bash");
    message.set_request("application/x-www-form-urlencoded", Soup.MemoryUse.COPY, payload.data);
    message.set_flags(Soup.MessageFlags.NO_REDIRECT);
    session.send_message(message);
    stdout.printf("%s\n", message.response_headers.get_one("Location"));
    stdout.printf("<3\n");
}

void main() {
    string? text = stdin.read_line();
    post(text);
}
