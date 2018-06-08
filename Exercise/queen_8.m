n = 8;
chessboard = zeros(n);
queen(n, 1, chessboard, 0);

function count = queen(n, row, chessboard, count)                           % Depth-First Search
    for column = 1 : n
        if chessboard(row, column) == 0
            chessboard_temp = chessboard;
            for i = 1 : n                                                   % Line 9~18: add the new queen to the chessboard.
                chessboard_temp(row, i) = 1;                                % 1 for occupied by current Queen
                chessboard_temp(i, column) = 1;
                for j = 1 : n                                               % Question for you:
                    if (j - i) == (column - row)                            % What does line 12~19 do?
                        chessboard_temp(i, j) = 1;
                    end
                    if (j + i) == (column + row)
                        chessboard_temp(i, j) = 1;
                    end
                end
            end
            chessboard_temp(row, column) = 2;                               % 2 for Queen
            if row == n
                count = count + 1;
                chessboard_output(n, chessboard_temp, count);
            else
                count = queen(n, row + 1, chessboard_temp, count);          % Recursion for next row.
            end
        end
    end
end

function chessboard_output(n, chessboard, count)
    fprintf('Answer #%d\n', count);
    for i = 1 : n 
        for j = 1 : n
            fprintf('%d ', chessboard(i, j));
        end
        fprintf('\n');
    end
end

        