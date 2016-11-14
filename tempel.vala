string stdin_read() {
    var input = new StringBuilder();
    var buffer = new char[1024];
    while (!stdin.eof()) {
        string chunk = stdin.gets(buffer);
        if (chunk != null) {
            input.append(chunk);
        }
    }
    return input.str;
}

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
    string? text = stdin_read();
    post(text);
}
