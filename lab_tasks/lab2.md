
## ES Lab 2 Activities

1. Launch sleep command with 1, 5, 100, 1000 and do the following
	1. send the sleep command to background
	2. bring the sleep command to foreground
	3. list the PID of sleep command
	4. run sleep command in shell and subshells (child shell)
	5. demonstrate the use of pstree command, ps, ps -aux
	6. run a sleep command at certain predefined time, day and date
	7. halt the sleep commands
	8. interrupt the sleep commands
	9. kill the sleep commands
2. Find and show all use cases of cat command
3. An Access log can provide very useful information. A sample log entry is shown below. Entire sample log is stored in your current working directory.
```markdown
83.97.73.245 - - [16/Feb/2024:00:11:33 +0000] "GET /?XDEBUG_SESSION_START=phpstorm HTTP/1.1" 404 184 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36"

```

```markdown
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
```

**Based on this information use pipes, wc, grep, uniq, sort, cut commands to achieve the following**

1. Create a list of unique IP address present in the log
2. Print total count of entries which encountered `404` error
3. from the log only extract the time data (:00:11:33 from above example. Keep only hours and minutes)

6. Following file contains basic operations one can perform for vi editor. Use regular expressions to process a log file using vi/vim/emacs and document the same.
	1.  search for all the "Macintosh" appearances
	2.  Search and replace the IP address such that `83.97.73.245` is masked with `83.xx.xx.245`

```markdown
Here are some basic operations in vi/vim and Emacs that utilize regular expressions to process a file:

**In vi/vim:**

1. **Search and Replace:**
    
    - `:%s/regex/replacement/g`: Search and replace all occurrences of `regex` with `replacement` globally in the file.
    - `:s/regex/replacement/g`: Search and replace all occurrences of `regex` with `replacement` in the current line.
    - `:s/regex/replacement/gc`: Same as above, but prompt for confirmation before replacing each occurrence.
2. **Global Commands:**
    
    - `:g/regex/command`: Execute a `command` on all lines matching `regex`.
3. **Search:**
    
    - `/regex`: Search forward for `regex`.
    - `?regex`: Search backward for `regex`.
    - `n`: Move to the next occurrence of the search pattern.
    - `N`: Move to the previous occurrence of the search pattern.
4. **Substitute in Visual Mode:**
    
    - Select text in visual mode, then `:s/regex/replacement/g` to replace within the selected area.

**In Emacs:**

1. **Search and Replace:**
    
    - `M-x query-replace-regexp`: Search and replace interactively using regular expressions.
    - `M-x replace-regexp`: Search and replace all occurrences using regular expressions.
2. **Search:**
    
    - `C-s`: Incremental search forward.
    - `C-r`: Incremental search backward.
    - `M-x occur`: List lines matching a regex in a separate buffer.
    - `M-x multi-isearch-begins`: Search for several regexps at once.
3. **Editing Commands:**
    
    - `M-x flush-lines`: Delete lines containing a match for a regexp.
    - `M-x keep-lines`: Delete lines not containing a match for a regexp.
    - `M-x replace-string`: Replace exact matches of string with newstring.
    - `M-x replace-regexp`: Replace matches for regexp with newstring.
    - `M-x delete-matching-lines`: Delete lines containing a match for a regexp.
    - `M-x delete-non-matching-lines`: Delete lines not containing a match for a regexp.

These are some of the basic operations using regular expressions in vi/vim and Emacs. They allow for powerful manipulation and editing of text files.
```

Basic Operations help for Vi
```markdown
Welcome to the world of vi!
Vi is a powerful text editor that comes pre-installed on most Unix-based systems. It's a modal editor, which means it has different modes for inserting text, navigating, and performing various operations.

Below are some basic operations you can perform in vi:

1. Opening and Saving Files:
   - To open a file: `vi filename`
   - To save changes and exit: Press `Esc` to ensure you're in command mode, then type `:wq` and press `Enter`.
   - To exit without saving changes: Press `Esc`, then type `:q!` and press `Enter`.

2. Navigation:
   - Use the arrow keys or `h`, `j`, `k`, `l` keys to move left, down, up, or right respectively.
   - Jump to the beginning of a line: `0` (zero)
   - Jump to the end of a line: `$`
   - Jump to a specific line: `:<line_number>`, e.g., `:10` to jump to line 10.

3. Editing:
   - To switch to insert mode: Press `i` to insert before the cursor.
   - To append text after the cursor: Press `a`.
   - To delete characters: Press `x`.
   - To delete a whole line: Press `dd`.

4. Copying, Cutting, and Pasting:
   - Copy (yank) a line: Press `yy`.
   - Cut (delete) a line: Press `dd`.
   - Paste: Press `p` to paste below the current line or `P` to paste above the current line.

5. Search and Replace:
   - To search for a pattern: Press `/` followed by the pattern and then `Enter`. Use `n` to find the next occurrence.
   - To replace a pattern: Press `:%s/pattern/replacement/g` and press `Enter`. This replaces all occurrences of 'pattern' with 'replacement' in the entire file.

These are just a few basic operations in vi. It's a vast editor with many more features and commands to explore. Happy editing!

```

Basic Operations help for Emacs

```markdown
Welcome to Emacs - a powerful and extensible text editor!
Emacs provides a wide range of features to help you edit text efficiently. Below are some essential operations to get you started:

1. Opening and Saving Files:
   - To open a file: Press `Ctrl+x Ctrl+f`, then type the file path and press `Enter`.
   - To save changes: Press `Ctrl+x Ctrl+s`.
   - To save changes and exit: Press `Ctrl+x Ctrl+w`.

2. Navigation:
   - Move cursor:
     - Forward one character: Press `Ctrl+f`.
     - Backward one character: Press `Ctrl+b`.
     - Up one line: Press `Ctrl+p`.
     - Down one line: Press `Ctrl+n`.
   - Move to beginning of line: Press `Ctrl+a`.
   - Move to end of line: Press `Ctrl+e`.
   - Move to beginning of buffer: Press `Alt+<` (Alt key + `<`).

3. Editing:
   - Insert text:
     - Type text at cursor position.
     - To delete characters: Use `Backspace` or `Delete` key.
   - Delete text:
     - Delete forward: Press `Ctrl+d`.
     - Delete backward: Press `Ctrl+h`.
   - Cut, Copy, and Paste:
     - Cut (delete): Press `Ctrl+k`.
     - Copy: Press `Alt+w`.
     - Paste: Press `Ctrl+y`.

4. Search and Replace:
   - Search:
     - Forward search: Press `Ctrl+s`, type the search term, and press `Enter`.
     - Backward search: Press `Ctrl+r`.
   - Replace:
     - Press `Alt+Shift+5` (`Alt+%`), type the search term, then the replacement term, and press `Enter` to confirm each replacement.

5. Buffers and Windows:
   - Buffers:
     - List buffers: Press `Ctrl+x Ctrl+b`.
     - Switch buffers: Press `Ctrl+x b`.
   - Windows:
     - Split window vertically: Press `Ctrl+x 2`.
     - Split window horizontally: Press `Ctrl+x 3`.
     - Switch between windows: Press `Ctrl+x o`.

6. Help:
   - Access help: Press `Ctrl+h t` for the Emacs tutorial.
   - Get help on a command: Press `Ctrl+h k`, then the key combination you want help for.

These are just a few basic operations to help you get started with Emacs. As you become more familiar, you can explore its extensive customization options and advanced features. Happy editing!

```