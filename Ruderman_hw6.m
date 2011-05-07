% Ruderman_hw6.m
% This script will run all of the test function on the functions I have
% made for homework 6

diary hw4diary.txt

disp('Test groupNoAdj')
fprintf('There were %d errors.\n\n', test_groupNoAdj())

disp('Test groupSum')
fprintf('There were %d errors.\n\n', test_groupSum())

disp('Test groupSum6')
fprintf('There were %d errors.\n\n', test_groupSum6())

disp('Test intMax')
fprintf('There were %d errors.\n\n', test_intMax())

disp('Test lastDigit')
fprintf('There were %d errors.\n\n',test_lastDigit())

disp('Test lessBy10')
fprintf('There were %d errors.\n\n', test_lessBy10())

disp('Test maxSpan')
fprintf('There were %d errors.\n\n', test_maxSpan())

disp('Test nearOnes')
fprintf('There were %d errors.\n\n', test_nearOnes())

disp('Test parrot_trouble')
fprintf('There were %d errors.\n\n', test_parrot_trouble())

disp('Test sameFirstLast')
fprintf('There were %d errors.\n\n', test_sameFirstLast())

disp('Test strCount')
fprintf('There were %d errors.\n\n', test_strCount())

disp('Test stringE')
fprintf('There were %d errors.\n\n', test_stringE())

disp('Test triangle')
fprintf('There were %d errors.\n\n', test_triangle())

diary off