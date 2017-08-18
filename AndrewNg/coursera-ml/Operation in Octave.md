## Operation in Octave

### Basic Operation

```octave
% 用 % 符号进行注释
% 运算结果后面如果不加 ; 符号，则直接输出结果
% help xxx 查看 xxx 指令
```

```octave
2 ^ 6  % 2 的 6 次方

% 判断
2 >= 2 % true
1 == 2  % false
1 ~= 2 % true

% 逻辑
1 && 0 % AND
1 || 0 % OR
xor(1, 0) % 1，异或运算

% 输出
a = 1 + 2; % 加 ; 则不会直接输出
a % 输出 3
disp(a) % 3
disp(a); % 3
```

```octave
% 矩阵
A = [1 2; 3 4; 5 6;7 8]
% 1  2
% 3  4
% 5  6
% 7  8

size(A) % 4  2 代表 4行2列
size(A, 1) % 4, 行数
size(A, 2) % 2, 列数

length(A) % 2，输出列数

v = 1:0.1:2 % 生成 1 行 11 列的矩阵，第一列从 1 开始，之后每行逐步递增 0.1，最后一列为 2
v = 1:6
% 1 2 3 4 5 6
```

```octave
% 快速生成矩阵

% ones(x, y), 生成 x * y 的矩阵，每个元素都是 1
ones(2, 3)
% 1  1  1
% 1  1  1

% zeros(x, y), 生成 x * y 的矩阵，每个元素都是 0
zeros(1, 3)
% 0  0  0

% rand(x, y), 生成 x * y 的矩阵，每个元素都是在 (0， 1) 之间
rand(1, 3)
% 0.30149  0.94052  0.21040

%eye(n), 生成 n * n 的单位矩阵
eye(3)
% 1  0  0
% 0  1  0
% 0  0  1

% magic(n), 生成 n * n 的矩阵，各行、各列、对角线上元素的合相同
magic(3)
% 8  1  6
% 3  5  7
% 4  9  2
```

```octave
% 矩阵运算 ----- section 1
ones(2, 3)
% 1  1  1
% 1  1  1

2 * ones(2, 3)
% 2  2  2
% 2  2  2

% 矩阵截取
A = [1 2 3; 4 5 6; 7 8 9; 10 11 12]
% 1  2  3
% 4  5  6
% 7  8  9
% 10  11  12

b = A(2, 3) % 6

B = A(:, 1); % 取全部行，每行取第一列
% 1
% 4
% 7
% 10

B2 = A(x, :); % 取第 x 行的所有数据
% ===> A(2, :)
% ===> 4  5  6

C = A([1, 2], 1:2); % 取 1、2 行，每行取 1、2 列
% 1  2
% 4  5
% 7  8

A(:, 3) = [1; 1; 1; 1] % 改变 A 的第三列
% 1  2  1
% 4  5  1
% 7  8  1
% 10  11  1
```

```octave
% 矩阵运算 ----- section 2

% 矩阵合并
A = [1; 1; 1];
B = [2; 2; 2];
C = [A B] % or [A, B]
% 1  2
% 1  2
% 1  2
C = [A; B]
% 1
% 1
% 1
% 2
% 2
% 2
```

```octave
% 矩阵运算 ----- section 3

% 矩阵合并2

A = ones(2, 5)
% 1   1   1   1   1
% 1   1   1   1   1

B = 2 * ones(1, 5)
% 2   2   2   2   2

B(:)
% 2
% 2
% 2
% 2
% 2

C = [A(:); B(:)];
% 1
% 1
% ...
% 2
% 2
% ...
size(C)
% 15  1

D = ones(1, 5);
E = [B(:) D(:)]
% 2   1
% 2   1
% 2   1
% 2   1
% 2   1
```

```octave
% 矩阵运算 ----- section 4

% 接上，拆除矩阵合并

% B = 2 * ones(1, 5);
% D = ones(1, 5);
% E = [B(:) D(:)];

reshape(E(1:5), 1, 5); % == B
reshape(E(6:10), 1, 5); % == D
reshape(E(6:end), 1, 5); % == D
```

### Moving Data Around

```octave
data = load('file.dat') % 加载文件

whos % 输出当前的所有变量
clear x % 删除 x 变量

save hello.mat x % 把 x 变量储存到 hello.mat 文件
```

### Computing on Data

```octave
% 矩阵运算 ----- section 2

A = [1 2; 3 4; 5 6]
% 1  2
% 3  4
% 5  6
B = [11 12; 13 14; 15 16]
% 11  12
% 13  14
% 15  16

A .+ 1 % 矩阵的每个元素都加 1
A .* 2 % 矩阵的每个元素都乘 2
A ./ 2 % 矩阵的每个元素都除 2
A .^ 2 % 矩阵的每个元素都平方

A .* B % A 矩阵的每个元素都乘以 B 矩阵中对应的元素
% 11  24
% 39  56
% 75  96
```

```octave
A = [1 2; 3 4; 5 6]
% 1  2
% 3  4
% 5  6
v = [1 2 3];
% 1  2  3

log(v) % 对每个元素求 log
exp(v) % 每个元素 x 转换为 e ^ x

-v % 各个元素取相反数 === -1 * v
abs(v) % 各个元素取绝对值
v' % 转置矩阵

max(A) % 获取矩阵中每一列的最大值
% 5  6

A > 4 % 对矩阵中每个元素进行判断，返回 0 或 1
% 0  0
% 0  0
% 1  1

find(A > 4) % 返回符合条件的元素的位置
% 3 第三个元素（从 (0, 0) 开始为第一个元素，第一列开始往下数）
% 6 

sum(v) % 对于只有一行的矩阵，sum 会求各列的合
% 6
sum(A, 1) % 对于多行矩阵，sum 求个列的合
% 9  12
sum(A, 2) % 对于多行矩阵，sum 求个行的合
% 3
% 7
% 11
```

```octave
% 小数取整

v = [1.1, 1.8, 1.5];
floor(v) % 向下取整
% 1  1  1

ceil(v) % 向上取整
% 2  2  2

round(v) % 四舍五入
% 1  2  2
```

### Plotting Data

### Control Statements

```octave
% if..elseif..else
if i == 1,
	disp(1);
elseif i == 2,
	disp(2);
else
	disp(3);
end;
```

```octave
% for 循环

% 从 1 到 10 依次输出
for i = 1:10,
	i
end;

% 从 1 到 10 依次输出
v = [1 2 3 4 5 6]
for i = v,
	i
end;
```

```octave
% while 循环

% 从 1 到 5 依次输出
i = 1;
while i <= 5,
	i
	i = i + 1;
end;

% break
i = 1;
while true,
	i = i + 1;
	if i == 5,
		break;
	end;
end;
```

```octave
% function

function returnValue = functionName(params)
	% do something here
end;

% example 1
function y = squareNumber(x)
	y = x ^ 2
end;

y = squareNumber(10);
y % 100

% example 2
function [y1, y2] = squareAndCubeNumber(x)
	y1 = x ^ 2;
	y2 = x ^ 3;
end;

[a, b] = squareAndCubeNumber(2)
% a = 4
% b = 8
```

### Vectorization

