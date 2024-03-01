## ES Lab 1 Activities

### 1.1 **Creating Directory Structure:**

```
project/
├── directory1/
│   ├── file1.txt
│   └── file2.txt
├── directory2/
│   ├── file3.txt
│   └── file4.txt
├── original_file.txt
├── hardlink_to_file1.txt
└── softlink_to_file2.txt
```

### 1.2 **Creating Directory Structure using a script:**

- Write commands used to create the directory structure into a file named `script.sh` and make it executable.

### 1.3 Date and Ncal Commands

- Execute the `date` command using flags and refer to its manual page for more information.

  - Display the date in the format `YYYY-MM-DD`.
  - Display the date and time in the format `YYYY-MM-DD HH:MM:SS`.
  - Display the date and time in the format `YYYY-MM-DD HH:MM:SS` in UTC.
  - Display the date and time in the format `YYYY-MM-DD HH:MM:SS` in your local time zone (IST).
  - Display the Unix epoch time.

- Execute the `ncal` commands using flags and refer to their manual pages for more information.

  - Display the calendar for the current month.
  - Display the calendar for the current year.
  - Display the calendar for the year 2025 in a vertical format.
  - Display the calendar for the April of the year 2025 in a vertical format.

### 1.4 Brace Expansion and Echo Command

- Explore brace expansion and demonstrate its usage with the `echo` command.

  - Use brace expansion to display the numbers from 1 to 5.
  - Use brace expansion to display the letters from a to e.
  - Use brace expansion to display the sequence 1a, 1b, 1c, 1d, 1e, 2a, ..., 5e.
  - Use brace expansion to display the sequence 1a, 1b, 1c, 1d, 1e, 2a, ..., 5e in reverse order.
  - Use brace expansion to display the sequence 1a, 1c, 1e, 2a, ..., 5e. Cartisian product of {1, 2, 3, 4, 5} and {a, c, e}.
  - Use brace expansion to display the sequence z, y, x, ..., a.

### 1.5 **Tmux**

- Start a new tmux session.
- Perform the operations listed below in the terminal:

#### Tmux Operations

Welcome to tmux - a terminal multiplexer!

Tmux allows you to create multiple terminal sessions within a single window, enhancing your productivity and workflow. Here are some essential operations to get you started:

1. Starting tmux:

   - To start a new tmux session: Simply type `tmux` in your terminal and press `Enter`.

2. Sessions:

   - Create a new session: `tmux new-session -s <session_name>`
   - List existing sessions: `tmux list-sessions`
   - Attach to a session: `tmux attach-session -t <session_name>`
   - Detach from a session: Press `Ctrl+b` followed by `d`

3. Windows (Tabs):

   - Create a new window: Press `Ctrl+b` followed by `c`
   - Switch between windows: Press `Ctrl+b` followed by a window number (starting from 0) or use arrow keys.
   - Rename a window: Press `Ctrl+b` followed by `,`, then type the new name and press `Enter`.
   - Close a window: Press `Ctrl+b` followed by `&`.

4. Panes (Splitting Windows):

   - Split the current pane vertically: Press `Ctrl+b` followed by `%`
   - Split the current pane horizontally: Press `Ctrl+b` followed by `"`
   - Switch between panes: Press `Ctrl+b` followed by an arrow key (up, down, left, right)
   - Resize panes: Press `Ctrl+b` followed by `Ctrl+arrow key` in the direction you want to resize.
   - Close a pane: Press `Ctrl+b` followed by `x`, then confirm with `y`.

5. Copy Mode:

   - Enter copy mode: Press `Ctrl+b` followed by `[`
   - Navigate: Use arrow keys or vim-like navigation (h, j, k, l)
   - Copy text: Press `Space` to start selection, move cursor to select text, then press `Enter` to copy.
   - Paste text: Press `Ctrl+b` followed by `]`

   These are just a few basic operations to help you get started with tmux. As you become more comfortable, you can explore advanced features and customize tmux to suit your workflow. Happy multiplexing!

### 1.6 **Vi Editor**

- Open a pane in tmux and display the file containing basic vi editor operations.
- Perform the operations listed in the file.

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

### 1.7 **Emacs Editor**

- Open another pane in tmux and display the file containing basic emacs editor operations.
- Perform the operations listed in the file.

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
