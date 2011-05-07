function total = triangle(rows)
%We have triangle made of blocks. The topmost row has 1 block, the next row
%down has 2 blocks, the next row has 3 blocks, and so on. Compute 
%recursively (no loops or multiplication) the total number of blocks in 
%such a triangle with the given number of rows.

if rows == 0
    total = 0;
    return
end

if rows == 1
    total = 1;
else
    total = rows + triangle(rows - 1);
end

end
