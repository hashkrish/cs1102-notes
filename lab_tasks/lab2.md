## ES Lab 2 Activities

### 2.1 Sleep Command Operations

- Launch the `sleep` command with durations of 1, 5, 100, and 1000 seconds.
  1. Send the `sleep` command to the background.
  2. Bring the `sleep` command to the foreground.
  3. List the PID of the `sleep` command.
  4. Run the `sleep` command in both the shell and subshells.
  5. Demonstrate the use of `pstree` command, `ps`, `ps -aux`.
  6. Schedule a `sleep` command at a predefined time, day, and date.
  7. Halt the `sleep` commands.
  8. Interrupt the `sleep` commands.
  9. Kill the `sleep` commands.

### 2.2 Use Cases of `cat` Command

- Find and display all use cases of the `cat` command.

### 2.3 Processing Access Log

- Use pipes, `wc`, `grep`, `uniq`, `sort`, `cut` commands to perform the following operations on an access log:
  1. Create a list of unique IP addresses present in the log.
  2. Print the total count of entries encountering a `404` error.
  3. Extract only the time data (`:00:11:33` from the example) from the log, keeping only hours and minutes.

#### Sample and Explanation

```
83.97.73.245 - - [16/Feb/2024:00:11:33 +0000] "GET /?XDEBUG_SESSION_START=phpstorm HTTP/1.1" 404 184 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36"

```

Breaking the sample line from the log down into components:

- `83.97.73.245`: This is the IP address of the client making the request.
- `- -`: These hyphens typically represent the remote user and authenticated user, respectively. In this case, they're both hyphens, meaning no remote user or authenticated user information is available.
- `[16/Feb/2024:00:11:33 +0000]`: This is the timestamp of when the request was made, in the format [Day/Month/Year:Hour:Minute:Second +Timezone].
- `"GET /?XDEBUG_SESSION_START=phpstorm HTTP/1.1"`: This part shows the HTTP method used (`GET`), the requested resource (`/?XDEBUG_SESSION_START=phpstorm`), and the HTTP protocol version (`HTTP/1.1`).
- `404`: This is the HTTP status code returned by the server, indicating that the requested resource was not found.
- `184`: This is the size of the response in bytes.
- `"- "`: This part indicates the referrer URL, but in this case, it's a hyphen, indicating no referrer.
- `"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36"`: This is the user agent string, indicating the browser or user agent making the request.

The other lines in the log file follow a similar format, with each line representing a different request made to the server, including the IP address of the client, the timestamp, the requested resource, the HTTP status code, the size of the response, the referrer (if available), and the user agent string.

### 2.4 Regular Expressions in Text Editors

- Using regular expressions in `vi/vim` and `Emacs`:
  1. Search for all appearances of "Macintosh".
  2. Search and replace the IP address, masking `83.97.73.245` with `83.xx.xx.245`.

### Basic Operations in vi/vim and Emacs

#### **Vi Editor Operations**

> Welcome to the world of vi!

Vi is a powerful text editor that comes pre-installed on most Unix-based systems. It's a modal editor, which means it has different modes for inserting text, navigating, and performing various operations.

Below are some basic operations you can perform in vi:

1. **Opening and Saving Files:**

   - `vi filename`: Open a file.
   - `:wq`: Save changes and exit.
   - `:q!`: Exit without saving.

2. **Navigation:**

   - Arrow keys or `h`, `j`, `k`, `l`.
   - `0` (zero) to jump to beginning of line.
   - `$` to jump to end of line.
   - `:<line_number>` to jump to a specific line.

3. **Editing:**

   - `i` to insert before cursor.
   - `a` to append text after cursor.
   - `x` to delete characters.
   - `dd` to delete a whole line.

4. **Copying, Cutting, and Pasting:**

   - `yy` to copy a line.
   - `dd` to cut a line.
   - `p` to paste below current line, `P` to paste above.

5. **Search and Replace:**

   - `:%s/regex/replacement/g` for global search and replace.
   - `/regex` to search forward, `?regex` to search backward.

6. **Buffers and Windows**

In vi, you can also work with multiple buffers and windows to manage your editing environment more effectively.

Difference between buffer and window: - A buffer is the in-memory text of a file. - A window is a viewport on a buffer.

Here are some basic operations:

- **Buffers:**

  - `:ls` to list buffers.
  - `:b <buffer_number>` to switch buffers.
  - `:bd` to delete a buffer.
  - `:bn` to go to the next buffer.
  - `:bp` to go to the previous buffer.

- **Windows:**

  - `:sp` to split window horizontally.
  - `:vsp` to split window vertically.
  - `Ctrl+w w` to switch between windows.
  - `Ctrl+w q` to close a window.
  - `Ctrl+w r` to rotate windows.
  - `Ctrl+w =` to make all windows equal size.
  - `Ctrl+w -` to decrease window height.
  - `Ctrl+w +` to increase window height.
  - `Ctrl+w <` to decrease window width.
  - `Ctrl+w >` to increase window width.

7. **Help**:

   - Access help: Press `Esc` to ensure you're in command mode, then type `:help` and press `Enter`.
   - Get help on a command: Press `Esc` to ensure you're in command mode, then type `:help <command>` and press `Enter`.

These are just a few basic operations in vi. It's a vast editor with many more features and commands to explore. Happy editing!

#### Emacs Editor Operations

> Welcome to Emacs - a powerful and extensible text editor!

Emacs provides a wide range of features to help you edit text efficiently. Below are some essential operations to get you started:

1. **Opening and Saving Files:**

   - `Ctrl+x Ctrl+f`: Open a file.
   - `Ctrl+x Ctrl+s`: Save changes.
   - `Ctrl+x Ctrl+w`: Save changes and exit.

2. **Navigation:**

   - `Ctrl+f`, `Ctrl+b`, `Ctrl+p`, `Ctrl+n` for forward, backward, previous line, next line respectively.
   - `Ctrl+a` to beginning of line, `Ctrl+e` to end of line.
   - `Alt+<` to beginning of buffer, `Alt+>` to end of buffer.

3. **Editing:**

   - Type text at cursor position and use `Backspace` or `Delete` key to delete characters.
   - `Ctrl+d` to delete forward, `Ctrl+h` to delete backward.
   - `Ctrl+k` to cut (delete), `Alt+w` to copy, `Ctrl+y` to paste.

4. **Copying, Cutting, and Pasting:**

   - `Ctrl+k` to cut (delete).
   - `Alt+w` to copy.
   - `Ctrl+y` to paste.

5. **Search and Replace:**

   - `Ctrl+s` for forward search, `Ctrl+r` for backward.
   - `Alt+%` (`Alt+Shift+5`) for replace, with confirmation.

6. **Buffers and Windows**

   - **Buffers:**

     - `Ctrl+x Ctrl+b` to list buffers.
     - `Ctrl+x b <buffer_name>` to switch buffers.

   - **Windows:**

     - `Ctrl+x 2` to split window horizontally.
     - `Ctrl+x 3` to split window vertically.
     - `Ctrl+x o` to switch between windows.
     - `Ctrl+x 0` to close a window.
     - `Ctrl+x 1` to close all windows except the current one.

7. **Help:**

   - Access help: Press `Ctrl+h t` for the Emacs tutorial.
   - Get help on a command: Press `Ctrl+h k`, then the key combination you want help for.

These are just a few basic operations to help you get started with Emacs. As you become more familiar, you can explore its extensive customization options and advanced features. Happy editing!
