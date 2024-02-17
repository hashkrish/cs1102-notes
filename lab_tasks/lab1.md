
## Activity 1

1. Create the following in your current working directory

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


2. Remove the structure completely created above from your working directory. Write all the commands you used to create the above in a file 'script.sh' and make it executable.

3. Following text contains all the information you need to know about a tmux - a terminal multiplexer. Please go to your terminal and perform all the operations mentioned.

```markdown
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

```


4. Following file contains basic operations one can perform for vi editor. Use tmux- terminal multiplexer to Open this file in to a pane while in the second pane you perform operations listed in the text file.

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


5. Following text contains all the basic operations a beginner needs to know in an emacs editor. Please open a pane in tmux which will show this file while you perform these steps.

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

6. To assess if the students have completed all the tasks we can conduct a short quiz on the tasks.