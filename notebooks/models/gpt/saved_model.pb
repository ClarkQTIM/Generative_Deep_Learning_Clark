шр
”Ґ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
Ѓ
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
П
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
П
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758ЧХ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
Б
Adam/v/dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:РN*%
shared_nameAdam/v/dense_17/bias
z
(Adam/v/dense_17/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_17/bias*
_output_shapes	
:РN*
dtype0
Б
Adam/m/dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:РN*%
shared_nameAdam/m/dense_17/bias
z
(Adam/m/dense_17/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_17/bias*
_output_shapes	
:РN*
dtype0
К
Adam/v/dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АРN*'
shared_nameAdam/v/dense_17/kernel
Г
*Adam/v/dense_17/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_17/kernel* 
_output_shapes
:
АРN*
dtype0
К
Adam/m/dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АРN*'
shared_nameAdam/m/dense_17/kernel
Г
*Adam/m/dense_17/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_17/kernel* 
_output_shapes
:
АРN*
dtype0
≈
6Adam/v/transformer_block_5/layer_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*G
shared_name86Adam/v/transformer_block_5/layer_normalization_11/beta
Њ
JAdam/v/transformer_block_5/layer_normalization_11/beta/Read/ReadVariableOpReadVariableOp6Adam/v/transformer_block_5/layer_normalization_11/beta*
_output_shapes	
:А*
dtype0
≈
6Adam/m/transformer_block_5/layer_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*G
shared_name86Adam/m/transformer_block_5/layer_normalization_11/beta
Њ
JAdam/m/transformer_block_5/layer_normalization_11/beta/Read/ReadVariableOpReadVariableOp6Adam/m/transformer_block_5/layer_normalization_11/beta*
_output_shapes	
:А*
dtype0
«
7Adam/v/transformer_block_5/layer_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*H
shared_name97Adam/v/transformer_block_5/layer_normalization_11/gamma
ј
KAdam/v/transformer_block_5/layer_normalization_11/gamma/Read/ReadVariableOpReadVariableOp7Adam/v/transformer_block_5/layer_normalization_11/gamma*
_output_shapes	
:А*
dtype0
«
7Adam/m/transformer_block_5/layer_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*H
shared_name97Adam/m/transformer_block_5/layer_normalization_11/gamma
ј
KAdam/m/transformer_block_5/layer_normalization_11/gamma/Read/ReadVariableOpReadVariableOp7Adam/m/transformer_block_5/layer_normalization_11/gamma*
_output_shapes	
:А*
dtype0
©
(Adam/v/transformer_block_5/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/v/transformer_block_5/dense_16/bias
Ґ
<Adam/v/transformer_block_5/dense_16/bias/Read/ReadVariableOpReadVariableOp(Adam/v/transformer_block_5/dense_16/bias*
_output_shapes	
:А*
dtype0
©
(Adam/m/transformer_block_5/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/m/transformer_block_5/dense_16/bias
Ґ
<Adam/m/transformer_block_5/dense_16/bias/Read/ReadVariableOpReadVariableOp(Adam/m/transformer_block_5/dense_16/bias*
_output_shapes	
:А*
dtype0
≤
*Adam/v/transformer_block_5/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*;
shared_name,*Adam/v/transformer_block_5/dense_16/kernel
Ђ
>Adam/v/transformer_block_5/dense_16/kernel/Read/ReadVariableOpReadVariableOp*Adam/v/transformer_block_5/dense_16/kernel* 
_output_shapes
:
АА*
dtype0
≤
*Adam/m/transformer_block_5/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*;
shared_name,*Adam/m/transformer_block_5/dense_16/kernel
Ђ
>Adam/m/transformer_block_5/dense_16/kernel/Read/ReadVariableOpReadVariableOp*Adam/m/transformer_block_5/dense_16/kernel* 
_output_shapes
:
АА*
dtype0
©
(Adam/v/transformer_block_5/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/v/transformer_block_5/dense_15/bias
Ґ
<Adam/v/transformer_block_5/dense_15/bias/Read/ReadVariableOpReadVariableOp(Adam/v/transformer_block_5/dense_15/bias*
_output_shapes	
:А*
dtype0
©
(Adam/m/transformer_block_5/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/m/transformer_block_5/dense_15/bias
Ґ
<Adam/m/transformer_block_5/dense_15/bias/Read/ReadVariableOpReadVariableOp(Adam/m/transformer_block_5/dense_15/bias*
_output_shapes	
:А*
dtype0
≤
*Adam/v/transformer_block_5/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*;
shared_name,*Adam/v/transformer_block_5/dense_15/kernel
Ђ
>Adam/v/transformer_block_5/dense_15/kernel/Read/ReadVariableOpReadVariableOp*Adam/v/transformer_block_5/dense_15/kernel* 
_output_shapes
:
АА*
dtype0
≤
*Adam/m/transformer_block_5/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*;
shared_name,*Adam/m/transformer_block_5/dense_15/kernel
Ђ
>Adam/m/transformer_block_5/dense_15/kernel/Read/ReadVariableOpReadVariableOp*Adam/m/transformer_block_5/dense_15/kernel* 
_output_shapes
:
АА*
dtype0
≈
6Adam/v/transformer_block_5/layer_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*G
shared_name86Adam/v/transformer_block_5/layer_normalization_10/beta
Њ
JAdam/v/transformer_block_5/layer_normalization_10/beta/Read/ReadVariableOpReadVariableOp6Adam/v/transformer_block_5/layer_normalization_10/beta*
_output_shapes	
:А*
dtype0
≈
6Adam/m/transformer_block_5/layer_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*G
shared_name86Adam/m/transformer_block_5/layer_normalization_10/beta
Њ
JAdam/m/transformer_block_5/layer_normalization_10/beta/Read/ReadVariableOpReadVariableOp6Adam/m/transformer_block_5/layer_normalization_10/beta*
_output_shapes	
:А*
dtype0
«
7Adam/v/transformer_block_5/layer_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*H
shared_name97Adam/v/transformer_block_5/layer_normalization_10/gamma
ј
KAdam/v/transformer_block_5/layer_normalization_10/gamma/Read/ReadVariableOpReadVariableOp7Adam/v/transformer_block_5/layer_normalization_10/gamma*
_output_shapes	
:А*
dtype0
«
7Adam/m/transformer_block_5/layer_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*H
shared_name97Adam/m/transformer_block_5/layer_normalization_10/gamma
ј
KAdam/m/transformer_block_5/layer_normalization_10/gamma/Read/ReadVariableOpReadVariableOp7Adam/m/transformer_block_5/layer_normalization_10/gamma*
_output_shapes	
:А*
dtype0
з
GAdam/v/transformer_block_5/multi_head_attention_5/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*X
shared_nameIGAdam/v/transformer_block_5/multi_head_attention_5/attention_output/bias
а
[Adam/v/transformer_block_5/multi_head_attention_5/attention_output/bias/Read/ReadVariableOpReadVariableOpGAdam/v/transformer_block_5/multi_head_attention_5/attention_output/bias*
_output_shapes	
:А*
dtype0
з
GAdam/m/transformer_block_5/multi_head_attention_5/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*X
shared_nameIGAdam/m/transformer_block_5/multi_head_attention_5/attention_output/bias
а
[Adam/m/transformer_block_5/multi_head_attention_5/attention_output/bias/Read/ReadVariableOpReadVariableOpGAdam/m/transformer_block_5/multi_head_attention_5/attention_output/bias*
_output_shapes	
:А*
dtype0
ф
IAdam/v/transformer_block_5/multi_head_attention_5/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*Z
shared_nameKIAdam/v/transformer_block_5/multi_head_attention_5/attention_output/kernel
н
]Adam/v/transformer_block_5/multi_head_attention_5/attention_output/kernel/Read/ReadVariableOpReadVariableOpIAdam/v/transformer_block_5/multi_head_attention_5/attention_output/kernel*$
_output_shapes
:АА*
dtype0
ф
IAdam/m/transformer_block_5/multi_head_attention_5/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*Z
shared_nameKIAdam/m/transformer_block_5/multi_head_attention_5/attention_output/kernel
н
]Adam/m/transformer_block_5/multi_head_attention_5/attention_output/kernel/Read/ReadVariableOpReadVariableOpIAdam/m/transformer_block_5/multi_head_attention_5/attention_output/kernel*$
_output_shapes
:АА*
dtype0
’
<Adam/v/transformer_block_5/multi_head_attention_5/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*M
shared_name><Adam/v/transformer_block_5/multi_head_attention_5/value/bias
ќ
PAdam/v/transformer_block_5/multi_head_attention_5/value/bias/Read/ReadVariableOpReadVariableOp<Adam/v/transformer_block_5/multi_head_attention_5/value/bias*
_output_shapes
:	А*
dtype0
’
<Adam/m/transformer_block_5/multi_head_attention_5/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*M
shared_name><Adam/m/transformer_block_5/multi_head_attention_5/value/bias
ќ
PAdam/m/transformer_block_5/multi_head_attention_5/value/bias/Read/ReadVariableOpReadVariableOp<Adam/m/transformer_block_5/multi_head_attention_5/value/bias*
_output_shapes
:	А*
dtype0
ё
>Adam/v/transformer_block_5/multi_head_attention_5/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*O
shared_name@>Adam/v/transformer_block_5/multi_head_attention_5/value/kernel
„
RAdam/v/transformer_block_5/multi_head_attention_5/value/kernel/Read/ReadVariableOpReadVariableOp>Adam/v/transformer_block_5/multi_head_attention_5/value/kernel*$
_output_shapes
:АА*
dtype0
ё
>Adam/m/transformer_block_5/multi_head_attention_5/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*O
shared_name@>Adam/m/transformer_block_5/multi_head_attention_5/value/kernel
„
RAdam/m/transformer_block_5/multi_head_attention_5/value/kernel/Read/ReadVariableOpReadVariableOp>Adam/m/transformer_block_5/multi_head_attention_5/value/kernel*$
_output_shapes
:АА*
dtype0
—
:Adam/v/transformer_block_5/multi_head_attention_5/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*K
shared_name<:Adam/v/transformer_block_5/multi_head_attention_5/key/bias
 
NAdam/v/transformer_block_5/multi_head_attention_5/key/bias/Read/ReadVariableOpReadVariableOp:Adam/v/transformer_block_5/multi_head_attention_5/key/bias*
_output_shapes
:	А*
dtype0
—
:Adam/m/transformer_block_5/multi_head_attention_5/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*K
shared_name<:Adam/m/transformer_block_5/multi_head_attention_5/key/bias
 
NAdam/m/transformer_block_5/multi_head_attention_5/key/bias/Read/ReadVariableOpReadVariableOp:Adam/m/transformer_block_5/multi_head_attention_5/key/bias*
_output_shapes
:	А*
dtype0
Џ
<Adam/v/transformer_block_5/multi_head_attention_5/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*M
shared_name><Adam/v/transformer_block_5/multi_head_attention_5/key/kernel
”
PAdam/v/transformer_block_5/multi_head_attention_5/key/kernel/Read/ReadVariableOpReadVariableOp<Adam/v/transformer_block_5/multi_head_attention_5/key/kernel*$
_output_shapes
:АА*
dtype0
Џ
<Adam/m/transformer_block_5/multi_head_attention_5/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*M
shared_name><Adam/m/transformer_block_5/multi_head_attention_5/key/kernel
”
PAdam/m/transformer_block_5/multi_head_attention_5/key/kernel/Read/ReadVariableOpReadVariableOp<Adam/m/transformer_block_5/multi_head_attention_5/key/kernel*$
_output_shapes
:АА*
dtype0
’
<Adam/v/transformer_block_5/multi_head_attention_5/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*M
shared_name><Adam/v/transformer_block_5/multi_head_attention_5/query/bias
ќ
PAdam/v/transformer_block_5/multi_head_attention_5/query/bias/Read/ReadVariableOpReadVariableOp<Adam/v/transformer_block_5/multi_head_attention_5/query/bias*
_output_shapes
:	А*
dtype0
’
<Adam/m/transformer_block_5/multi_head_attention_5/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*M
shared_name><Adam/m/transformer_block_5/multi_head_attention_5/query/bias
ќ
PAdam/m/transformer_block_5/multi_head_attention_5/query/bias/Read/ReadVariableOpReadVariableOp<Adam/m/transformer_block_5/multi_head_attention_5/query/bias*
_output_shapes
:	А*
dtype0
ё
>Adam/v/transformer_block_5/multi_head_attention_5/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*O
shared_name@>Adam/v/transformer_block_5/multi_head_attention_5/query/kernel
„
RAdam/v/transformer_block_5/multi_head_attention_5/query/kernel/Read/ReadVariableOpReadVariableOp>Adam/v/transformer_block_5/multi_head_attention_5/query/kernel*$
_output_shapes
:АА*
dtype0
ё
>Adam/m/transformer_block_5/multi_head_attention_5/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*O
shared_name@>Adam/m/transformer_block_5/multi_head_attention_5/query/kernel
„
RAdam/m/transformer_block_5/multi_head_attention_5/query/kernel/Read/ReadVariableOpReadVariableOp>Adam/m/transformer_block_5/multi_head_attention_5/query/kernel*$
_output_shapes
:АА*
dtype0
„
=Adam/v/token_and_position_embedding_5/embedding_11/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	PА*N
shared_name?=Adam/v/token_and_position_embedding_5/embedding_11/embeddings
–
QAdam/v/token_and_position_embedding_5/embedding_11/embeddings/Read/ReadVariableOpReadVariableOp=Adam/v/token_and_position_embedding_5/embedding_11/embeddings*
_output_shapes
:	PА*
dtype0
„
=Adam/m/token_and_position_embedding_5/embedding_11/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	PА*N
shared_name?=Adam/m/token_and_position_embedding_5/embedding_11/embeddings
–
QAdam/m/token_and_position_embedding_5/embedding_11/embeddings/Read/ReadVariableOpReadVariableOp=Adam/m/token_and_position_embedding_5/embedding_11/embeddings*
_output_shapes
:	PА*
dtype0
Ў
=Adam/v/token_and_position_embedding_5/embedding_10/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
РNА*N
shared_name?=Adam/v/token_and_position_embedding_5/embedding_10/embeddings
—
QAdam/v/token_and_position_embedding_5/embedding_10/embeddings/Read/ReadVariableOpReadVariableOp=Adam/v/token_and_position_embedding_5/embedding_10/embeddings* 
_output_shapes
:
РNА*
dtype0
Ў
=Adam/m/token_and_position_embedding_5/embedding_10/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
РNА*N
shared_name?=Adam/m/token_and_position_embedding_5/embedding_10/embeddings
—
QAdam/m/token_and_position_embedding_5/embedding_10/embeddings/Read/ReadVariableOpReadVariableOp=Adam/m/token_and_position_embedding_5/embedding_10/embeddings* 
_output_shapes
:
РNА*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
Ј
/transformer_block_5/layer_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*@
shared_name1/transformer_block_5/layer_normalization_11/beta
∞
Ctransformer_block_5/layer_normalization_11/beta/Read/ReadVariableOpReadVariableOp/transformer_block_5/layer_normalization_11/beta*
_output_shapes	
:А*
dtype0
є
0transformer_block_5/layer_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*A
shared_name20transformer_block_5/layer_normalization_11/gamma
≤
Dtransformer_block_5/layer_normalization_11/gamma/Read/ReadVariableOpReadVariableOp0transformer_block_5/layer_normalization_11/gamma*
_output_shapes	
:А*
dtype0
Ы
!transformer_block_5/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!transformer_block_5/dense_16/bias
Ф
5transformer_block_5/dense_16/bias/Read/ReadVariableOpReadVariableOp!transformer_block_5/dense_16/bias*
_output_shapes	
:А*
dtype0
§
#transformer_block_5/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*4
shared_name%#transformer_block_5/dense_16/kernel
Э
7transformer_block_5/dense_16/kernel/Read/ReadVariableOpReadVariableOp#transformer_block_5/dense_16/kernel* 
_output_shapes
:
АА*
dtype0
Ы
!transformer_block_5/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!transformer_block_5/dense_15/bias
Ф
5transformer_block_5/dense_15/bias/Read/ReadVariableOpReadVariableOp!transformer_block_5/dense_15/bias*
_output_shapes	
:А*
dtype0
§
#transformer_block_5/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*4
shared_name%#transformer_block_5/dense_15/kernel
Э
7transformer_block_5/dense_15/kernel/Read/ReadVariableOpReadVariableOp#transformer_block_5/dense_15/kernel* 
_output_shapes
:
АА*
dtype0
Ј
/transformer_block_5/layer_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*@
shared_name1/transformer_block_5/layer_normalization_10/beta
∞
Ctransformer_block_5/layer_normalization_10/beta/Read/ReadVariableOpReadVariableOp/transformer_block_5/layer_normalization_10/beta*
_output_shapes	
:А*
dtype0
є
0transformer_block_5/layer_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*A
shared_name20transformer_block_5/layer_normalization_10/gamma
≤
Dtransformer_block_5/layer_normalization_10/gamma/Read/ReadVariableOpReadVariableOp0transformer_block_5/layer_normalization_10/gamma*
_output_shapes	
:А*
dtype0
ў
@transformer_block_5/multi_head_attention_5/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*Q
shared_nameB@transformer_block_5/multi_head_attention_5/attention_output/bias
“
Ttransformer_block_5/multi_head_attention_5/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_block_5/multi_head_attention_5/attention_output/bias*
_output_shapes	
:А*
dtype0
ж
Btransformer_block_5/multi_head_attention_5/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*S
shared_nameDBtransformer_block_5/multi_head_attention_5/attention_output/kernel
я
Vtransformer_block_5/multi_head_attention_5/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_block_5/multi_head_attention_5/attention_output/kernel*$
_output_shapes
:АА*
dtype0
«
5transformer_block_5/multi_head_attention_5/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*F
shared_name75transformer_block_5/multi_head_attention_5/value/bias
ј
Itransformer_block_5/multi_head_attention_5/value/bias/Read/ReadVariableOpReadVariableOp5transformer_block_5/multi_head_attention_5/value/bias*
_output_shapes
:	А*
dtype0
–
7transformer_block_5/multi_head_attention_5/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*H
shared_name97transformer_block_5/multi_head_attention_5/value/kernel
…
Ktransformer_block_5/multi_head_attention_5/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_5/multi_head_attention_5/value/kernel*$
_output_shapes
:АА*
dtype0
√
3transformer_block_5/multi_head_attention_5/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*D
shared_name53transformer_block_5/multi_head_attention_5/key/bias
Љ
Gtransformer_block_5/multi_head_attention_5/key/bias/Read/ReadVariableOpReadVariableOp3transformer_block_5/multi_head_attention_5/key/bias*
_output_shapes
:	А*
dtype0
ћ
5transformer_block_5/multi_head_attention_5/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*F
shared_name75transformer_block_5/multi_head_attention_5/key/kernel
≈
Itransformer_block_5/multi_head_attention_5/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_block_5/multi_head_attention_5/key/kernel*$
_output_shapes
:АА*
dtype0
«
5transformer_block_5/multi_head_attention_5/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*F
shared_name75transformer_block_5/multi_head_attention_5/query/bias
ј
Itransformer_block_5/multi_head_attention_5/query/bias/Read/ReadVariableOpReadVariableOp5transformer_block_5/multi_head_attention_5/query/bias*
_output_shapes
:	А*
dtype0
–
7transformer_block_5/multi_head_attention_5/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*H
shared_name97transformer_block_5/multi_head_attention_5/query/kernel
…
Ktransformer_block_5/multi_head_attention_5/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_5/multi_head_attention_5/query/kernel*$
_output_shapes
:АА*
dtype0
…
6token_and_position_embedding_5/embedding_11/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	PА*G
shared_name86token_and_position_embedding_5/embedding_11/embeddings
¬
Jtoken_and_position_embedding_5/embedding_11/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_5/embedding_11/embeddings*
_output_shapes
:	PА*
dtype0
 
6token_and_position_embedding_5/embedding_10/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
РNА*G
shared_name86token_and_position_embedding_5/embedding_10/embeddings
√
Jtoken_and_position_embedding_5/embedding_10/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_5/embedding_10/embeddings* 
_output_shapes
:
РNА*
dtype0
s
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:РN*
shared_namedense_17/bias
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes	
:РN*
dtype0
|
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АРN* 
shared_namedense_17/kernel
u
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel* 
_output_shapes
:
АРN*
dtype0
М
serving_default_input_6Placeholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
ќ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_66token_and_position_embedding_5/embedding_11/embeddings6token_and_position_embedding_5/embedding_10/embeddings7transformer_block_5/multi_head_attention_5/query/kernel5transformer_block_5/multi_head_attention_5/query/bias5transformer_block_5/multi_head_attention_5/key/kernel3transformer_block_5/multi_head_attention_5/key/bias7transformer_block_5/multi_head_attention_5/value/kernel5transformer_block_5/multi_head_attention_5/value/biasBtransformer_block_5/multi_head_attention_5/attention_output/kernel@transformer_block_5/multi_head_attention_5/attention_output/bias0transformer_block_5/layer_normalization_10/gamma/transformer_block_5/layer_normalization_10/beta#transformer_block_5/dense_15/kernel!transformer_block_5/dense_15/bias#transformer_block_5/dense_16/kernel!transformer_block_5/dense_16/bias0transformer_block_5/layer_normalization_11/gamma/transformer_block_5/layer_normalization_11/betadense_17/kerneldense_17/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€РN:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_169665

NoOpNoOp
†Ґ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Џ°
valueѕ°BЋ° B√°
Ў
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
ђ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb*
в
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
attn
	dropout_1
ln_1
	 ffn_1
	!ffn_2
"	dropout_2
#ln_2*
¶
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias*
Ъ
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
*18
+19*
Ъ
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
*18
+19*
* 
∞
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_3* 
6
Gtrace_0
Htrace_1
Itrace_2
Jtrace_3* 
* 
Б
K
_variables
L_iterations
M_learning_rate
N_index_dict
O
_momentums
P_velocities
Q_update_step_xla*
* 

Rserving_default* 

,0
-1*

,0
-1*
* 
У
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Xtrace_0* 

Ytrace_0* 
†
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
,
embeddings*
†
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
-
embeddings*
z
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15*
z
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15*
* 
У
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ktrace_0
ltrace_1* 

mtrace_0
ntrace_1* 
щ
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
u_query_dense
v
_key_dense
w_value_dense
x_softmax
y_dropout_layer
z_output_dense*
І
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses
Б_random_generator* 
ґ
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
	Иaxis
	6gamma
7beta*
ђ
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
Н__call__
+О&call_and_return_all_conditional_losses

8kernel
9bias*
ђ
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses

:kernel
;bias*
ђ
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
Ы_random_generator* 
ґ
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
†__call__
+°&call_and_return_all_conditional_losses
	Ґaxis
	<gamma
=beta*

*0
+1*

*0
+1*
* 
Ш
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

®trace_0* 

©trace_0* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6token_and_position_embedding_5/embedding_10/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6token_and_position_embedding_5/embedding_11/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_block_5/multi_head_attention_5/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_block_5/multi_head_attention_5/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_block_5/multi_head_attention_5/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3transformer_block_5/multi_head_attention_5/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_block_5/multi_head_attention_5/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_block_5/multi_head_attention_5/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEBtransformer_block_5/multi_head_attention_5/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE@transformer_block_5/multi_head_attention_5/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_block_5/layer_normalization_10/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_block_5/layer_normalization_10/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#transformer_block_5/dense_15/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!transformer_block_5/dense_15/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#transformer_block_5/dense_16/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!transformer_block_5/dense_16/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_block_5/layer_normalization_11/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_block_5/layer_normalization_11/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

™0
Ђ1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
к
L0
ђ1
≠2
Ѓ3
ѓ4
∞5
±6
≤7
≥8
і9
µ10
ґ11
Ј12
Є13
є14
Ї15
ї16
Љ17
љ18
Њ19
њ20
ј21
Ѕ22
¬23
√24
ƒ25
≈26
∆27
«28
»29
…30
 31
Ћ32
ћ33
Ќ34
ќ35
ѕ36
–37
—38
“39
”40*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ѓ
ђ0
Ѓ1
∞2
≤3
і4
ґ5
Є6
Ї7
Љ8
Њ9
ј10
¬11
ƒ12
∆13
»14
 15
ћ16
ќ17
–18
“19*
Ѓ
≠0
ѓ1
±2
≥3
µ4
Ј5
є6
ї7
љ8
њ9
Ѕ10
√11
≈12
«13
…14
Ћ15
Ќ16
ѕ17
—18
”19*
* 
* 
* 

0
1*
* 
* 
* 
* 
* 

,0*

,0*
* 
Ш
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*
* 
* 

-0*

-0*
* 
Ш
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*
* 
* 
* 
5
0
1
2
 3
!4
"5
#6*
* 
* 
* 
* 
* 
* 
* 
<
.0
/1
02
13
24
35
46
57*
<
.0
/1
02
13
24
35
46
57*
* 
Ш
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*
* 
* 
я
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses
йpartial_output_shape
кfull_output_shape

.kernel
/bias*
я
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses
сpartial_output_shape
тfull_output_shape

0kernel
1bias*
я
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses
щpartial_output_shape
ъfull_output_shape

2kernel
3bias*
Ф
ы	variables
ьtrainable_variables
эregularization_losses
ю	keras_api
€__call__
+А&call_and_return_all_conditional_losses* 
ђ
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
З_random_generator* 
я
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
Оpartial_output_shape
Пfull_output_shape

4kernel
5bias*
* 
* 
* 
Ш
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 
* 
* 
* 

60
71*

60
71*
* 
Ю
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*
* 
* 
* 

80
91*

80
91*
* 
Ю
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Й	variables
Кtrainable_variables
Лregularization_losses
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses*
* 
* 

:0
;1*

:0
;1*
* 
Ю
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
§non_trainable_variables
•layers
¶metrics
 Іlayer_regularization_losses
®layer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses* 
* 
* 
* 

<0
=1*

<0
=1*
* 
Ю
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
†__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Ѓ	variables
ѓ	keras_api

∞total

±count*
<
≤	variables
≥	keras_api

іtotal

µcount*
ЙВ
VARIABLE_VALUE=Adam/m/token_and_position_embedding_5/embedding_10/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE=Adam/v/token_and_position_embedding_5/embedding_10/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE=Adam/m/token_and_position_embedding_5/embedding_11/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE=Adam/v/token_and_position_embedding_5/embedding_11/embeddings1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUE>Adam/m/transformer_block_5/multi_head_attention_5/query/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUE>Adam/v/transformer_block_5/multi_head_attention_5/query/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUE<Adam/m/transformer_block_5/multi_head_attention_5/query/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUE<Adam/v/transformer_block_5/multi_head_attention_5/query/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUE<Adam/m/transformer_block_5/multi_head_attention_5/key/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE<Adam/v/transformer_block_5/multi_head_attention_5/key/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE:Adam/m/transformer_block_5/multi_head_attention_5/key/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE:Adam/v/transformer_block_5/multi_head_attention_5/key/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUE>Adam/m/transformer_block_5/multi_head_attention_5/value/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUE>Adam/v/transformer_block_5/multi_head_attention_5/value/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE<Adam/m/transformer_block_5/multi_head_attention_5/value/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE<Adam/v/transformer_block_5/multi_head_attention_5/value/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ЦП
VARIABLE_VALUEIAdam/m/transformer_block_5/multi_head_attention_5/attention_output/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ЦП
VARIABLE_VALUEIAdam/v/transformer_block_5/multi_head_attention_5/attention_output/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ФН
VARIABLE_VALUEGAdam/m/transformer_block_5/multi_head_attention_5/attention_output/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
ФН
VARIABLE_VALUEGAdam/v/transformer_block_5/multi_head_attention_5/attention_output/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUE7Adam/m/transformer_block_5/layer_normalization_10/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUE7Adam/v/transformer_block_5/layer_normalization_10/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6Adam/m/transformer_block_5/layer_normalization_10/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6Adam/v/transformer_block_5/layer_normalization_10/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/transformer_block_5/dense_15/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/transformer_block_5/dense_15/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/transformer_block_5/dense_15/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/transformer_block_5/dense_15/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/transformer_block_5/dense_16/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/transformer_block_5/dense_16/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/transformer_block_5/dense_16/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/transformer_block_5/dense_16/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUE7Adam/m/transformer_block_5/layer_normalization_11/gamma2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUE7Adam/v/transformer_block_5/layer_normalization_11/gamma2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6Adam/m/transformer_block_5/layer_normalization_11/beta2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6Adam/v/transformer_block_5/layer_normalization_11/beta2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_17/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_17/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_17/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_17/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
u0
v1
w2
x3
y4
z5*
* 
* 
* 

.0
/1*

.0
/1*
* 
Ю
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses*
* 
* 
* 
* 

00
11*

00
11*
* 
Ю
їnon_trainable_variables
Љlayers
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses*
* 
* 
* 
* 

20
31*

20
31*
* 
Ю
јnon_trainable_variables
Ѕlayers
¬metrics
 √layer_regularization_losses
ƒlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
ы	variables
ьtrainable_variables
эregularization_losses
€__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
 non_trainable_variables
Ћlayers
ћmetrics
 Ќlayer_regularization_losses
ќlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses* 
* 
* 
* 

40
51*

40
51*
* 
Ю
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

∞0
±1*

Ѓ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

і0
µ1*

≤	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
„
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_17/kerneldense_17/bias6token_and_position_embedding_5/embedding_10/embeddings6token_and_position_embedding_5/embedding_11/embeddings7transformer_block_5/multi_head_attention_5/query/kernel5transformer_block_5/multi_head_attention_5/query/bias5transformer_block_5/multi_head_attention_5/key/kernel3transformer_block_5/multi_head_attention_5/key/bias7transformer_block_5/multi_head_attention_5/value/kernel5transformer_block_5/multi_head_attention_5/value/biasBtransformer_block_5/multi_head_attention_5/attention_output/kernel@transformer_block_5/multi_head_attention_5/attention_output/bias0transformer_block_5/layer_normalization_10/gamma/transformer_block_5/layer_normalization_10/beta#transformer_block_5/dense_15/kernel!transformer_block_5/dense_15/bias#transformer_block_5/dense_16/kernel!transformer_block_5/dense_16/bias0transformer_block_5/layer_normalization_11/gamma/transformer_block_5/layer_normalization_11/beta	iterationlearning_rate=Adam/m/token_and_position_embedding_5/embedding_10/embeddings=Adam/v/token_and_position_embedding_5/embedding_10/embeddings=Adam/m/token_and_position_embedding_5/embedding_11/embeddings=Adam/v/token_and_position_embedding_5/embedding_11/embeddings>Adam/m/transformer_block_5/multi_head_attention_5/query/kernel>Adam/v/transformer_block_5/multi_head_attention_5/query/kernel<Adam/m/transformer_block_5/multi_head_attention_5/query/bias<Adam/v/transformer_block_5/multi_head_attention_5/query/bias<Adam/m/transformer_block_5/multi_head_attention_5/key/kernel<Adam/v/transformer_block_5/multi_head_attention_5/key/kernel:Adam/m/transformer_block_5/multi_head_attention_5/key/bias:Adam/v/transformer_block_5/multi_head_attention_5/key/bias>Adam/m/transformer_block_5/multi_head_attention_5/value/kernel>Adam/v/transformer_block_5/multi_head_attention_5/value/kernel<Adam/m/transformer_block_5/multi_head_attention_5/value/bias<Adam/v/transformer_block_5/multi_head_attention_5/value/biasIAdam/m/transformer_block_5/multi_head_attention_5/attention_output/kernelIAdam/v/transformer_block_5/multi_head_attention_5/attention_output/kernelGAdam/m/transformer_block_5/multi_head_attention_5/attention_output/biasGAdam/v/transformer_block_5/multi_head_attention_5/attention_output/bias7Adam/m/transformer_block_5/layer_normalization_10/gamma7Adam/v/transformer_block_5/layer_normalization_10/gamma6Adam/m/transformer_block_5/layer_normalization_10/beta6Adam/v/transformer_block_5/layer_normalization_10/beta*Adam/m/transformer_block_5/dense_15/kernel*Adam/v/transformer_block_5/dense_15/kernel(Adam/m/transformer_block_5/dense_15/bias(Adam/v/transformer_block_5/dense_15/bias*Adam/m/transformer_block_5/dense_16/kernel*Adam/v/transformer_block_5/dense_16/kernel(Adam/m/transformer_block_5/dense_16/bias(Adam/v/transformer_block_5/dense_16/bias7Adam/m/transformer_block_5/layer_normalization_11/gamma7Adam/v/transformer_block_5/layer_normalization_11/gamma6Adam/m/transformer_block_5/layer_normalization_11/beta6Adam/v/transformer_block_5/layer_normalization_11/betaAdam/m/dense_17/kernelAdam/v/dense_17/kernelAdam/m/dense_17/biasAdam/v/dense_17/biastotal_1count_1totalcountConst*O
TinH
F2D*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_171117
“
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_17/kerneldense_17/bias6token_and_position_embedding_5/embedding_10/embeddings6token_and_position_embedding_5/embedding_11/embeddings7transformer_block_5/multi_head_attention_5/query/kernel5transformer_block_5/multi_head_attention_5/query/bias5transformer_block_5/multi_head_attention_5/key/kernel3transformer_block_5/multi_head_attention_5/key/bias7transformer_block_5/multi_head_attention_5/value/kernel5transformer_block_5/multi_head_attention_5/value/biasBtransformer_block_5/multi_head_attention_5/attention_output/kernel@transformer_block_5/multi_head_attention_5/attention_output/bias0transformer_block_5/layer_normalization_10/gamma/transformer_block_5/layer_normalization_10/beta#transformer_block_5/dense_15/kernel!transformer_block_5/dense_15/bias#transformer_block_5/dense_16/kernel!transformer_block_5/dense_16/bias0transformer_block_5/layer_normalization_11/gamma/transformer_block_5/layer_normalization_11/beta	iterationlearning_rate=Adam/m/token_and_position_embedding_5/embedding_10/embeddings=Adam/v/token_and_position_embedding_5/embedding_10/embeddings=Adam/m/token_and_position_embedding_5/embedding_11/embeddings=Adam/v/token_and_position_embedding_5/embedding_11/embeddings>Adam/m/transformer_block_5/multi_head_attention_5/query/kernel>Adam/v/transformer_block_5/multi_head_attention_5/query/kernel<Adam/m/transformer_block_5/multi_head_attention_5/query/bias<Adam/v/transformer_block_5/multi_head_attention_5/query/bias<Adam/m/transformer_block_5/multi_head_attention_5/key/kernel<Adam/v/transformer_block_5/multi_head_attention_5/key/kernel:Adam/m/transformer_block_5/multi_head_attention_5/key/bias:Adam/v/transformer_block_5/multi_head_attention_5/key/bias>Adam/m/transformer_block_5/multi_head_attention_5/value/kernel>Adam/v/transformer_block_5/multi_head_attention_5/value/kernel<Adam/m/transformer_block_5/multi_head_attention_5/value/bias<Adam/v/transformer_block_5/multi_head_attention_5/value/biasIAdam/m/transformer_block_5/multi_head_attention_5/attention_output/kernelIAdam/v/transformer_block_5/multi_head_attention_5/attention_output/kernelGAdam/m/transformer_block_5/multi_head_attention_5/attention_output/biasGAdam/v/transformer_block_5/multi_head_attention_5/attention_output/bias7Adam/m/transformer_block_5/layer_normalization_10/gamma7Adam/v/transformer_block_5/layer_normalization_10/gamma6Adam/m/transformer_block_5/layer_normalization_10/beta6Adam/v/transformer_block_5/layer_normalization_10/beta*Adam/m/transformer_block_5/dense_15/kernel*Adam/v/transformer_block_5/dense_15/kernel(Adam/m/transformer_block_5/dense_15/bias(Adam/v/transformer_block_5/dense_15/bias*Adam/m/transformer_block_5/dense_16/kernel*Adam/v/transformer_block_5/dense_16/kernel(Adam/m/transformer_block_5/dense_16/bias(Adam/v/transformer_block_5/dense_16/bias7Adam/m/transformer_block_5/layer_normalization_11/gamma7Adam/v/transformer_block_5/layer_normalization_11/gamma6Adam/m/transformer_block_5/layer_normalization_11/beta6Adam/v/transformer_block_5/layer_normalization_11/betaAdam/m/dense_17/kernelAdam/v/dense_17/kernelAdam/m/dense_17/biasAdam/v/dense_17/biastotal_1count_1totalcount*N
TinG
E2C*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_171325Юс
Ч
»
(__inference_model_5_layer_call_fn_169712

inputs
unknown:	PА
	unknown_0:
РNА!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АРN

unknown_18:	РN
identity

identity_1ИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€РN:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_169280}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЛ

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Јл
ф
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_168938

inputsZ
Bmulti_head_attention_5_query_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_5_query_add_readvariableop_resource:	АX
@multi_head_attention_5_key_einsum_einsum_readvariableop_resource:ААI
6multi_head_attention_5_key_add_readvariableop_resource:	АZ
Bmulti_head_attention_5_value_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_5_value_add_readvariableop_resource:	Аe
Mmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:ААR
Cmulti_head_attention_5_attention_output_add_readvariableop_resource:	АK
<layer_normalization_10_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_10_batchnorm_readvariableop_resource:	А>
*dense_15_tensordot_readvariableop_resource:
АА7
(dense_15_biasadd_readvariableop_resource:	А>
*dense_16_tensordot_readvariableop_resource:
АА7
(dense_16_biasadd_readvariableop_resource:	АK
<layer_normalization_11_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_11_batchnorm_readvariableop_resource:	А
identity

identity_1ИҐdense_15/BiasAdd/ReadVariableOpҐ!dense_15/Tensordot/ReadVariableOpҐdense_16/BiasAdd/ReadVariableOpҐ!dense_16/Tensordot/ReadVariableOpҐ/layer_normalization_10/batchnorm/ReadVariableOpҐ3layer_normalization_10/batchnorm/mul/ReadVariableOpҐ/layer_normalization_11/batchnorm/ReadVariableOpҐ3layer_normalization_11/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_5/attention_output/add/ReadVariableOpҐDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_5/key/add/ReadVariableOpҐ7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_5/query/add/ReadVariableOpҐ9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_5/value/add/ReadVariableOpҐ9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Й
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :С
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€¬
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_5/query/einsum/EinsumEinsuminputsAmulti_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_5/query/add/ReadVariableOpReadVariableOp8multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_5/query/addAddV23multi_head_attention_5/query/einsum/Einsum:output:07multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЊ
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_5_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0е
(multi_head_attention_5/key/einsum/EinsumEinsuminputs?multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde•
-multi_head_attention_5/key/add/ReadVariableOpReadVariableOp6multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0’
multi_head_attention_5/key/addAddV21multi_head_attention_5/key/einsum/Einsum:output:05multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А¬
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_5/value/einsum/EinsumEinsuminputsAmulti_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_5/value/add/ReadVariableOpReadVariableOp8multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_5/value/addAddV23multi_head_attention_5/value/einsum/Einsum:output:07multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аa
multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=≤
multi_head_attention_5/MulMul$multi_head_attention_5/query/add:z:0%multi_head_attention_5/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
$multi_head_attention_5/einsum/EinsumEinsum"multi_head_attention_5/key/add:z:0multi_head_attention_5/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbep
%multi_head_attention_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ї
!multi_head_attention_5/ExpandDims
ExpandDimsTile:output:0.multi_head_attention_5/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≤
#multi_head_attention_5/softmax/CastCast*multi_head_attention_5/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_5/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ќ
"multi_head_attention_5/softmax/subSub-multi_head_attention_5/softmax/sub/x:output:0'multi_head_attention_5/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_5/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќћ
"multi_head_attention_5/softmax/mulMul&multi_head_attention_5/softmax/sub:z:0-multi_head_attention_5/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ќ
"multi_head_attention_5/softmax/addAddV2-multi_head_attention_5/einsum/Einsum:output:0&multi_head_attention_5/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
&multi_head_attention_5/softmax/SoftmaxSoftmax&multi_head_attention_5/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€±
'multi_head_attention_5/dropout/IdentityIdentity0multi_head_attention_5/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
&multi_head_attention_5/einsum_1/EinsumEinsum0multi_head_attention_5/dropout/Identity:output:0$multi_head_attention_5/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdЎ
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0§
5multi_head_attention_5/attention_output/einsum/EinsumEinsum/multi_head_attention_5/einsum_1/Einsum:output:0Lmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeї
:multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
+multi_head_attention_5/attention_output/addAddV2>multi_head_attention_5/attention_output/einsum/Einsum:output:0Bmulti_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?±
dropout_10/dropout/MulMul/multi_head_attention_5/attention_output/add:z:0!dropout_10/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dropout_10/dropout/ShapeShape/multi_head_attention_5/attention_output/add:z:0*
T0*
_output_shapes
::нѕ∞
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=’
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А_
dropout_10/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ќ
dropout_10/dropout/SelectV2SelectV2#dropout_10/dropout/GreaterEqual:z:0dropout_10/dropout/Mul:z:0#dropout_10/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А|
add_1AddV2inputs$dropout_10/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
5layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:∆
#layer_normalization_10/moments/meanMean	add_1:z:0>layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(®
+layer_normalization_10/moments/StopGradientStopGradient,layer_normalization_10/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€∆
0layer_normalization_10/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_10/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
9layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:щ
'layer_normalization_10/moments/varianceMean4layer_normalization_10/moments/SquaredDifference:z:0Blayer_normalization_10/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(k
&layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ѕ
$layer_normalization_10/batchnorm/addAddV20layer_normalization_10/moments/variance:output:0/layer_normalization_10/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ш
&layer_normalization_10/batchnorm/RsqrtRsqrt(layer_normalization_10/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€≠
3layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
$layer_normalization_10/batchnorm/mulMul*layer_normalization_10/batchnorm/Rsqrt:y:0;layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
&layer_normalization_10/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_10/batchnorm/mul_2Mul,layer_normalization_10/moments/mean:output:0(layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0–
$layer_normalization_10/batchnorm/subSub7layer_normalization_10/batchnorm/ReadVariableOp:value:0*layer_normalization_10/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_10/batchnorm/add_1AddV2*layer_normalization_10/batchnorm/mul_1:z:0(layer_normalization_10/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_15/Tensordot/ReadVariableOpReadVariableOp*dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       А
dense_15/Tensordot/ShapeShape*layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕb
 dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_15/Tensordot/GatherV2GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/free:output:0)dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_15/Tensordot/GatherV2_1GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/axes:output:0+dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_15/Tensordot/ProdProd$dense_15/Tensordot/GatherV2:output:0!dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_15/Tensordot/Prod_1Prod&dense_15/Tensordot/GatherV2_1:output:0#dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_15/Tensordot/concatConcatV2 dense_15/Tensordot/free:output:0 dense_15/Tensordot/axes:output:0'dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_15/Tensordot/stackPack dense_15/Tensordot/Prod:output:0"dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:є
dense_15/Tensordot/transpose	Transpose*layer_normalization_10/batchnorm/add_1:z:0"dense_15/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_15/Tensordot/ReshapeReshape dense_15/Tensordot/transpose:y:0!dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_15/Tensordot/MatMulMatMul#dense_15/Tensordot/Reshape:output:0)dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_15/Tensordot/concat_1ConcatV2$dense_15/Tensordot/GatherV2:output:0#dense_15/Tensordot/Const_2:output:0)dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_15/TensordotReshape#dense_15/Tensordot/MatMul:product:0$dense_15/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_15/BiasAddBiasAdddense_15/Tensordot:output:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аp
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
dense_16/Tensordot/ShapeShapedense_15/Relu:activations:0*
T0*
_output_shapes
::нѕb
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:™
dense_16/Tensordot/transpose	Transposedense_15/Relu:activations:0"dense_16/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?Ы
dropout_11/dropout/MulMuldense_16/BiasAdd:output:0!dropout_11/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аo
dropout_11/dropout/ShapeShapedense_16/BiasAdd:output:0*
T0*
_output_shapes
::нѕ∞
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=’
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А_
dropout_11/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ќ
dropout_11/dropout/SelectV2SelectV2#dropout_11/dropout/GreaterEqual:z:0dropout_11/dropout/Mul:z:0#dropout_11/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
add_2AddV2*layer_normalization_10/batchnorm/add_1:z:0$dropout_11/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
5layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:∆
#layer_normalization_11/moments/meanMean	add_2:z:0>layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(®
+layer_normalization_11/moments/StopGradientStopGradient,layer_normalization_11/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€∆
0layer_normalization_11/moments/SquaredDifferenceSquaredDifference	add_2:z:04layer_normalization_11/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
9layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:щ
'layer_normalization_11/moments/varianceMean4layer_normalization_11/moments/SquaredDifference:z:0Blayer_normalization_11/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(k
&layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ѕ
$layer_normalization_11/batchnorm/addAddV20layer_normalization_11/moments/variance:output:0/layer_normalization_11/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ш
&layer_normalization_11/batchnorm/RsqrtRsqrt(layer_normalization_11/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€≠
3layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
$layer_normalization_11/batchnorm/mulMul*layer_normalization_11/batchnorm/Rsqrt:y:0;layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
&layer_normalization_11/batchnorm/mul_1Mul	add_2:z:0(layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_11/batchnorm/mul_2Mul,layer_normalization_11/moments/mean:output:0(layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0–
$layer_normalization_11/batchnorm/subSub7layer_normalization_11/batchnorm/ReadVariableOp:value:0*layer_normalization_11/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_11/batchnorm/add_1AddV2*layer_normalization_11/batchnorm/mul_1:z:0(layer_normalization_11/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЗ
IdentityIdentity*layer_normalization_11/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ

Identity_1Identity0multi_head_attention_5/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€м
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp"^dense_15/Tensordot/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp0^layer_normalization_10/batchnorm/ReadVariableOp4^layer_normalization_10/batchnorm/mul/ReadVariableOp0^layer_normalization_11/batchnorm/ReadVariableOp4^layer_normalization_11/batchnorm/mul/ReadVariableOp;^multi_head_attention_5/attention_output/add/ReadVariableOpE^multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_5/key/add/ReadVariableOp8^multi_head_attention_5/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/query/add/ReadVariableOp:^multi_head_attention_5/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/value/add/ReadVariableOp:^multi_head_attention_5/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2F
!dense_15/Tensordot/ReadVariableOp!dense_15/Tensordot/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2b
/layer_normalization_10/batchnorm/ReadVariableOp/layer_normalization_10/batchnorm/ReadVariableOp2j
3layer_normalization_10/batchnorm/mul/ReadVariableOp3layer_normalization_10/batchnorm/mul/ReadVariableOp2b
/layer_normalization_11/batchnorm/ReadVariableOp/layer_normalization_11/batchnorm/ReadVariableOp2j
3layer_normalization_11/batchnorm/mul/ReadVariableOp3layer_normalization_11/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_5/attention_output/add/ReadVariableOp:multi_head_attention_5/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_5/key/add/ReadVariableOp-multi_head_attention_5/key/add/ReadVariableOp2r
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/query/add/ReadVariableOp/multi_head_attention_5/query/add/ReadVariableOp2v
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/value/add/ReadVariableOp/multi_head_attention_5/value/add/ReadVariableOp2v
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Њџ
÷
C__inference_model_5_layer_call_and_return_conditional_losses_170199

inputsV
Ctoken_and_position_embedding_5_embedding_11_embedding_lookup_169997:	PАW
Ctoken_and_position_embedding_5_embedding_10_embedding_lookup_170002:
РNАn
Vtransformer_block_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource:АА_
Ltransformer_block_5_multi_head_attention_5_query_add_readvariableop_resource:	Аl
Ttransformer_block_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource:АА]
Jtransformer_block_5_multi_head_attention_5_key_add_readvariableop_resource:	Аn
Vtransformer_block_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource:АА_
Ltransformer_block_5_multi_head_attention_5_value_add_readvariableop_resource:	Аy
atransformer_block_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:ААf
Wtransformer_block_5_multi_head_attention_5_attention_output_add_readvariableop_resource:	А_
Ptransformer_block_5_layer_normalization_10_batchnorm_mul_readvariableop_resource:	А[
Ltransformer_block_5_layer_normalization_10_batchnorm_readvariableop_resource:	АR
>transformer_block_5_dense_15_tensordot_readvariableop_resource:
ААK
<transformer_block_5_dense_15_biasadd_readvariableop_resource:	АR
>transformer_block_5_dense_16_tensordot_readvariableop_resource:
ААK
<transformer_block_5_dense_16_biasadd_readvariableop_resource:	А_
Ptransformer_block_5_layer_normalization_11_batchnorm_mul_readvariableop_resource:	А[
Ltransformer_block_5_layer_normalization_11_batchnorm_readvariableop_resource:	А>
*dense_17_tensordot_readvariableop_resource:
АРN7
(dense_17_biasadd_readvariableop_resource:	РN
identity

identity_1ИҐdense_17/BiasAdd/ReadVariableOpҐ!dense_17/Tensordot/ReadVariableOpҐ<token_and_position_embedding_5/embedding_10/embedding_lookupҐ<token_and_position_embedding_5/embedding_11/embedding_lookupҐ3transformer_block_5/dense_15/BiasAdd/ReadVariableOpҐ5transformer_block_5/dense_15/Tensordot/ReadVariableOpҐ3transformer_block_5/dense_16/BiasAdd/ReadVariableOpҐ5transformer_block_5/dense_16/Tensordot/ReadVariableOpҐCtransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpҐGtransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpҐCtransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpҐGtransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpҐNtransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpҐXtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpҐAtransformer_block_5/multi_head_attention_5/key/add/ReadVariableOpҐKtransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpҐCtransformer_block_5/multi_head_attention_5/query/add/ReadVariableOpҐMtransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpҐCtransformer_block_5/multi_head_attention_5/value/add/ReadVariableOpҐMtransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOph
$token_and_position_embedding_5/ShapeShapeinputs*
T0*
_output_shapes
::нѕЕ
2token_and_position_embedding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€~
4token_and_position_embedding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
,token_and_position_embedding_5/strided_sliceStridedSlice-token_and_position_embedding_5/Shape:output:0;token_and_position_embedding_5/strided_slice/stack:output:0=token_and_position_embedding_5/strided_slice/stack_1:output:0=token_and_position_embedding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :у
$token_and_position_embedding_5/rangeRange3token_and_position_embedding_5/range/start:output:05token_and_position_embedding_5/strided_slice:output:03token_and_position_embedding_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€б
<token_and_position_embedding_5/embedding_11/embedding_lookupResourceGatherCtoken_and_position_embedding_5_embedding_11_embedding_lookup_169997-token_and_position_embedding_5/range:output:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_11/embedding_lookup/169997*(
_output_shapes
:€€€€€€€€€А*
dtype0£
Etoken_and_position_embedding_5/embedding_11/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_5/embedding_11/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_11/embedding_lookup/169997*(
_output_shapes
:€€€€€€€€€А÷
Gtoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А«
<token_and_position_embedding_5/embedding_10/embedding_lookupResourceGatherCtoken_and_position_embedding_5_embedding_10_embedding_lookup_170002inputs*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_10/embedding_lookup/170002*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0∞
Etoken_and_position_embedding_5/embedding_10/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_5/embedding_10/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_10/embedding_lookup/170002*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аг
Gtoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АП
"token_and_position_embedding_5/addAddV2Ptoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А}
transformer_block_5/ShapeShape&token_and_position_embedding_5/add:z:0*
T0*
_output_shapes
::нѕq
'transformer_block_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)transformer_block_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)transformer_block_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!transformer_block_5/strided_sliceStridedSlice"transformer_block_5/Shape:output:00transformer_block_5/strided_slice/stack:output:02transformer_block_5/strided_slice/stack_1:output:02transformer_block_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)transformer_block_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+transformer_block_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+transformer_block_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#transformer_block_5/strided_slice_1StridedSlice"transformer_block_5/Shape:output:02transformer_block_5/strided_slice_1/stack:output:04transformer_block_5/strided_slice_1/stack_1:output:04transformer_block_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
transformer_block_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : a
transformer_block_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :…
transformer_block_5/rangeRange(transformer_block_5/range/start:output:0,transformer_block_5/strided_slice_1:output:0(transformer_block_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€z
)transformer_block_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        |
+transformer_block_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        |
+transformer_block_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
#transformer_block_5/strided_slice_2StridedSlice"transformer_block_5/range:output:02transformer_block_5/strided_slice_2/stack:output:04transformer_block_5/strided_slice_2/stack_1:output:04transformer_block_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskc
!transformer_block_5/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : c
!transformer_block_5/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :ѕ
transformer_block_5/range_1Range*transformer_block_5/range_1/start:output:0,transformer_block_5/strided_slice_1:output:0*transformer_block_5/range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€†
transformer_block_5/subSub$transformer_block_5/range_1:output:0,transformer_block_5/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€Щ
transformer_block_5/addAddV2transformer_block_5/sub:z:0,transformer_block_5/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€ґ
 transformer_block_5/GreaterEqualGreaterEqual,transformer_block_5/strided_slice_2:output:0transformer_block_5/add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€e
#transformer_block_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :б
!transformer_block_5/Reshape/shapePack,transformer_block_5/Reshape/shape/0:output:0,transformer_block_5/strided_slice_1:output:0,transformer_block_5/strided_slice_1:output:0*
N*
T0*
_output_shapes
:Ј
transformer_block_5/ReshapeReshape$transformer_block_5/GreaterEqual:z:0*transformer_block_5/Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€m
"transformer_block_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€™
transformer_block_5/ExpandDims
ExpandDims*transformer_block_5/strided_slice:output:0+transformer_block_5/ExpandDims/dim:output:0*
T0*
_output_shapes
:j
transformer_block_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      a
transformer_block_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
transformer_block_5/concatConcatV2'transformer_block_5/ExpandDims:output:0"transformer_block_5/Const:output:0(transformer_block_5/concat/axis:output:0*
N*
T0*
_output_shapes
:≥
transformer_block_5/TileTile$transformer_block_5/Reshape:output:0#transformer_block_5/concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€к
Mtransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0±
>transformer_block_5/multi_head_attention_5/query/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Utransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde—
Ctransformer_block_5/multi_head_attention_5/query/add/ReadVariableOpReadVariableOpLtransformer_block_5_multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0Ч
4transformer_block_5/multi_head_attention_5/query/addAddV2Gtransformer_block_5/multi_head_attention_5/query/einsum/Einsum:output:0Ktransformer_block_5/multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
Ktransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≠
<transformer_block_5/multi_head_attention_5/key/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Stransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeЌ
Atransformer_block_5/multi_head_attention_5/key/add/ReadVariableOpReadVariableOpJtransformer_block_5_multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0С
2transformer_block_5/multi_head_attention_5/key/addAddV2Etransformer_block_5/multi_head_attention_5/key/einsum/Einsum:output:0Itransformer_block_5/multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Ак
Mtransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0±
>transformer_block_5/multi_head_attention_5/value/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Utransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde—
Ctransformer_block_5/multi_head_attention_5/value/add/ReadVariableOpReadVariableOpLtransformer_block_5_multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0Ч
4transformer_block_5/multi_head_attention_5/value/addAddV2Gtransformer_block_5/multi_head_attention_5/value/einsum/Einsum:output:0Ktransformer_block_5/multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аu
0transformer_block_5/multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=о
.transformer_block_5/multi_head_attention_5/MulMul8transformer_block_5/multi_head_attention_5/query/add:z:09transformer_block_5/multi_head_attention_5/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АҐ
8transformer_block_5/multi_head_attention_5/einsum/EinsumEinsum6transformer_block_5/multi_head_attention_5/key/add:z:02transformer_block_5/multi_head_attention_5/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeД
9transformer_block_5/multi_head_attention_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ц
5transformer_block_5/multi_head_attention_5/ExpandDims
ExpandDims!transformer_block_5/Tile:output:0Btransformer_block_5/multi_head_attention_5/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Џ
7transformer_block_5/multi_head_attention_5/softmax/CastCast>transformer_block_5/multi_head_attention_5/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€}
8transformer_block_5/multi_head_attention_5/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Й
6transformer_block_5/multi_head_attention_5/softmax/subSubAtransformer_block_5/multi_head_attention_5/softmax/sub/x:output:0;transformer_block_5/multi_head_attention_5/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€}
8transformer_block_5/multi_head_attention_5/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќИ
6transformer_block_5/multi_head_attention_5/softmax/mulMul:transformer_block_5/multi_head_attention_5/softmax/sub:z:0Atransformer_block_5/multi_head_attention_5/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€К
6transformer_block_5/multi_head_attention_5/softmax/addAddV2Atransformer_block_5/multi_head_attention_5/einsum/Einsum:output:0:transformer_block_5/multi_head_attention_5/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Ќ
:transformer_block_5/multi_head_attention_5/softmax/SoftmaxSoftmax:transformer_block_5/multi_head_attention_5/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ў
;transformer_block_5/multi_head_attention_5/dropout/IdentityIdentityDtransformer_block_5/multi_head_attention_5/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∞
:transformer_block_5/multi_head_attention_5/einsum_1/EinsumEinsumDtransformer_block_5/multi_head_attention_5/dropout/Identity:output:08transformer_block_5/multi_head_attention_5/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdА
Xtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0а
Itransformer_block_5/multi_head_attention_5/attention_output/einsum/EinsumEinsumCtransformer_block_5/multi_head_attention_5/einsum_1/Einsum:output:0`transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeг
Ntransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_5_multi_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0і
?transformer_block_5/multi_head_attention_5/attention_output/addAddV2Rtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum:output:0Vtransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЄ
'transformer_block_5/dropout_10/IdentityIdentityCtransformer_block_5/multi_head_attention_5/attention_output/add:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЉ
transformer_block_5/add_1AddV2&token_and_position_embedding_5/add:z:00transformer_block_5/dropout_10/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АУ
Itransformer_block_5/layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:В
7transformer_block_5/layer_normalization_10/moments/meanMeantransformer_block_5/add_1:z:0Rtransformer_block_5/layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(–
?transformer_block_5/layer_normalization_10/moments/StopGradientStopGradient@transformer_block_5/layer_normalization_10/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€В
Dtransformer_block_5/layer_normalization_10/moments/SquaredDifferenceSquaredDifferencetransformer_block_5/add_1:z:0Htransformer_block_5/layer_normalization_10/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЧ
Mtransformer_block_5/layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:µ
;transformer_block_5/layer_normalization_10/moments/varianceMeanHtransformer_block_5/layer_normalization_10/moments/SquaredDifference:z:0Vtransformer_block_5/layer_normalization_10/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(
:transformer_block_5/layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Л
8transformer_block_5/layer_normalization_10/batchnorm/addAddV2Dtransformer_block_5/layer_normalization_10/moments/variance:output:0Ctransformer_block_5/layer_normalization_10/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
:transformer_block_5/layer_normalization_10/batchnorm/RsqrtRsqrt<transformer_block_5/layer_normalization_10/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€’
Gtransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_5_layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0Р
8transformer_block_5/layer_normalization_10/batchnorm/mulMul>transformer_block_5/layer_normalization_10/batchnorm/Rsqrt:y:0Otransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аё
:transformer_block_5/layer_normalization_10/batchnorm/mul_1Multransformer_block_5/add_1:z:0<transformer_block_5/layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АБ
:transformer_block_5/layer_normalization_10/batchnorm/mul_2Mul@transformer_block_5/layer_normalization_10/moments/mean:output:0<transformer_block_5/layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЌ
Ctransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_5_layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0М
8transformer_block_5/layer_normalization_10/batchnorm/subSubKtransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOp:value:0>transformer_block_5/layer_normalization_10/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АБ
:transformer_block_5/layer_normalization_10/batchnorm/add_1AddV2>transformer_block_5/layer_normalization_10/batchnorm/mul_1:z:0<transformer_block_5/layer_normalization_10/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аґ
5transformer_block_5/dense_15/Tensordot/ReadVariableOpReadVariableOp>transformer_block_5_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0u
+transformer_block_5/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:|
+transformer_block_5/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ®
,transformer_block_5/dense_15/Tensordot/ShapeShape>transformer_block_5/layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕv
4transformer_block_5/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ѓ
/transformer_block_5/dense_15/Tensordot/GatherV2GatherV25transformer_block_5/dense_15/Tensordot/Shape:output:04transformer_block_5/dense_15/Tensordot/free:output:0=transformer_block_5/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:x
6transformer_block_5/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ≥
1transformer_block_5/dense_15/Tensordot/GatherV2_1GatherV25transformer_block_5/dense_15/Tensordot/Shape:output:04transformer_block_5/dense_15/Tensordot/axes:output:0?transformer_block_5/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
,transformer_block_5/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≈
+transformer_block_5/dense_15/Tensordot/ProdProd8transformer_block_5/dense_15/Tensordot/GatherV2:output:05transformer_block_5/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: x
.transformer_block_5/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ћ
-transformer_block_5/dense_15/Tensordot/Prod_1Prod:transformer_block_5/dense_15/Tensordot/GatherV2_1:output:07transformer_block_5/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: t
2transformer_block_5/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Р
-transformer_block_5/dense_15/Tensordot/concatConcatV24transformer_block_5/dense_15/Tensordot/free:output:04transformer_block_5/dense_15/Tensordot/axes:output:0;transformer_block_5/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:–
,transformer_block_5/dense_15/Tensordot/stackPack4transformer_block_5/dense_15/Tensordot/Prod:output:06transformer_block_5/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:х
0transformer_block_5/dense_15/Tensordot/transpose	Transpose>transformer_block_5/layer_normalization_10/batchnorm/add_1:z:06transformer_block_5/dense_15/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аб
.transformer_block_5/dense_15/Tensordot/ReshapeReshape4transformer_block_5/dense_15/Tensordot/transpose:y:05transformer_block_5/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€в
-transformer_block_5/dense_15/Tensordot/MatMulMatMul7transformer_block_5/dense_15/Tensordot/Reshape:output:0=transformer_block_5/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
.transformer_block_5/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аv
4transformer_block_5/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ы
/transformer_block_5/dense_15/Tensordot/concat_1ConcatV28transformer_block_5/dense_15/Tensordot/GatherV2:output:07transformer_block_5/dense_15/Tensordot/Const_2:output:0=transformer_block_5/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:д
&transformer_block_5/dense_15/TensordotReshape7transformer_block_5/dense_15/Tensordot/MatMul:product:08transformer_block_5/dense_15/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
3transformer_block_5/dense_15/BiasAdd/ReadVariableOpReadVariableOp<transformer_block_5_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ё
$transformer_block_5/dense_15/BiasAddBiasAdd/transformer_block_5/dense_15/Tensordot:output:0;transformer_block_5/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АШ
!transformer_block_5/dense_15/ReluRelu-transformer_block_5/dense_15/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аґ
5transformer_block_5/dense_16/Tensordot/ReadVariableOpReadVariableOp>transformer_block_5_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0u
+transformer_block_5/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:|
+transformer_block_5/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Щ
,transformer_block_5/dense_16/Tensordot/ShapeShape/transformer_block_5/dense_15/Relu:activations:0*
T0*
_output_shapes
::нѕv
4transformer_block_5/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ѓ
/transformer_block_5/dense_16/Tensordot/GatherV2GatherV25transformer_block_5/dense_16/Tensordot/Shape:output:04transformer_block_5/dense_16/Tensordot/free:output:0=transformer_block_5/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:x
6transformer_block_5/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ≥
1transformer_block_5/dense_16/Tensordot/GatherV2_1GatherV25transformer_block_5/dense_16/Tensordot/Shape:output:04transformer_block_5/dense_16/Tensordot/axes:output:0?transformer_block_5/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
,transformer_block_5/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≈
+transformer_block_5/dense_16/Tensordot/ProdProd8transformer_block_5/dense_16/Tensordot/GatherV2:output:05transformer_block_5/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: x
.transformer_block_5/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ћ
-transformer_block_5/dense_16/Tensordot/Prod_1Prod:transformer_block_5/dense_16/Tensordot/GatherV2_1:output:07transformer_block_5/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: t
2transformer_block_5/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Р
-transformer_block_5/dense_16/Tensordot/concatConcatV24transformer_block_5/dense_16/Tensordot/free:output:04transformer_block_5/dense_16/Tensordot/axes:output:0;transformer_block_5/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:–
,transformer_block_5/dense_16/Tensordot/stackPack4transformer_block_5/dense_16/Tensordot/Prod:output:06transformer_block_5/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ж
0transformer_block_5/dense_16/Tensordot/transpose	Transpose/transformer_block_5/dense_15/Relu:activations:06transformer_block_5/dense_16/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аб
.transformer_block_5/dense_16/Tensordot/ReshapeReshape4transformer_block_5/dense_16/Tensordot/transpose:y:05transformer_block_5/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€в
-transformer_block_5/dense_16/Tensordot/MatMulMatMul7transformer_block_5/dense_16/Tensordot/Reshape:output:0=transformer_block_5/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
.transformer_block_5/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аv
4transformer_block_5/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ы
/transformer_block_5/dense_16/Tensordot/concat_1ConcatV28transformer_block_5/dense_16/Tensordot/GatherV2:output:07transformer_block_5/dense_16/Tensordot/Const_2:output:0=transformer_block_5/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:д
&transformer_block_5/dense_16/TensordotReshape7transformer_block_5/dense_16/Tensordot/MatMul:product:08transformer_block_5/dense_16/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
3transformer_block_5/dense_16/BiasAdd/ReadVariableOpReadVariableOp<transformer_block_5_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ё
$transformer_block_5/dense_16/BiasAddBiasAdd/transformer_block_5/dense_16/Tensordot:output:0;transformer_block_5/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
'transformer_block_5/dropout_11/IdentityIdentity-transformer_block_5/dense_16/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А‘
transformer_block_5/add_2AddV2>transformer_block_5/layer_normalization_10/batchnorm/add_1:z:00transformer_block_5/dropout_11/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АУ
Itransformer_block_5/layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:В
7transformer_block_5/layer_normalization_11/moments/meanMeantransformer_block_5/add_2:z:0Rtransformer_block_5/layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(–
?transformer_block_5/layer_normalization_11/moments/StopGradientStopGradient@transformer_block_5/layer_normalization_11/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€В
Dtransformer_block_5/layer_normalization_11/moments/SquaredDifferenceSquaredDifferencetransformer_block_5/add_2:z:0Htransformer_block_5/layer_normalization_11/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЧ
Mtransformer_block_5/layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:µ
;transformer_block_5/layer_normalization_11/moments/varianceMeanHtransformer_block_5/layer_normalization_11/moments/SquaredDifference:z:0Vtransformer_block_5/layer_normalization_11/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(
:transformer_block_5/layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Л
8transformer_block_5/layer_normalization_11/batchnorm/addAddV2Dtransformer_block_5/layer_normalization_11/moments/variance:output:0Ctransformer_block_5/layer_normalization_11/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
:transformer_block_5/layer_normalization_11/batchnorm/RsqrtRsqrt<transformer_block_5/layer_normalization_11/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€’
Gtransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_5_layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0Р
8transformer_block_5/layer_normalization_11/batchnorm/mulMul>transformer_block_5/layer_normalization_11/batchnorm/Rsqrt:y:0Otransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аё
:transformer_block_5/layer_normalization_11/batchnorm/mul_1Multransformer_block_5/add_2:z:0<transformer_block_5/layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АБ
:transformer_block_5/layer_normalization_11/batchnorm/mul_2Mul@transformer_block_5/layer_normalization_11/moments/mean:output:0<transformer_block_5/layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЌ
Ctransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_5_layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0М
8transformer_block_5/layer_normalization_11/batchnorm/subSubKtransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOp:value:0>transformer_block_5/layer_normalization_11/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АБ
:transformer_block_5/layer_normalization_11/batchnorm/add_1AddV2>transformer_block_5/layer_normalization_11/batchnorm/mul_1:z:0<transformer_block_5/layer_normalization_11/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_17/Tensordot/ReadVariableOpReadVariableOp*dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
АРN*
dtype0a
dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ф
dense_17/Tensordot/ShapeShape>transformer_block_5/layer_normalization_11/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕb
 dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_17/Tensordot/GatherV2GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/free:output:0)dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_17/Tensordot/GatherV2_1GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/axes:output:0+dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_17/Tensordot/ProdProd$dense_17/Tensordot/GatherV2:output:0!dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_17/Tensordot/Prod_1Prod&dense_17/Tensordot/GatherV2_1:output:0#dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_17/Tensordot/concatConcatV2 dense_17/Tensordot/free:output:0 dense_17/Tensordot/axes:output:0'dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_17/Tensordot/stackPack dense_17/Tensordot/Prod:output:0"dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ќ
dense_17/Tensordot/transpose	Transpose>transformer_block_5/layer_normalization_11/batchnorm/add_1:z:0"dense_17/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_17/Tensordot/ReshapeReshape dense_17/Tensordot/transpose:y:0!dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_17/Tensordot/MatMulMatMul#dense_17/Tensordot/Reshape:output:0)dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РNe
dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:РNb
 dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_17/Tensordot/concat_1ConcatV2$dense_17/Tensordot/GatherV2:output:0#dense_17/Tensordot/Const_2:output:0)dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_17/TensordotReshape#dense_17/Tensordot/MatMul:product:0$dense_17/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЕ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:РN*
dtype0°
dense_17/BiasAddBiasAdddense_17/Tensordot:output:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNv
dense_17/SoftmaxSoftmaxdense_17/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNw
IdentityIdentitydense_17/Softmax:softmax:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNѓ

Identity_1IdentityDtransformer_block_5/multi_head_attention_5/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€р

NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp"^dense_17/Tensordot/ReadVariableOp=^token_and_position_embedding_5/embedding_10/embedding_lookup=^token_and_position_embedding_5/embedding_11/embedding_lookup4^transformer_block_5/dense_15/BiasAdd/ReadVariableOp6^transformer_block_5/dense_15/Tensordot/ReadVariableOp4^transformer_block_5/dense_16/BiasAdd/ReadVariableOp6^transformer_block_5/dense_16/Tensordot/ReadVariableOpD^transformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpH^transformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpD^transformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpH^transformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpO^transformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpY^transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_5/multi_head_attention_5/key/add/ReadVariableOpL^transformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpD^transformer_block_5/multi_head_attention_5/query/add/ReadVariableOpN^transformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpD^transformer_block_5/multi_head_attention_5/value/add/ReadVariableOpN^transformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2F
!dense_17/Tensordot/ReadVariableOp!dense_17/Tensordot/ReadVariableOp2|
<token_and_position_embedding_5/embedding_10/embedding_lookup<token_and_position_embedding_5/embedding_10/embedding_lookup2|
<token_and_position_embedding_5/embedding_11/embedding_lookup<token_and_position_embedding_5/embedding_11/embedding_lookup2j
3transformer_block_5/dense_15/BiasAdd/ReadVariableOp3transformer_block_5/dense_15/BiasAdd/ReadVariableOp2n
5transformer_block_5/dense_15/Tensordot/ReadVariableOp5transformer_block_5/dense_15/Tensordot/ReadVariableOp2j
3transformer_block_5/dense_16/BiasAdd/ReadVariableOp3transformer_block_5/dense_16/BiasAdd/ReadVariableOp2n
5transformer_block_5/dense_16/Tensordot/ReadVariableOp5transformer_block_5/dense_16/Tensordot/ReadVariableOp2К
Ctransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpCtransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOp2Т
Gtransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpGtransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOp2К
Ctransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpCtransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOp2Т
Gtransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpGtransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOp2†
Ntransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpNtransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOp2і
Xtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2Ж
Atransformer_block_5/multi_head_attention_5/key/add/ReadVariableOpAtransformer_block_5/multi_head_attention_5/key/add/ReadVariableOp2Ъ
Ktransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpKtransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_5/multi_head_attention_5/query/add/ReadVariableOpCtransformer_block_5/multi_head_attention_5/query/add/ReadVariableOp2Ю
Mtransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpMtransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_5/multi_head_attention_5/value/add/ReadVariableOpCtransformer_block_5/multi_head_attention_5/value/add/ReadVariableOp2Ю
Mtransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpMtransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф 
†	
C__inference_model_5_layer_call_and_return_conditional_losses_169280

inputs8
%token_and_position_embedding_5_169234:	PА9
%token_and_position_embedding_5_169236:
РNА2
transformer_block_5_169239:АА-
transformer_block_5_169241:	А2
transformer_block_5_169243:АА-
transformer_block_5_169245:	А2
transformer_block_5_169247:АА-
transformer_block_5_169249:	А2
transformer_block_5_169251:АА)
transformer_block_5_169253:	А)
transformer_block_5_169255:	А)
transformer_block_5_169257:	А.
transformer_block_5_169259:
АА)
transformer_block_5_169261:	А.
transformer_block_5_169263:
АА)
transformer_block_5_169265:	А)
transformer_block_5_169267:	А)
transformer_block_5_169269:	А#
dense_17_169273:
АРN
dense_17_169275:	РN
identity

identity_1ИҐ dense_17/StatefulPartitionedCallҐ6token_and_position_embedding_5/StatefulPartitionedCallҐ+transformer_block_5/StatefulPartitionedCall÷
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_5_169234%token_and_position_embedding_5_169236*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *c
f^R\
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_168751µ
+transformer_block_5/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0transformer_block_5_169239transformer_block_5_169241transformer_block_5_169243transformer_block_5_169245transformer_block_5_169247transformer_block_5_169249transformer_block_5_169251transformer_block_5_169253transformer_block_5_169255transformer_block_5_169257transformer_block_5_169259transformer_block_5_169261transformer_block_5_169263transformer_block_5_169265transformer_block_5_169267transformer_block_5_169269*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_168938ђ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall4transformer_block_5/StatefulPartitionedCall:output:0dense_17_169273dense_17_169275*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РN*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_169004Ж
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЯ

Identity_1Identity4transformer_block_5/StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€–
NoOpNoOp!^dense_17/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall,^transformer_block_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2Z
+transformer_block_5/StatefulPartitionedCall+transformer_block_5/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ЄЃ
Ч8
"__inference__traced_restore_171325
file_prefix4
 assignvariableop_dense_17_kernel:
АРN/
 assignvariableop_1_dense_17_bias:	РN]
Iassignvariableop_2_token_and_position_embedding_5_embedding_10_embeddings:
РNА\
Iassignvariableop_3_token_and_position_embedding_5_embedding_11_embeddings:	PАb
Jassignvariableop_4_transformer_block_5_multi_head_attention_5_query_kernel:АА[
Hassignvariableop_5_transformer_block_5_multi_head_attention_5_query_bias:	А`
Hassignvariableop_6_transformer_block_5_multi_head_attention_5_key_kernel:ААY
Fassignvariableop_7_transformer_block_5_multi_head_attention_5_key_bias:	Аb
Jassignvariableop_8_transformer_block_5_multi_head_attention_5_value_kernel:АА[
Hassignvariableop_9_transformer_block_5_multi_head_attention_5_value_bias:	Аn
Vassignvariableop_10_transformer_block_5_multi_head_attention_5_attention_output_kernel:ААc
Tassignvariableop_11_transformer_block_5_multi_head_attention_5_attention_output_bias:	АS
Dassignvariableop_12_transformer_block_5_layer_normalization_10_gamma:	АR
Cassignvariableop_13_transformer_block_5_layer_normalization_10_beta:	АK
7assignvariableop_14_transformer_block_5_dense_15_kernel:
ААD
5assignvariableop_15_transformer_block_5_dense_15_bias:	АK
7assignvariableop_16_transformer_block_5_dense_16_kernel:
ААD
5assignvariableop_17_transformer_block_5_dense_16_bias:	АS
Dassignvariableop_18_transformer_block_5_layer_normalization_11_gamma:	АR
Cassignvariableop_19_transformer_block_5_layer_normalization_11_beta:	А'
assignvariableop_20_iteration:	 +
!assignvariableop_21_learning_rate: e
Qassignvariableop_22_adam_m_token_and_position_embedding_5_embedding_10_embeddings:
РNАe
Qassignvariableop_23_adam_v_token_and_position_embedding_5_embedding_10_embeddings:
РNАd
Qassignvariableop_24_adam_m_token_and_position_embedding_5_embedding_11_embeddings:	PАd
Qassignvariableop_25_adam_v_token_and_position_embedding_5_embedding_11_embeddings:	PАj
Rassignvariableop_26_adam_m_transformer_block_5_multi_head_attention_5_query_kernel:ААj
Rassignvariableop_27_adam_v_transformer_block_5_multi_head_attention_5_query_kernel:ААc
Passignvariableop_28_adam_m_transformer_block_5_multi_head_attention_5_query_bias:	Аc
Passignvariableop_29_adam_v_transformer_block_5_multi_head_attention_5_query_bias:	Аh
Passignvariableop_30_adam_m_transformer_block_5_multi_head_attention_5_key_kernel:ААh
Passignvariableop_31_adam_v_transformer_block_5_multi_head_attention_5_key_kernel:ААa
Nassignvariableop_32_adam_m_transformer_block_5_multi_head_attention_5_key_bias:	Аa
Nassignvariableop_33_adam_v_transformer_block_5_multi_head_attention_5_key_bias:	Аj
Rassignvariableop_34_adam_m_transformer_block_5_multi_head_attention_5_value_kernel:ААj
Rassignvariableop_35_adam_v_transformer_block_5_multi_head_attention_5_value_kernel:ААc
Passignvariableop_36_adam_m_transformer_block_5_multi_head_attention_5_value_bias:	Аc
Passignvariableop_37_adam_v_transformer_block_5_multi_head_attention_5_value_bias:	Аu
]assignvariableop_38_adam_m_transformer_block_5_multi_head_attention_5_attention_output_kernel:ААu
]assignvariableop_39_adam_v_transformer_block_5_multi_head_attention_5_attention_output_kernel:ААj
[assignvariableop_40_adam_m_transformer_block_5_multi_head_attention_5_attention_output_bias:	Аj
[assignvariableop_41_adam_v_transformer_block_5_multi_head_attention_5_attention_output_bias:	АZ
Kassignvariableop_42_adam_m_transformer_block_5_layer_normalization_10_gamma:	АZ
Kassignvariableop_43_adam_v_transformer_block_5_layer_normalization_10_gamma:	АY
Jassignvariableop_44_adam_m_transformer_block_5_layer_normalization_10_beta:	АY
Jassignvariableop_45_adam_v_transformer_block_5_layer_normalization_10_beta:	АR
>assignvariableop_46_adam_m_transformer_block_5_dense_15_kernel:
ААR
>assignvariableop_47_adam_v_transformer_block_5_dense_15_kernel:
ААK
<assignvariableop_48_adam_m_transformer_block_5_dense_15_bias:	АK
<assignvariableop_49_adam_v_transformer_block_5_dense_15_bias:	АR
>assignvariableop_50_adam_m_transformer_block_5_dense_16_kernel:
ААR
>assignvariableop_51_adam_v_transformer_block_5_dense_16_kernel:
ААK
<assignvariableop_52_adam_m_transformer_block_5_dense_16_bias:	АK
<assignvariableop_53_adam_v_transformer_block_5_dense_16_bias:	АZ
Kassignvariableop_54_adam_m_transformer_block_5_layer_normalization_11_gamma:	АZ
Kassignvariableop_55_adam_v_transformer_block_5_layer_normalization_11_gamma:	АY
Jassignvariableop_56_adam_m_transformer_block_5_layer_normalization_11_beta:	АY
Jassignvariableop_57_adam_v_transformer_block_5_layer_normalization_11_beta:	А>
*assignvariableop_58_adam_m_dense_17_kernel:
АРN>
*assignvariableop_59_adam_v_dense_17_kernel:
АРN7
(assignvariableop_60_adam_m_dense_17_bias:	РN7
(assignvariableop_61_adam_v_dense_17_bias:	РN%
assignvariableop_62_total_1: %
assignvariableop_63_count_1: #
assignvariableop_64_total: #
assignvariableop_65_count: 
identity_67ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9©
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*ѕ
value≈B¬CB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHщ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*Ы
valueСBОCB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B р
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ґ
_output_shapesП
М:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Q
dtypesG
E2C	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOpAssignVariableOp assignvariableop_dense_17_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_17_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_2AssignVariableOpIassignvariableop_2_token_and_position_embedding_5_embedding_10_embeddingsIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_3AssignVariableOpIassignvariableop_3_token_and_position_embedding_5_embedding_11_embeddingsIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_4AssignVariableOpJassignvariableop_4_transformer_block_5_multi_head_attention_5_query_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_5AssignVariableOpHassignvariableop_5_transformer_block_5_multi_head_attention_5_query_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_6AssignVariableOpHassignvariableop_6_transformer_block_5_multi_head_attention_5_key_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_7AssignVariableOpFassignvariableop_7_transformer_block_5_multi_head_attention_5_key_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_8AssignVariableOpJassignvariableop_8_transformer_block_5_multi_head_attention_5_value_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_9AssignVariableOpHassignvariableop_9_transformer_block_5_multi_head_attention_5_value_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:п
AssignVariableOp_10AssignVariableOpVassignvariableop_10_transformer_block_5_multi_head_attention_5_attention_output_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_11AssignVariableOpTassignvariableop_11_transformer_block_5_multi_head_attention_5_attention_output_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_12AssignVariableOpDassignvariableop_12_transformer_block_5_layer_normalization_10_gammaIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:№
AssignVariableOp_13AssignVariableOpCassignvariableop_13_transformer_block_5_layer_normalization_10_betaIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_14AssignVariableOp7assignvariableop_14_transformer_block_5_dense_15_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_15AssignVariableOp5assignvariableop_15_transformer_block_5_dense_15_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_16AssignVariableOp7assignvariableop_16_transformer_block_5_dense_16_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_17AssignVariableOp5assignvariableop_17_transformer_block_5_dense_16_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_18AssignVariableOpDassignvariableop_18_transformer_block_5_layer_normalization_11_gammaIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:№
AssignVariableOp_19AssignVariableOpCassignvariableop_19_transformer_block_5_layer_normalization_11_betaIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_20AssignVariableOpassignvariableop_20_iterationIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_21AssignVariableOp!assignvariableop_21_learning_rateIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_22AssignVariableOpQassignvariableop_22_adam_m_token_and_position_embedding_5_embedding_10_embeddingsIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_23AssignVariableOpQassignvariableop_23_adam_v_token_and_position_embedding_5_embedding_10_embeddingsIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_24AssignVariableOpQassignvariableop_24_adam_m_token_and_position_embedding_5_embedding_11_embeddingsIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_25AssignVariableOpQassignvariableop_25_adam_v_token_and_position_embedding_5_embedding_11_embeddingsIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_26AssignVariableOpRassignvariableop_26_adam_m_transformer_block_5_multi_head_attention_5_query_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_27AssignVariableOpRassignvariableop_27_adam_v_transformer_block_5_multi_head_attention_5_query_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_28AssignVariableOpPassignvariableop_28_adam_m_transformer_block_5_multi_head_attention_5_query_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_29AssignVariableOpPassignvariableop_29_adam_v_transformer_block_5_multi_head_attention_5_query_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_30AssignVariableOpPassignvariableop_30_adam_m_transformer_block_5_multi_head_attention_5_key_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_31AssignVariableOpPassignvariableop_31_adam_v_transformer_block_5_multi_head_attention_5_key_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_32AssignVariableOpNassignvariableop_32_adam_m_transformer_block_5_multi_head_attention_5_key_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_33AssignVariableOpNassignvariableop_33_adam_v_transformer_block_5_multi_head_attention_5_key_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_34AssignVariableOpRassignvariableop_34_adam_m_transformer_block_5_multi_head_attention_5_value_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_35AssignVariableOpRassignvariableop_35_adam_v_transformer_block_5_multi_head_attention_5_value_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_36AssignVariableOpPassignvariableop_36_adam_m_transformer_block_5_multi_head_attention_5_value_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_37AssignVariableOpPassignvariableop_37_adam_v_transformer_block_5_multi_head_attention_5_value_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:ц
AssignVariableOp_38AssignVariableOp]assignvariableop_38_adam_m_transformer_block_5_multi_head_attention_5_attention_output_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:ц
AssignVariableOp_39AssignVariableOp]assignvariableop_39_adam_v_transformer_block_5_multi_head_attention_5_attention_output_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:ф
AssignVariableOp_40AssignVariableOp[assignvariableop_40_adam_m_transformer_block_5_multi_head_attention_5_attention_output_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:ф
AssignVariableOp_41AssignVariableOp[assignvariableop_41_adam_v_transformer_block_5_multi_head_attention_5_attention_output_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_42AssignVariableOpKassignvariableop_42_adam_m_transformer_block_5_layer_normalization_10_gammaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_43AssignVariableOpKassignvariableop_43_adam_v_transformer_block_5_layer_normalization_10_gammaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_44AssignVariableOpJassignvariableop_44_adam_m_transformer_block_5_layer_normalization_10_betaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_45AssignVariableOpJassignvariableop_45_adam_v_transformer_block_5_layer_normalization_10_betaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_46AssignVariableOp>assignvariableop_46_adam_m_transformer_block_5_dense_15_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_47AssignVariableOp>assignvariableop_47_adam_v_transformer_block_5_dense_15_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_48AssignVariableOp<assignvariableop_48_adam_m_transformer_block_5_dense_15_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_49AssignVariableOp<assignvariableop_49_adam_v_transformer_block_5_dense_15_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_50AssignVariableOp>assignvariableop_50_adam_m_transformer_block_5_dense_16_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_51AssignVariableOp>assignvariableop_51_adam_v_transformer_block_5_dense_16_kernelIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_52AssignVariableOp<assignvariableop_52_adam_m_transformer_block_5_dense_16_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_53AssignVariableOp<assignvariableop_53_adam_v_transformer_block_5_dense_16_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_54AssignVariableOpKassignvariableop_54_adam_m_transformer_block_5_layer_normalization_11_gammaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_55AssignVariableOpKassignvariableop_55_adam_v_transformer_block_5_layer_normalization_11_gammaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_56AssignVariableOpJassignvariableop_56_adam_m_transformer_block_5_layer_normalization_11_betaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_57AssignVariableOpJassignvariableop_57_adam_v_transformer_block_5_layer_normalization_11_betaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_m_dense_17_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_v_dense_17_kernelIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_m_dense_17_biasIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_v_dense_17_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_62AssignVariableOpassignvariableop_62_total_1Identity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_63AssignVariableOpassignvariableop_63_count_1Identity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_64AssignVariableOpassignvariableop_64_totalIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_65AssignVariableOpassignvariableop_65_countIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ы
Identity_66Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_67IdentityIdentity_66:output:0^NoOp_1*
T0*
_output_shapes
: и
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_67Identity_67:output:0*Ы
_input_shapesЙ
Ж: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
јА
ЇK
__inference__traced_save_171117
file_prefix:
&read_disablecopyonread_dense_17_kernel:
АРN5
&read_1_disablecopyonread_dense_17_bias:	РNc
Oread_2_disablecopyonread_token_and_position_embedding_5_embedding_10_embeddings:
РNАb
Oread_3_disablecopyonread_token_and_position_embedding_5_embedding_11_embeddings:	PАh
Pread_4_disablecopyonread_transformer_block_5_multi_head_attention_5_query_kernel:ААa
Nread_5_disablecopyonread_transformer_block_5_multi_head_attention_5_query_bias:	Аf
Nread_6_disablecopyonread_transformer_block_5_multi_head_attention_5_key_kernel:АА_
Lread_7_disablecopyonread_transformer_block_5_multi_head_attention_5_key_bias:	Аh
Pread_8_disablecopyonread_transformer_block_5_multi_head_attention_5_value_kernel:ААa
Nread_9_disablecopyonread_transformer_block_5_multi_head_attention_5_value_bias:	Аt
\read_10_disablecopyonread_transformer_block_5_multi_head_attention_5_attention_output_kernel:ААi
Zread_11_disablecopyonread_transformer_block_5_multi_head_attention_5_attention_output_bias:	АY
Jread_12_disablecopyonread_transformer_block_5_layer_normalization_10_gamma:	АX
Iread_13_disablecopyonread_transformer_block_5_layer_normalization_10_beta:	АQ
=read_14_disablecopyonread_transformer_block_5_dense_15_kernel:
ААJ
;read_15_disablecopyonread_transformer_block_5_dense_15_bias:	АQ
=read_16_disablecopyonread_transformer_block_5_dense_16_kernel:
ААJ
;read_17_disablecopyonread_transformer_block_5_dense_16_bias:	АY
Jread_18_disablecopyonread_transformer_block_5_layer_normalization_11_gamma:	АX
Iread_19_disablecopyonread_transformer_block_5_layer_normalization_11_beta:	А-
#read_20_disablecopyonread_iteration:	 1
'read_21_disablecopyonread_learning_rate: k
Wread_22_disablecopyonread_adam_m_token_and_position_embedding_5_embedding_10_embeddings:
РNАk
Wread_23_disablecopyonread_adam_v_token_and_position_embedding_5_embedding_10_embeddings:
РNАj
Wread_24_disablecopyonread_adam_m_token_and_position_embedding_5_embedding_11_embeddings:	PАj
Wread_25_disablecopyonread_adam_v_token_and_position_embedding_5_embedding_11_embeddings:	PАp
Xread_26_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_query_kernel:ААp
Xread_27_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_query_kernel:ААi
Vread_28_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_query_bias:	Аi
Vread_29_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_query_bias:	Аn
Vread_30_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_key_kernel:ААn
Vread_31_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_key_kernel:ААg
Tread_32_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_key_bias:	Аg
Tread_33_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_key_bias:	Аp
Xread_34_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_value_kernel:ААp
Xread_35_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_value_kernel:ААi
Vread_36_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_value_bias:	Аi
Vread_37_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_value_bias:	А{
cread_38_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_attention_output_kernel:АА{
cread_39_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_attention_output_kernel:ААp
aread_40_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_attention_output_bias:	Аp
aread_41_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_attention_output_bias:	А`
Qread_42_disablecopyonread_adam_m_transformer_block_5_layer_normalization_10_gamma:	А`
Qread_43_disablecopyonread_adam_v_transformer_block_5_layer_normalization_10_gamma:	А_
Pread_44_disablecopyonread_adam_m_transformer_block_5_layer_normalization_10_beta:	А_
Pread_45_disablecopyonread_adam_v_transformer_block_5_layer_normalization_10_beta:	АX
Dread_46_disablecopyonread_adam_m_transformer_block_5_dense_15_kernel:
ААX
Dread_47_disablecopyonread_adam_v_transformer_block_5_dense_15_kernel:
ААQ
Bread_48_disablecopyonread_adam_m_transformer_block_5_dense_15_bias:	АQ
Bread_49_disablecopyonread_adam_v_transformer_block_5_dense_15_bias:	АX
Dread_50_disablecopyonread_adam_m_transformer_block_5_dense_16_kernel:
ААX
Dread_51_disablecopyonread_adam_v_transformer_block_5_dense_16_kernel:
ААQ
Bread_52_disablecopyonread_adam_m_transformer_block_5_dense_16_bias:	АQ
Bread_53_disablecopyonread_adam_v_transformer_block_5_dense_16_bias:	А`
Qread_54_disablecopyonread_adam_m_transformer_block_5_layer_normalization_11_gamma:	А`
Qread_55_disablecopyonread_adam_v_transformer_block_5_layer_normalization_11_gamma:	А_
Pread_56_disablecopyonread_adam_m_transformer_block_5_layer_normalization_11_beta:	А_
Pread_57_disablecopyonread_adam_v_transformer_block_5_layer_normalization_11_beta:	АD
0read_58_disablecopyonread_adam_m_dense_17_kernel:
АРND
0read_59_disablecopyonread_adam_v_dense_17_kernel:
АРN=
.read_60_disablecopyonread_adam_m_dense_17_bias:	РN=
.read_61_disablecopyonread_adam_v_dense_17_bias:	РN+
!read_62_disablecopyonread_total_1: +
!read_63_disablecopyonread_count_1: )
read_64_disablecopyonread_total: )
read_65_disablecopyonread_count: 
savev2_const
identity_133ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_43/DisableCopyOnReadҐRead_43/ReadVariableOpҐRead_44/DisableCopyOnReadҐRead_44/ReadVariableOpҐRead_45/DisableCopyOnReadҐRead_45/ReadVariableOpҐRead_46/DisableCopyOnReadҐRead_46/ReadVariableOpҐRead_47/DisableCopyOnReadҐRead_47/ReadVariableOpҐRead_48/DisableCopyOnReadҐRead_48/ReadVariableOpҐRead_49/DisableCopyOnReadҐRead_49/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_50/DisableCopyOnReadҐRead_50/ReadVariableOpҐRead_51/DisableCopyOnReadҐRead_51/ReadVariableOpҐRead_52/DisableCopyOnReadҐRead_52/ReadVariableOpҐRead_53/DisableCopyOnReadҐRead_53/ReadVariableOpҐRead_54/DisableCopyOnReadҐRead_54/ReadVariableOpҐRead_55/DisableCopyOnReadҐRead_55/ReadVariableOpҐRead_56/DisableCopyOnReadҐRead_56/ReadVariableOpҐRead_57/DisableCopyOnReadҐRead_57/ReadVariableOpҐRead_58/DisableCopyOnReadҐRead_58/ReadVariableOpҐRead_59/DisableCopyOnReadҐRead_59/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_60/DisableCopyOnReadҐRead_60/ReadVariableOpҐRead_61/DisableCopyOnReadҐRead_61/ReadVariableOpҐRead_62/DisableCopyOnReadҐRead_62/ReadVariableOpҐRead_63/DisableCopyOnReadҐRead_63/ReadVariableOpҐRead_64/DisableCopyOnReadҐRead_64/ReadVariableOpҐRead_65/DisableCopyOnReadҐRead_65/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_17_kernel"/device:CPU:0*
_output_shapes
 §
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_17_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АРN*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АРNc

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АРNz
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_17_bias"/device:CPU:0*
_output_shapes
 £
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_17_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:РN*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:РN`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:РN£
Read_2/DisableCopyOnReadDisableCopyOnReadOread_2_disablecopyonread_token_and_position_embedding_5_embedding_10_embeddings"/device:CPU:0*
_output_shapes
 —
Read_2/ReadVariableOpReadVariableOpOread_2_disablecopyonread_token_and_position_embedding_5_embedding_10_embeddings^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
РNА*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
РNАe

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
РNА£
Read_3/DisableCopyOnReadDisableCopyOnReadOread_3_disablecopyonread_token_and_position_embedding_5_embedding_11_embeddings"/device:CPU:0*
_output_shapes
 –
Read_3/ReadVariableOpReadVariableOpOread_3_disablecopyonread_token_and_position_embedding_5_embedding_11_embeddings^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	PА*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	PАd

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	PА§
Read_4/DisableCopyOnReadDisableCopyOnReadPread_4_disablecopyonread_transformer_block_5_multi_head_attention_5_query_kernel"/device:CPU:0*
_output_shapes
 ÷
Read_4/ReadVariableOpReadVariableOpPread_4_disablecopyonread_transformer_block_5_multi_head_attention_5_query_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0s

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААi

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААҐ
Read_5/DisableCopyOnReadDisableCopyOnReadNread_5_disablecopyonread_transformer_block_5_multi_head_attention_5_query_bias"/device:CPU:0*
_output_shapes
 ѕ
Read_5/ReadVariableOpReadVariableOpNread_5_disablecopyonread_transformer_block_5_multi_head_attention_5_query_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	АҐ
Read_6/DisableCopyOnReadDisableCopyOnReadNread_6_disablecopyonread_transformer_block_5_multi_head_attention_5_key_kernel"/device:CPU:0*
_output_shapes
 ‘
Read_6/ReadVariableOpReadVariableOpNread_6_disablecopyonread_transformer_block_5_multi_head_attention_5_key_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0t
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА†
Read_7/DisableCopyOnReadDisableCopyOnReadLread_7_disablecopyonread_transformer_block_5_multi_head_attention_5_key_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_7/ReadVariableOpReadVariableOpLread_7_disablecopyonread_transformer_block_5_multi_head_attention_5_key_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	А§
Read_8/DisableCopyOnReadDisableCopyOnReadPread_8_disablecopyonread_transformer_block_5_multi_head_attention_5_value_kernel"/device:CPU:0*
_output_shapes
 ÷
Read_8/ReadVariableOpReadVariableOpPread_8_disablecopyonread_transformer_block_5_multi_head_attention_5_value_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0t
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААҐ
Read_9/DisableCopyOnReadDisableCopyOnReadNread_9_disablecopyonread_transformer_block_5_multi_head_attention_5_value_bias"/device:CPU:0*
_output_shapes
 ѕ
Read_9/ReadVariableOpReadVariableOpNread_9_disablecopyonread_transformer_block_5_multi_head_attention_5_value_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	А±
Read_10/DisableCopyOnReadDisableCopyOnRead\read_10_disablecopyonread_transformer_block_5_multi_head_attention_5_attention_output_kernel"/device:CPU:0*
_output_shapes
 д
Read_10/ReadVariableOpReadVariableOp\read_10_disablecopyonread_transformer_block_5_multi_head_attention_5_attention_output_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААѓ
Read_11/DisableCopyOnReadDisableCopyOnReadZread_11_disablecopyonread_transformer_block_5_multi_head_attention_5_attention_output_bias"/device:CPU:0*
_output_shapes
 ў
Read_11/ReadVariableOpReadVariableOpZread_11_disablecopyonread_transformer_block_5_multi_head_attention_5_attention_output_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЯ
Read_12/DisableCopyOnReadDisableCopyOnReadJread_12_disablecopyonread_transformer_block_5_layer_normalization_10_gamma"/device:CPU:0*
_output_shapes
 …
Read_12/ReadVariableOpReadVariableOpJread_12_disablecopyonread_transformer_block_5_layer_normalization_10_gamma^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЮ
Read_13/DisableCopyOnReadDisableCopyOnReadIread_13_disablecopyonread_transformer_block_5_layer_normalization_10_beta"/device:CPU:0*
_output_shapes
 »
Read_13/ReadVariableOpReadVariableOpIread_13_disablecopyonread_transformer_block_5_layer_normalization_10_beta^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:АТ
Read_14/DisableCopyOnReadDisableCopyOnRead=read_14_disablecopyonread_transformer_block_5_dense_15_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_14/ReadVariableOpReadVariableOp=read_14_disablecopyonread_transformer_block_5_dense_15_kernel^Read_14/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААР
Read_15/DisableCopyOnReadDisableCopyOnRead;read_15_disablecopyonread_transformer_block_5_dense_15_bias"/device:CPU:0*
_output_shapes
 Ї
Read_15/ReadVariableOpReadVariableOp;read_15_disablecopyonread_transformer_block_5_dense_15_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:АТ
Read_16/DisableCopyOnReadDisableCopyOnRead=read_16_disablecopyonread_transformer_block_5_dense_16_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_16/ReadVariableOpReadVariableOp=read_16_disablecopyonread_transformer_block_5_dense_16_kernel^Read_16/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААР
Read_17/DisableCopyOnReadDisableCopyOnRead;read_17_disablecopyonread_transformer_block_5_dense_16_bias"/device:CPU:0*
_output_shapes
 Ї
Read_17/ReadVariableOpReadVariableOp;read_17_disablecopyonread_transformer_block_5_dense_16_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЯ
Read_18/DisableCopyOnReadDisableCopyOnReadJread_18_disablecopyonread_transformer_block_5_layer_normalization_11_gamma"/device:CPU:0*
_output_shapes
 …
Read_18/ReadVariableOpReadVariableOpJread_18_disablecopyonread_transformer_block_5_layer_normalization_11_gamma^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЮ
Read_19/DisableCopyOnReadDisableCopyOnReadIread_19_disablecopyonread_transformer_block_5_layer_normalization_11_beta"/device:CPU:0*
_output_shapes
 »
Read_19/ReadVariableOpReadVariableOpIread_19_disablecopyonread_transformer_block_5_layer_normalization_11_beta^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:Аx
Read_20/DisableCopyOnReadDisableCopyOnRead#read_20_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_20/ReadVariableOpReadVariableOp#read_20_disablecopyonread_iteration^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_21/DisableCopyOnReadDisableCopyOnRead'read_21_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_21/ReadVariableOpReadVariableOp'read_21_disablecopyonread_learning_rate^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: ђ
Read_22/DisableCopyOnReadDisableCopyOnReadWread_22_disablecopyonread_adam_m_token_and_position_embedding_5_embedding_10_embeddings"/device:CPU:0*
_output_shapes
 џ
Read_22/ReadVariableOpReadVariableOpWread_22_disablecopyonread_adam_m_token_and_position_embedding_5_embedding_10_embeddings^Read_22/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
РNА*
dtype0q
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
РNАg
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0* 
_output_shapes
:
РNАђ
Read_23/DisableCopyOnReadDisableCopyOnReadWread_23_disablecopyonread_adam_v_token_and_position_embedding_5_embedding_10_embeddings"/device:CPU:0*
_output_shapes
 џ
Read_23/ReadVariableOpReadVariableOpWread_23_disablecopyonread_adam_v_token_and_position_embedding_5_embedding_10_embeddings^Read_23/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
РNА*
dtype0q
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
РNАg
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0* 
_output_shapes
:
РNАђ
Read_24/DisableCopyOnReadDisableCopyOnReadWread_24_disablecopyonread_adam_m_token_and_position_embedding_5_embedding_11_embeddings"/device:CPU:0*
_output_shapes
 Џ
Read_24/ReadVariableOpReadVariableOpWread_24_disablecopyonread_adam_m_token_and_position_embedding_5_embedding_11_embeddings^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	PА*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	PАf
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	PАђ
Read_25/DisableCopyOnReadDisableCopyOnReadWread_25_disablecopyonread_adam_v_token_and_position_embedding_5_embedding_11_embeddings"/device:CPU:0*
_output_shapes
 Џ
Read_25/ReadVariableOpReadVariableOpWread_25_disablecopyonread_adam_v_token_and_position_embedding_5_embedding_11_embeddings^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	PА*
dtype0p
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	PАf
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:	PА≠
Read_26/DisableCopyOnReadDisableCopyOnReadXread_26_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_query_kernel"/device:CPU:0*
_output_shapes
 а
Read_26/ReadVariableOpReadVariableOpXread_26_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_query_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА≠
Read_27/DisableCopyOnReadDisableCopyOnReadXread_27_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_query_kernel"/device:CPU:0*
_output_shapes
 а
Read_27/ReadVariableOpReadVariableOpXread_27_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_query_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААЂ
Read_28/DisableCopyOnReadDisableCopyOnReadVread_28_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_query_bias"/device:CPU:0*
_output_shapes
 ў
Read_28/ReadVariableOpReadVariableOpVread_28_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_query_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЂ
Read_29/DisableCopyOnReadDisableCopyOnReadVread_29_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_query_bias"/device:CPU:0*
_output_shapes
 ў
Read_29/ReadVariableOpReadVariableOpVread_29_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_query_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЂ
Read_30/DisableCopyOnReadDisableCopyOnReadVread_30_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_key_kernel"/device:CPU:0*
_output_shapes
 ё
Read_30/ReadVariableOpReadVariableOpVread_30_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_key_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААЂ
Read_31/DisableCopyOnReadDisableCopyOnReadVread_31_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_key_kernel"/device:CPU:0*
_output_shapes
 ё
Read_31/ReadVariableOpReadVariableOpVread_31_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_key_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА©
Read_32/DisableCopyOnReadDisableCopyOnReadTread_32_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_key_bias"/device:CPU:0*
_output_shapes
 „
Read_32/ReadVariableOpReadVariableOpTread_32_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_key_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:	А©
Read_33/DisableCopyOnReadDisableCopyOnReadTread_33_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_key_bias"/device:CPU:0*
_output_shapes
 „
Read_33/ReadVariableOpReadVariableOpTread_33_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_key_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:	А≠
Read_34/DisableCopyOnReadDisableCopyOnReadXread_34_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_value_kernel"/device:CPU:0*
_output_shapes
 а
Read_34/ReadVariableOpReadVariableOpXread_34_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_value_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА≠
Read_35/DisableCopyOnReadDisableCopyOnReadXread_35_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_value_kernel"/device:CPU:0*
_output_shapes
 а
Read_35/ReadVariableOpReadVariableOpXread_35_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_value_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААЂ
Read_36/DisableCopyOnReadDisableCopyOnReadVread_36_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_value_bias"/device:CPU:0*
_output_shapes
 ў
Read_36/ReadVariableOpReadVariableOpVread_36_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_value_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЂ
Read_37/DisableCopyOnReadDisableCopyOnReadVread_37_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_value_bias"/device:CPU:0*
_output_shapes
 ў
Read_37/ReadVariableOpReadVariableOpVread_37_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_value_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЄ
Read_38/DisableCopyOnReadDisableCopyOnReadcread_38_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_attention_output_kernel"/device:CPU:0*
_output_shapes
 л
Read_38/ReadVariableOpReadVariableOpcread_38_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_attention_output_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААЄ
Read_39/DisableCopyOnReadDisableCopyOnReadcread_39_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_attention_output_kernel"/device:CPU:0*
_output_shapes
 л
Read_39/ReadVariableOpReadVariableOpcread_39_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_attention_output_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААґ
Read_40/DisableCopyOnReadDisableCopyOnReadaread_40_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_attention_output_bias"/device:CPU:0*
_output_shapes
 а
Read_40/ReadVariableOpReadVariableOparead_40_disablecopyonread_adam_m_transformer_block_5_multi_head_attention_5_attention_output_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes	
:Аґ
Read_41/DisableCopyOnReadDisableCopyOnReadaread_41_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_attention_output_bias"/device:CPU:0*
_output_shapes
 а
Read_41/ReadVariableOpReadVariableOparead_41_disablecopyonread_adam_v_transformer_block_5_multi_head_attention_5_attention_output_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:А¶
Read_42/DisableCopyOnReadDisableCopyOnReadQread_42_disablecopyonread_adam_m_transformer_block_5_layer_normalization_10_gamma"/device:CPU:0*
_output_shapes
 –
Read_42/ReadVariableOpReadVariableOpQread_42_disablecopyonread_adam_m_transformer_block_5_layer_normalization_10_gamma^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:А¶
Read_43/DisableCopyOnReadDisableCopyOnReadQread_43_disablecopyonread_adam_v_transformer_block_5_layer_normalization_10_gamma"/device:CPU:0*
_output_shapes
 –
Read_43/ReadVariableOpReadVariableOpQread_43_disablecopyonread_adam_v_transformer_block_5_layer_normalization_10_gamma^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:А•
Read_44/DisableCopyOnReadDisableCopyOnReadPread_44_disablecopyonread_adam_m_transformer_block_5_layer_normalization_10_beta"/device:CPU:0*
_output_shapes
 ѕ
Read_44/ReadVariableOpReadVariableOpPread_44_disablecopyonread_adam_m_transformer_block_5_layer_normalization_10_beta^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:А•
Read_45/DisableCopyOnReadDisableCopyOnReadPread_45_disablecopyonread_adam_v_transformer_block_5_layer_normalization_10_beta"/device:CPU:0*
_output_shapes
 ѕ
Read_45/ReadVariableOpReadVariableOpPread_45_disablecopyonread_adam_v_transformer_block_5_layer_normalization_10_beta^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЩ
Read_46/DisableCopyOnReadDisableCopyOnReadDread_46_disablecopyonread_adam_m_transformer_block_5_dense_15_kernel"/device:CPU:0*
_output_shapes
 »
Read_46/ReadVariableOpReadVariableOpDread_46_disablecopyonread_adam_m_transformer_block_5_dense_15_kernel^Read_46/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААЩ
Read_47/DisableCopyOnReadDisableCopyOnReadDread_47_disablecopyonread_adam_v_transformer_block_5_dense_15_kernel"/device:CPU:0*
_output_shapes
 »
Read_47/ReadVariableOpReadVariableOpDread_47_disablecopyonread_adam_v_transformer_block_5_dense_15_kernel^Read_47/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААЧ
Read_48/DisableCopyOnReadDisableCopyOnReadBread_48_disablecopyonread_adam_m_transformer_block_5_dense_15_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_48/ReadVariableOpReadVariableOpBread_48_disablecopyonread_adam_m_transformer_block_5_dense_15_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЧ
Read_49/DisableCopyOnReadDisableCopyOnReadBread_49_disablecopyonread_adam_v_transformer_block_5_dense_15_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_49/ReadVariableOpReadVariableOpBread_49_disablecopyonread_adam_v_transformer_block_5_dense_15_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЩ
Read_50/DisableCopyOnReadDisableCopyOnReadDread_50_disablecopyonread_adam_m_transformer_block_5_dense_16_kernel"/device:CPU:0*
_output_shapes
 »
Read_50/ReadVariableOpReadVariableOpDread_50_disablecopyonread_adam_m_transformer_block_5_dense_16_kernel^Read_50/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0r
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААi
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААЩ
Read_51/DisableCopyOnReadDisableCopyOnReadDread_51_disablecopyonread_adam_v_transformer_block_5_dense_16_kernel"/device:CPU:0*
_output_shapes
 »
Read_51/ReadVariableOpReadVariableOpDread_51_disablecopyonread_adam_v_transformer_block_5_dense_16_kernel^Read_51/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0r
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААi
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААЧ
Read_52/DisableCopyOnReadDisableCopyOnReadBread_52_disablecopyonread_adam_m_transformer_block_5_dense_16_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_52/ReadVariableOpReadVariableOpBread_52_disablecopyonread_adam_m_transformer_block_5_dense_16_bias^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЧ
Read_53/DisableCopyOnReadDisableCopyOnReadBread_53_disablecopyonread_adam_v_transformer_block_5_dense_16_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_53/ReadVariableOpReadVariableOpBread_53_disablecopyonread_adam_v_transformer_block_5_dense_16_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes	
:А¶
Read_54/DisableCopyOnReadDisableCopyOnReadQread_54_disablecopyonread_adam_m_transformer_block_5_layer_normalization_11_gamma"/device:CPU:0*
_output_shapes
 –
Read_54/ReadVariableOpReadVariableOpQread_54_disablecopyonread_adam_m_transformer_block_5_layer_normalization_11_gamma^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes	
:А¶
Read_55/DisableCopyOnReadDisableCopyOnReadQread_55_disablecopyonread_adam_v_transformer_block_5_layer_normalization_11_gamma"/device:CPU:0*
_output_shapes
 –
Read_55/ReadVariableOpReadVariableOpQread_55_disablecopyonread_adam_v_transformer_block_5_layer_normalization_11_gamma^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes	
:А•
Read_56/DisableCopyOnReadDisableCopyOnReadPread_56_disablecopyonread_adam_m_transformer_block_5_layer_normalization_11_beta"/device:CPU:0*
_output_shapes
 ѕ
Read_56/ReadVariableOpReadVariableOpPread_56_disablecopyonread_adam_m_transformer_block_5_layer_normalization_11_beta^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes	
:А•
Read_57/DisableCopyOnReadDisableCopyOnReadPread_57_disablecopyonread_adam_v_transformer_block_5_layer_normalization_11_beta"/device:CPU:0*
_output_shapes
 ѕ
Read_57/ReadVariableOpReadVariableOpPread_57_disablecopyonread_adam_v_transformer_block_5_layer_normalization_11_beta^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_58/DisableCopyOnReadDisableCopyOnRead0read_58_disablecopyonread_adam_m_dense_17_kernel"/device:CPU:0*
_output_shapes
 і
Read_58/ReadVariableOpReadVariableOp0read_58_disablecopyonread_adam_m_dense_17_kernel^Read_58/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АРN*
dtype0r
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АРNi
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АРNЕ
Read_59/DisableCopyOnReadDisableCopyOnRead0read_59_disablecopyonread_adam_v_dense_17_kernel"/device:CPU:0*
_output_shapes
 і
Read_59/ReadVariableOpReadVariableOp0read_59_disablecopyonread_adam_v_dense_17_kernel^Read_59/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АРN*
dtype0r
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АРNi
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АРNГ
Read_60/DisableCopyOnReadDisableCopyOnRead.read_60_disablecopyonread_adam_m_dense_17_bias"/device:CPU:0*
_output_shapes
 ≠
Read_60/ReadVariableOpReadVariableOp.read_60_disablecopyonread_adam_m_dense_17_bias^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:РN*
dtype0m
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:РNd
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes	
:РNГ
Read_61/DisableCopyOnReadDisableCopyOnRead.read_61_disablecopyonread_adam_v_dense_17_bias"/device:CPU:0*
_output_shapes
 ≠
Read_61/ReadVariableOpReadVariableOp.read_61_disablecopyonread_adam_v_dense_17_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:РN*
dtype0m
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:РNd
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes	
:РNv
Read_62/DisableCopyOnReadDisableCopyOnRead!read_62_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_62/ReadVariableOpReadVariableOp!read_62_disablecopyonread_total_1^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_63/DisableCopyOnReadDisableCopyOnRead!read_63_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_63/ReadVariableOpReadVariableOp!read_63_disablecopyonread_count_1^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_64/DisableCopyOnReadDisableCopyOnReadread_64_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_64/ReadVariableOpReadVariableOpread_64_disablecopyonread_total^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_65/DisableCopyOnReadDisableCopyOnReadread_65_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_65/ReadVariableOpReadVariableOpread_65_disablecopyonread_count^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
: ¶
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*ѕ
value≈B¬CB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHц
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*Ы
valueСBОCB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B —
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *Q
dtypesG
E2C	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_132Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_133IdentityIdentity_132:output:0^NoOp*
T0*
_output_shapes
: н
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "%
identity_133Identity_133:output:0*Э
_input_shapesЛ
И: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ѓ
І
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_170231
x7
$embedding_11_embedding_lookup_170219:	PА8
$embedding_10_embedding_lookup_170224:
РNА
identityИҐembedding_10/embedding_lookupҐembedding_11/embedding_lookupD
ShapeShapex*
T0*
_output_shapes
::нѕf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :w
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€е
embedding_11/embedding_lookupResourceGather$embedding_11_embedding_lookup_170219range:output:0*
Tindices0*7
_class-
+)loc:@embedding_11/embedding_lookup/170219*(
_output_shapes
:€€€€€€€€€А*
dtype0∆
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_11/embedding_lookup/170219*(
_output_shapes
:€€€€€€€€€АШ
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ае
embedding_10/embedding_lookupResourceGather$embedding_10_embedding_lookup_170224x*
Tindices0*7
_class-
+)loc:@embedding_10/embedding_lookup/170224*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0”
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_10/embedding_lookup/170224*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≤
addAddV21embedding_10/embedding_lookup/Identity_1:output:01embedding_11/embedding_lookup/Identity_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аd
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЖ
NoOpNoOp^embedding_10/embedding_lookup^embedding_11/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€: : 2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2>
embedding_11/embedding_lookupembedding_11/embedding_lookup:S O
0
_output_shapes
:€€€€€€€€€€€€€€€€€€

_user_specified_namex
Ч 
°	
C__inference_model_5_layer_call_and_return_conditional_losses_169012
input_68
%token_and_position_embedding_5_168752:	PА9
%token_and_position_embedding_5_168754:
РNА2
transformer_block_5_168939:АА-
transformer_block_5_168941:	А2
transformer_block_5_168943:АА-
transformer_block_5_168945:	А2
transformer_block_5_168947:АА-
transformer_block_5_168949:	А2
transformer_block_5_168951:АА)
transformer_block_5_168953:	А)
transformer_block_5_168955:	А)
transformer_block_5_168957:	А.
transformer_block_5_168959:
АА)
transformer_block_5_168961:	А.
transformer_block_5_168963:
АА)
transformer_block_5_168965:	А)
transformer_block_5_168967:	А)
transformer_block_5_168969:	А#
dense_17_169005:
АРN
dense_17_169007:	РN
identity

identity_1ИҐ dense_17/StatefulPartitionedCallҐ6token_and_position_embedding_5/StatefulPartitionedCallҐ+transformer_block_5/StatefulPartitionedCall„
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinput_6%token_and_position_embedding_5_168752%token_and_position_embedding_5_168754*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *c
f^R\
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_168751µ
+transformer_block_5/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0transformer_block_5_168939transformer_block_5_168941transformer_block_5_168943transformer_block_5_168945transformer_block_5_168947transformer_block_5_168949transformer_block_5_168951transformer_block_5_168953transformer_block_5_168955transformer_block_5_168957transformer_block_5_168959transformer_block_5_168961transformer_block_5_168963transformer_block_5_168965transformer_block_5_168967transformer_block_5_168969*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_168938ђ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall4transformer_block_5/StatefulPartitionedCall:output:0dense_17_169005dense_17_169007*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РN*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_169004Ж
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЯ

Identity_1Identity4transformer_block_5/StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€–
NoOpNoOp!^dense_17/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall,^transformer_block_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2Z
+transformer_block_5/StatefulPartitionedCall+transformer_block_5/StatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_6
Ж
ю
D__inference_dense_17_layer_call_and_return_conditional_losses_170697

inputs5
!tensordot_readvariableop_resource:
АРN.
biasadd_readvariableop_resource:	РN
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
АРN*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Г
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РN\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:РNY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Н
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:РN*
dtype0Ж
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNd
SoftmaxSoftmaxBiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNn
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ъ
…
(__inference_model_5_layer_call_fn_169325
input_6
unknown:	PА
	unknown_0:
РNА!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АРN

unknown_18:	РN
identity

identity_1ИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€РN:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_169280}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЛ

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_6
Ч
»
(__inference_model_5_layer_call_fn_169759

inputs
unknown:	PА
	unknown_0:
РNА!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АРN

unknown_18:	РN
identity

identity_1ИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€РN:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_169376}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЛ

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѓ
І
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_168751
x7
$embedding_11_embedding_lookup_168739:	PА8
$embedding_10_embedding_lookup_168744:
РNА
identityИҐembedding_10/embedding_lookupҐembedding_11/embedding_lookupD
ShapeShapex*
T0*
_output_shapes
::нѕf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :w
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€е
embedding_11/embedding_lookupResourceGather$embedding_11_embedding_lookup_168739range:output:0*
Tindices0*7
_class-
+)loc:@embedding_11/embedding_lookup/168739*(
_output_shapes
:€€€€€€€€€А*
dtype0∆
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_11/embedding_lookup/168739*(
_output_shapes
:€€€€€€€€€АШ
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ае
embedding_10/embedding_lookupResourceGather$embedding_10_embedding_lookup_168744x*
Tindices0*7
_class-
+)loc:@embedding_10/embedding_lookup/168744*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0”
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_10/embedding_lookup/168744*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≤
addAddV21embedding_10/embedding_lookup/Identity_1:output:01embedding_11/embedding_lookup/Identity_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аd
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЖ
NoOpNoOp^embedding_10/embedding_lookup^embedding_11/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€: : 2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2>
embedding_11/embedding_lookupembedding_11/embedding_lookup:S O
0
_output_shapes
:€€€€€€€€€€€€€€€€€€

_user_specified_namex
э
Щ
)__inference_dense_17_layer_call_fn_170666

inputs
unknown:
АРN
	unknown_0:	РN
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РN*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_169004}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РN`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Јл
ф
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_170490

inputsZ
Bmulti_head_attention_5_query_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_5_query_add_readvariableop_resource:	АX
@multi_head_attention_5_key_einsum_einsum_readvariableop_resource:ААI
6multi_head_attention_5_key_add_readvariableop_resource:	АZ
Bmulti_head_attention_5_value_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_5_value_add_readvariableop_resource:	Аe
Mmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:ААR
Cmulti_head_attention_5_attention_output_add_readvariableop_resource:	АK
<layer_normalization_10_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_10_batchnorm_readvariableop_resource:	А>
*dense_15_tensordot_readvariableop_resource:
АА7
(dense_15_biasadd_readvariableop_resource:	А>
*dense_16_tensordot_readvariableop_resource:
АА7
(dense_16_biasadd_readvariableop_resource:	АK
<layer_normalization_11_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_11_batchnorm_readvariableop_resource:	А
identity

identity_1ИҐdense_15/BiasAdd/ReadVariableOpҐ!dense_15/Tensordot/ReadVariableOpҐdense_16/BiasAdd/ReadVariableOpҐ!dense_16/Tensordot/ReadVariableOpҐ/layer_normalization_10/batchnorm/ReadVariableOpҐ3layer_normalization_10/batchnorm/mul/ReadVariableOpҐ/layer_normalization_11/batchnorm/ReadVariableOpҐ3layer_normalization_11/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_5/attention_output/add/ReadVariableOpҐDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_5/key/add/ReadVariableOpҐ7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_5/query/add/ReadVariableOpҐ9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_5/value/add/ReadVariableOpҐ9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Й
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :С
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€¬
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_5/query/einsum/EinsumEinsuminputsAmulti_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_5/query/add/ReadVariableOpReadVariableOp8multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_5/query/addAddV23multi_head_attention_5/query/einsum/Einsum:output:07multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЊ
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_5_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0е
(multi_head_attention_5/key/einsum/EinsumEinsuminputs?multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde•
-multi_head_attention_5/key/add/ReadVariableOpReadVariableOp6multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0’
multi_head_attention_5/key/addAddV21multi_head_attention_5/key/einsum/Einsum:output:05multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А¬
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_5/value/einsum/EinsumEinsuminputsAmulti_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_5/value/add/ReadVariableOpReadVariableOp8multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_5/value/addAddV23multi_head_attention_5/value/einsum/Einsum:output:07multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аa
multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=≤
multi_head_attention_5/MulMul$multi_head_attention_5/query/add:z:0%multi_head_attention_5/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
$multi_head_attention_5/einsum/EinsumEinsum"multi_head_attention_5/key/add:z:0multi_head_attention_5/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbep
%multi_head_attention_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ї
!multi_head_attention_5/ExpandDims
ExpandDimsTile:output:0.multi_head_attention_5/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≤
#multi_head_attention_5/softmax/CastCast*multi_head_attention_5/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_5/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ќ
"multi_head_attention_5/softmax/subSub-multi_head_attention_5/softmax/sub/x:output:0'multi_head_attention_5/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_5/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќћ
"multi_head_attention_5/softmax/mulMul&multi_head_attention_5/softmax/sub:z:0-multi_head_attention_5/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ќ
"multi_head_attention_5/softmax/addAddV2-multi_head_attention_5/einsum/Einsum:output:0&multi_head_attention_5/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
&multi_head_attention_5/softmax/SoftmaxSoftmax&multi_head_attention_5/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€±
'multi_head_attention_5/dropout/IdentityIdentity0multi_head_attention_5/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
&multi_head_attention_5/einsum_1/EinsumEinsum0multi_head_attention_5/dropout/Identity:output:0$multi_head_attention_5/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdЎ
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0§
5multi_head_attention_5/attention_output/einsum/EinsumEinsum/multi_head_attention_5/einsum_1/Einsum:output:0Lmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeї
:multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
+multi_head_attention_5/attention_output/addAddV2>multi_head_attention_5/attention_output/einsum/Einsum:output:0Bmulti_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?±
dropout_10/dropout/MulMul/multi_head_attention_5/attention_output/add:z:0!dropout_10/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dropout_10/dropout/ShapeShape/multi_head_attention_5/attention_output/add:z:0*
T0*
_output_shapes
::нѕ∞
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=’
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А_
dropout_10/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ќ
dropout_10/dropout/SelectV2SelectV2#dropout_10/dropout/GreaterEqual:z:0dropout_10/dropout/Mul:z:0#dropout_10/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А|
add_1AddV2inputs$dropout_10/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
5layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:∆
#layer_normalization_10/moments/meanMean	add_1:z:0>layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(®
+layer_normalization_10/moments/StopGradientStopGradient,layer_normalization_10/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€∆
0layer_normalization_10/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_10/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
9layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:щ
'layer_normalization_10/moments/varianceMean4layer_normalization_10/moments/SquaredDifference:z:0Blayer_normalization_10/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(k
&layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ѕ
$layer_normalization_10/batchnorm/addAddV20layer_normalization_10/moments/variance:output:0/layer_normalization_10/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ш
&layer_normalization_10/batchnorm/RsqrtRsqrt(layer_normalization_10/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€≠
3layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
$layer_normalization_10/batchnorm/mulMul*layer_normalization_10/batchnorm/Rsqrt:y:0;layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
&layer_normalization_10/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_10/batchnorm/mul_2Mul,layer_normalization_10/moments/mean:output:0(layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0–
$layer_normalization_10/batchnorm/subSub7layer_normalization_10/batchnorm/ReadVariableOp:value:0*layer_normalization_10/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_10/batchnorm/add_1AddV2*layer_normalization_10/batchnorm/mul_1:z:0(layer_normalization_10/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_15/Tensordot/ReadVariableOpReadVariableOp*dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       А
dense_15/Tensordot/ShapeShape*layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕb
 dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_15/Tensordot/GatherV2GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/free:output:0)dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_15/Tensordot/GatherV2_1GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/axes:output:0+dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_15/Tensordot/ProdProd$dense_15/Tensordot/GatherV2:output:0!dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_15/Tensordot/Prod_1Prod&dense_15/Tensordot/GatherV2_1:output:0#dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_15/Tensordot/concatConcatV2 dense_15/Tensordot/free:output:0 dense_15/Tensordot/axes:output:0'dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_15/Tensordot/stackPack dense_15/Tensordot/Prod:output:0"dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:є
dense_15/Tensordot/transpose	Transpose*layer_normalization_10/batchnorm/add_1:z:0"dense_15/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_15/Tensordot/ReshapeReshape dense_15/Tensordot/transpose:y:0!dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_15/Tensordot/MatMulMatMul#dense_15/Tensordot/Reshape:output:0)dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_15/Tensordot/concat_1ConcatV2$dense_15/Tensordot/GatherV2:output:0#dense_15/Tensordot/Const_2:output:0)dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_15/TensordotReshape#dense_15/Tensordot/MatMul:product:0$dense_15/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_15/BiasAddBiasAdddense_15/Tensordot:output:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аp
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
dense_16/Tensordot/ShapeShapedense_15/Relu:activations:0*
T0*
_output_shapes
::нѕb
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:™
dense_16/Tensordot/transpose	Transposedense_15/Relu:activations:0"dense_16/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?Ы
dropout_11/dropout/MulMuldense_16/BiasAdd:output:0!dropout_11/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аo
dropout_11/dropout/ShapeShapedense_16/BiasAdd:output:0*
T0*
_output_shapes
::нѕ∞
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=’
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А_
dropout_11/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ќ
dropout_11/dropout/SelectV2SelectV2#dropout_11/dropout/GreaterEqual:z:0dropout_11/dropout/Mul:z:0#dropout_11/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
add_2AddV2*layer_normalization_10/batchnorm/add_1:z:0$dropout_11/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
5layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:∆
#layer_normalization_11/moments/meanMean	add_2:z:0>layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(®
+layer_normalization_11/moments/StopGradientStopGradient,layer_normalization_11/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€∆
0layer_normalization_11/moments/SquaredDifferenceSquaredDifference	add_2:z:04layer_normalization_11/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
9layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:щ
'layer_normalization_11/moments/varianceMean4layer_normalization_11/moments/SquaredDifference:z:0Blayer_normalization_11/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(k
&layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ѕ
$layer_normalization_11/batchnorm/addAddV20layer_normalization_11/moments/variance:output:0/layer_normalization_11/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ш
&layer_normalization_11/batchnorm/RsqrtRsqrt(layer_normalization_11/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€≠
3layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
$layer_normalization_11/batchnorm/mulMul*layer_normalization_11/batchnorm/Rsqrt:y:0;layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
&layer_normalization_11/batchnorm/mul_1Mul	add_2:z:0(layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_11/batchnorm/mul_2Mul,layer_normalization_11/moments/mean:output:0(layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0–
$layer_normalization_11/batchnorm/subSub7layer_normalization_11/batchnorm/ReadVariableOp:value:0*layer_normalization_11/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_11/batchnorm/add_1AddV2*layer_normalization_11/batchnorm/mul_1:z:0(layer_normalization_11/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЗ
IdentityIdentity*layer_normalization_11/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ

Identity_1Identity0multi_head_attention_5/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€м
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp"^dense_15/Tensordot/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp0^layer_normalization_10/batchnorm/ReadVariableOp4^layer_normalization_10/batchnorm/mul/ReadVariableOp0^layer_normalization_11/batchnorm/ReadVariableOp4^layer_normalization_11/batchnorm/mul/ReadVariableOp;^multi_head_attention_5/attention_output/add/ReadVariableOpE^multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_5/key/add/ReadVariableOp8^multi_head_attention_5/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/query/add/ReadVariableOp:^multi_head_attention_5/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/value/add/ReadVariableOp:^multi_head_attention_5/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2F
!dense_15/Tensordot/ReadVariableOp!dense_15/Tensordot/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2b
/layer_normalization_10/batchnorm/ReadVariableOp/layer_normalization_10/batchnorm/ReadVariableOp2j
3layer_normalization_10/batchnorm/mul/ReadVariableOp3layer_normalization_10/batchnorm/mul/ReadVariableOp2b
/layer_normalization_11/batchnorm/ReadVariableOp/layer_normalization_11/batchnorm/ReadVariableOp2j
3layer_normalization_11/batchnorm/mul/ReadVariableOp3layer_normalization_11/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_5/attention_output/add/ReadVariableOp:multi_head_attention_5/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_5/key/add/ReadVariableOp-multi_head_attention_5/key/add/ReadVariableOp2r
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/query/add/ReadVariableOp/multi_head_attention_5/query/add/ReadVariableOp2v
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/value/add/ReadVariableOp/multi_head_attention_5/value/add/ReadVariableOp2v
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
€
Џ
4__inference_transformer_block_5_layer_call_fn_170309

inputs
unknown:АА
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А

unknown_14:	А
identity

identity_1ИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_169186}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЛ

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ир
÷
C__inference_model_5_layer_call_and_return_conditional_losses_169986

inputsV
Ctoken_and_position_embedding_5_embedding_11_embedding_lookup_169770:	PАW
Ctoken_and_position_embedding_5_embedding_10_embedding_lookup_169775:
РNАn
Vtransformer_block_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource:АА_
Ltransformer_block_5_multi_head_attention_5_query_add_readvariableop_resource:	Аl
Ttransformer_block_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource:АА]
Jtransformer_block_5_multi_head_attention_5_key_add_readvariableop_resource:	Аn
Vtransformer_block_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource:АА_
Ltransformer_block_5_multi_head_attention_5_value_add_readvariableop_resource:	Аy
atransformer_block_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:ААf
Wtransformer_block_5_multi_head_attention_5_attention_output_add_readvariableop_resource:	А_
Ptransformer_block_5_layer_normalization_10_batchnorm_mul_readvariableop_resource:	А[
Ltransformer_block_5_layer_normalization_10_batchnorm_readvariableop_resource:	АR
>transformer_block_5_dense_15_tensordot_readvariableop_resource:
ААK
<transformer_block_5_dense_15_biasadd_readvariableop_resource:	АR
>transformer_block_5_dense_16_tensordot_readvariableop_resource:
ААK
<transformer_block_5_dense_16_biasadd_readvariableop_resource:	А_
Ptransformer_block_5_layer_normalization_11_batchnorm_mul_readvariableop_resource:	А[
Ltransformer_block_5_layer_normalization_11_batchnorm_readvariableop_resource:	А>
*dense_17_tensordot_readvariableop_resource:
АРN7
(dense_17_biasadd_readvariableop_resource:	РN
identity

identity_1ИҐdense_17/BiasAdd/ReadVariableOpҐ!dense_17/Tensordot/ReadVariableOpҐ<token_and_position_embedding_5/embedding_10/embedding_lookupҐ<token_and_position_embedding_5/embedding_11/embedding_lookupҐ3transformer_block_5/dense_15/BiasAdd/ReadVariableOpҐ5transformer_block_5/dense_15/Tensordot/ReadVariableOpҐ3transformer_block_5/dense_16/BiasAdd/ReadVariableOpҐ5transformer_block_5/dense_16/Tensordot/ReadVariableOpҐCtransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpҐGtransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpҐCtransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpҐGtransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpҐNtransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpҐXtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpҐAtransformer_block_5/multi_head_attention_5/key/add/ReadVariableOpҐKtransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpҐCtransformer_block_5/multi_head_attention_5/query/add/ReadVariableOpҐMtransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpҐCtransformer_block_5/multi_head_attention_5/value/add/ReadVariableOpҐMtransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOph
$token_and_position_embedding_5/ShapeShapeinputs*
T0*
_output_shapes
::нѕЕ
2token_and_position_embedding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€~
4token_and_position_embedding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
,token_and_position_embedding_5/strided_sliceStridedSlice-token_and_position_embedding_5/Shape:output:0;token_and_position_embedding_5/strided_slice/stack:output:0=token_and_position_embedding_5/strided_slice/stack_1:output:0=token_and_position_embedding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :у
$token_and_position_embedding_5/rangeRange3token_and_position_embedding_5/range/start:output:05token_and_position_embedding_5/strided_slice:output:03token_and_position_embedding_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€б
<token_and_position_embedding_5/embedding_11/embedding_lookupResourceGatherCtoken_and_position_embedding_5_embedding_11_embedding_lookup_169770-token_and_position_embedding_5/range:output:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_11/embedding_lookup/169770*(
_output_shapes
:€€€€€€€€€А*
dtype0£
Etoken_and_position_embedding_5/embedding_11/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_5/embedding_11/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_11/embedding_lookup/169770*(
_output_shapes
:€€€€€€€€€А÷
Gtoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А«
<token_and_position_embedding_5/embedding_10/embedding_lookupResourceGatherCtoken_and_position_embedding_5_embedding_10_embedding_lookup_169775inputs*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_10/embedding_lookup/169775*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0∞
Etoken_and_position_embedding_5/embedding_10/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_5/embedding_10/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_10/embedding_lookup/169775*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аг
Gtoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АП
"token_and_position_embedding_5/addAddV2Ptoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А}
transformer_block_5/ShapeShape&token_and_position_embedding_5/add:z:0*
T0*
_output_shapes
::нѕq
'transformer_block_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)transformer_block_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)transformer_block_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!transformer_block_5/strided_sliceStridedSlice"transformer_block_5/Shape:output:00transformer_block_5/strided_slice/stack:output:02transformer_block_5/strided_slice/stack_1:output:02transformer_block_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)transformer_block_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+transformer_block_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+transformer_block_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
#transformer_block_5/strided_slice_1StridedSlice"transformer_block_5/Shape:output:02transformer_block_5/strided_slice_1/stack:output:04transformer_block_5/strided_slice_1/stack_1:output:04transformer_block_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
transformer_block_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : a
transformer_block_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :…
transformer_block_5/rangeRange(transformer_block_5/range/start:output:0,transformer_block_5/strided_slice_1:output:0(transformer_block_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€z
)transformer_block_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        |
+transformer_block_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        |
+transformer_block_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
#transformer_block_5/strided_slice_2StridedSlice"transformer_block_5/range:output:02transformer_block_5/strided_slice_2/stack:output:04transformer_block_5/strided_slice_2/stack_1:output:04transformer_block_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskc
!transformer_block_5/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : c
!transformer_block_5/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :ѕ
transformer_block_5/range_1Range*transformer_block_5/range_1/start:output:0,transformer_block_5/strided_slice_1:output:0*transformer_block_5/range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€†
transformer_block_5/subSub$transformer_block_5/range_1:output:0,transformer_block_5/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€Щ
transformer_block_5/addAddV2transformer_block_5/sub:z:0,transformer_block_5/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€ґ
 transformer_block_5/GreaterEqualGreaterEqual,transformer_block_5/strided_slice_2:output:0transformer_block_5/add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€e
#transformer_block_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :б
!transformer_block_5/Reshape/shapePack,transformer_block_5/Reshape/shape/0:output:0,transformer_block_5/strided_slice_1:output:0,transformer_block_5/strided_slice_1:output:0*
N*
T0*
_output_shapes
:Ј
transformer_block_5/ReshapeReshape$transformer_block_5/GreaterEqual:z:0*transformer_block_5/Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€m
"transformer_block_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€™
transformer_block_5/ExpandDims
ExpandDims*transformer_block_5/strided_slice:output:0+transformer_block_5/ExpandDims/dim:output:0*
T0*
_output_shapes
:j
transformer_block_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      a
transformer_block_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
transformer_block_5/concatConcatV2'transformer_block_5/ExpandDims:output:0"transformer_block_5/Const:output:0(transformer_block_5/concat/axis:output:0*
N*
T0*
_output_shapes
:≥
transformer_block_5/TileTile$transformer_block_5/Reshape:output:0#transformer_block_5/concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€к
Mtransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0±
>transformer_block_5/multi_head_attention_5/query/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Utransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde—
Ctransformer_block_5/multi_head_attention_5/query/add/ReadVariableOpReadVariableOpLtransformer_block_5_multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0Ч
4transformer_block_5/multi_head_attention_5/query/addAddV2Gtransformer_block_5/multi_head_attention_5/query/einsum/Einsum:output:0Ktransformer_block_5/multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
Ktransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≠
<transformer_block_5/multi_head_attention_5/key/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Stransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeЌ
Atransformer_block_5/multi_head_attention_5/key/add/ReadVariableOpReadVariableOpJtransformer_block_5_multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0С
2transformer_block_5/multi_head_attention_5/key/addAddV2Etransformer_block_5/multi_head_attention_5/key/einsum/Einsum:output:0Itransformer_block_5/multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Ак
Mtransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0±
>transformer_block_5/multi_head_attention_5/value/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Utransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde—
Ctransformer_block_5/multi_head_attention_5/value/add/ReadVariableOpReadVariableOpLtransformer_block_5_multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0Ч
4transformer_block_5/multi_head_attention_5/value/addAddV2Gtransformer_block_5/multi_head_attention_5/value/einsum/Einsum:output:0Ktransformer_block_5/multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аu
0transformer_block_5/multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=о
.transformer_block_5/multi_head_attention_5/MulMul8transformer_block_5/multi_head_attention_5/query/add:z:09transformer_block_5/multi_head_attention_5/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АҐ
8transformer_block_5/multi_head_attention_5/einsum/EinsumEinsum6transformer_block_5/multi_head_attention_5/key/add:z:02transformer_block_5/multi_head_attention_5/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeД
9transformer_block_5/multi_head_attention_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€ц
5transformer_block_5/multi_head_attention_5/ExpandDims
ExpandDims!transformer_block_5/Tile:output:0Btransformer_block_5/multi_head_attention_5/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Џ
7transformer_block_5/multi_head_attention_5/softmax/CastCast>transformer_block_5/multi_head_attention_5/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€}
8transformer_block_5/multi_head_attention_5/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Й
6transformer_block_5/multi_head_attention_5/softmax/subSubAtransformer_block_5/multi_head_attention_5/softmax/sub/x:output:0;transformer_block_5/multi_head_attention_5/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€}
8transformer_block_5/multi_head_attention_5/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќИ
6transformer_block_5/multi_head_attention_5/softmax/mulMul:transformer_block_5/multi_head_attention_5/softmax/sub:z:0Atransformer_block_5/multi_head_attention_5/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€К
6transformer_block_5/multi_head_attention_5/softmax/addAddV2Atransformer_block_5/multi_head_attention_5/einsum/Einsum:output:0:transformer_block_5/multi_head_attention_5/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Ќ
:transformer_block_5/multi_head_attention_5/softmax/SoftmaxSoftmax:transformer_block_5/multi_head_attention_5/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ў
;transformer_block_5/multi_head_attention_5/dropout/IdentityIdentityDtransformer_block_5/multi_head_attention_5/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∞
:transformer_block_5/multi_head_attention_5/einsum_1/EinsumEinsumDtransformer_block_5/multi_head_attention_5/dropout/Identity:output:08transformer_block_5/multi_head_attention_5/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdА
Xtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0а
Itransformer_block_5/multi_head_attention_5/attention_output/einsum/EinsumEinsumCtransformer_block_5/multi_head_attention_5/einsum_1/Einsum:output:0`transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeг
Ntransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_5_multi_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0і
?transformer_block_5/multi_head_attention_5/attention_output/addAddV2Rtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum:output:0Vtransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аq
,transformer_block_5/dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?н
*transformer_block_5/dropout_10/dropout/MulMulCtransformer_block_5/multi_head_attention_5/attention_output/add:z:05transformer_block_5/dropout_10/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
,transformer_block_5/dropout_10/dropout/ShapeShapeCtransformer_block_5/multi_head_attention_5/attention_output/add:z:0*
T0*
_output_shapes
::нѕЎ
Ctransformer_block_5/dropout_10/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_5/dropout_10/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0z
5transformer_block_5/dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=С
3transformer_block_5/dropout_10/dropout/GreaterEqualGreaterEqualLtransformer_block_5/dropout_10/dropout/random_uniform/RandomUniform:output:0>transformer_block_5/dropout_10/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аs
.transformer_block_5/dropout_10/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Э
/transformer_block_5/dropout_10/dropout/SelectV2SelectV27transformer_block_5/dropout_10/dropout/GreaterEqual:z:0.transformer_block_5/dropout_10/dropout/Mul:z:07transformer_block_5/dropout_10/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аƒ
transformer_block_5/add_1AddV2&token_and_position_embedding_5/add:z:08transformer_block_5/dropout_10/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АУ
Itransformer_block_5/layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:В
7transformer_block_5/layer_normalization_10/moments/meanMeantransformer_block_5/add_1:z:0Rtransformer_block_5/layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(–
?transformer_block_5/layer_normalization_10/moments/StopGradientStopGradient@transformer_block_5/layer_normalization_10/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€В
Dtransformer_block_5/layer_normalization_10/moments/SquaredDifferenceSquaredDifferencetransformer_block_5/add_1:z:0Htransformer_block_5/layer_normalization_10/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЧ
Mtransformer_block_5/layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:µ
;transformer_block_5/layer_normalization_10/moments/varianceMeanHtransformer_block_5/layer_normalization_10/moments/SquaredDifference:z:0Vtransformer_block_5/layer_normalization_10/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(
:transformer_block_5/layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Л
8transformer_block_5/layer_normalization_10/batchnorm/addAddV2Dtransformer_block_5/layer_normalization_10/moments/variance:output:0Ctransformer_block_5/layer_normalization_10/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
:transformer_block_5/layer_normalization_10/batchnorm/RsqrtRsqrt<transformer_block_5/layer_normalization_10/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€’
Gtransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_5_layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0Р
8transformer_block_5/layer_normalization_10/batchnorm/mulMul>transformer_block_5/layer_normalization_10/batchnorm/Rsqrt:y:0Otransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аё
:transformer_block_5/layer_normalization_10/batchnorm/mul_1Multransformer_block_5/add_1:z:0<transformer_block_5/layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АБ
:transformer_block_5/layer_normalization_10/batchnorm/mul_2Mul@transformer_block_5/layer_normalization_10/moments/mean:output:0<transformer_block_5/layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЌ
Ctransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_5_layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0М
8transformer_block_5/layer_normalization_10/batchnorm/subSubKtransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOp:value:0>transformer_block_5/layer_normalization_10/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АБ
:transformer_block_5/layer_normalization_10/batchnorm/add_1AddV2>transformer_block_5/layer_normalization_10/batchnorm/mul_1:z:0<transformer_block_5/layer_normalization_10/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аґ
5transformer_block_5/dense_15/Tensordot/ReadVariableOpReadVariableOp>transformer_block_5_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0u
+transformer_block_5/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:|
+transformer_block_5/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ®
,transformer_block_5/dense_15/Tensordot/ShapeShape>transformer_block_5/layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕv
4transformer_block_5/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ѓ
/transformer_block_5/dense_15/Tensordot/GatherV2GatherV25transformer_block_5/dense_15/Tensordot/Shape:output:04transformer_block_5/dense_15/Tensordot/free:output:0=transformer_block_5/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:x
6transformer_block_5/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ≥
1transformer_block_5/dense_15/Tensordot/GatherV2_1GatherV25transformer_block_5/dense_15/Tensordot/Shape:output:04transformer_block_5/dense_15/Tensordot/axes:output:0?transformer_block_5/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
,transformer_block_5/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≈
+transformer_block_5/dense_15/Tensordot/ProdProd8transformer_block_5/dense_15/Tensordot/GatherV2:output:05transformer_block_5/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: x
.transformer_block_5/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ћ
-transformer_block_5/dense_15/Tensordot/Prod_1Prod:transformer_block_5/dense_15/Tensordot/GatherV2_1:output:07transformer_block_5/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: t
2transformer_block_5/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Р
-transformer_block_5/dense_15/Tensordot/concatConcatV24transformer_block_5/dense_15/Tensordot/free:output:04transformer_block_5/dense_15/Tensordot/axes:output:0;transformer_block_5/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:–
,transformer_block_5/dense_15/Tensordot/stackPack4transformer_block_5/dense_15/Tensordot/Prod:output:06transformer_block_5/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:х
0transformer_block_5/dense_15/Tensordot/transpose	Transpose>transformer_block_5/layer_normalization_10/batchnorm/add_1:z:06transformer_block_5/dense_15/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аб
.transformer_block_5/dense_15/Tensordot/ReshapeReshape4transformer_block_5/dense_15/Tensordot/transpose:y:05transformer_block_5/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€в
-transformer_block_5/dense_15/Tensordot/MatMulMatMul7transformer_block_5/dense_15/Tensordot/Reshape:output:0=transformer_block_5/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
.transformer_block_5/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аv
4transformer_block_5/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ы
/transformer_block_5/dense_15/Tensordot/concat_1ConcatV28transformer_block_5/dense_15/Tensordot/GatherV2:output:07transformer_block_5/dense_15/Tensordot/Const_2:output:0=transformer_block_5/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:д
&transformer_block_5/dense_15/TensordotReshape7transformer_block_5/dense_15/Tensordot/MatMul:product:08transformer_block_5/dense_15/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
3transformer_block_5/dense_15/BiasAdd/ReadVariableOpReadVariableOp<transformer_block_5_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ё
$transformer_block_5/dense_15/BiasAddBiasAdd/transformer_block_5/dense_15/Tensordot:output:0;transformer_block_5/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АШ
!transformer_block_5/dense_15/ReluRelu-transformer_block_5/dense_15/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аґ
5transformer_block_5/dense_16/Tensordot/ReadVariableOpReadVariableOp>transformer_block_5_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0u
+transformer_block_5/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:|
+transformer_block_5/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Щ
,transformer_block_5/dense_16/Tensordot/ShapeShape/transformer_block_5/dense_15/Relu:activations:0*
T0*
_output_shapes
::нѕv
4transformer_block_5/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ѓ
/transformer_block_5/dense_16/Tensordot/GatherV2GatherV25transformer_block_5/dense_16/Tensordot/Shape:output:04transformer_block_5/dense_16/Tensordot/free:output:0=transformer_block_5/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:x
6transformer_block_5/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ≥
1transformer_block_5/dense_16/Tensordot/GatherV2_1GatherV25transformer_block_5/dense_16/Tensordot/Shape:output:04transformer_block_5/dense_16/Tensordot/axes:output:0?transformer_block_5/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
,transformer_block_5/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≈
+transformer_block_5/dense_16/Tensordot/ProdProd8transformer_block_5/dense_16/Tensordot/GatherV2:output:05transformer_block_5/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: x
.transformer_block_5/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ћ
-transformer_block_5/dense_16/Tensordot/Prod_1Prod:transformer_block_5/dense_16/Tensordot/GatherV2_1:output:07transformer_block_5/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: t
2transformer_block_5/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Р
-transformer_block_5/dense_16/Tensordot/concatConcatV24transformer_block_5/dense_16/Tensordot/free:output:04transformer_block_5/dense_16/Tensordot/axes:output:0;transformer_block_5/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:–
,transformer_block_5/dense_16/Tensordot/stackPack4transformer_block_5/dense_16/Tensordot/Prod:output:06transformer_block_5/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ж
0transformer_block_5/dense_16/Tensordot/transpose	Transpose/transformer_block_5/dense_15/Relu:activations:06transformer_block_5/dense_16/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аб
.transformer_block_5/dense_16/Tensordot/ReshapeReshape4transformer_block_5/dense_16/Tensordot/transpose:y:05transformer_block_5/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€в
-transformer_block_5/dense_16/Tensordot/MatMulMatMul7transformer_block_5/dense_16/Tensordot/Reshape:output:0=transformer_block_5/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
.transformer_block_5/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аv
4transformer_block_5/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ы
/transformer_block_5/dense_16/Tensordot/concat_1ConcatV28transformer_block_5/dense_16/Tensordot/GatherV2:output:07transformer_block_5/dense_16/Tensordot/Const_2:output:0=transformer_block_5/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:д
&transformer_block_5/dense_16/TensordotReshape7transformer_block_5/dense_16/Tensordot/MatMul:product:08transformer_block_5/dense_16/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
3transformer_block_5/dense_16/BiasAdd/ReadVariableOpReadVariableOp<transformer_block_5_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ё
$transformer_block_5/dense_16/BiasAddBiasAdd/transformer_block_5/dense_16/Tensordot:output:0;transformer_block_5/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аq
,transformer_block_5/dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?„
*transformer_block_5/dropout_11/dropout/MulMul-transformer_block_5/dense_16/BiasAdd:output:05transformer_block_5/dropout_11/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЧ
,transformer_block_5/dropout_11/dropout/ShapeShape-transformer_block_5/dense_16/BiasAdd:output:0*
T0*
_output_shapes
::нѕЎ
Ctransformer_block_5/dropout_11/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_5/dropout_11/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0z
5transformer_block_5/dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=С
3transformer_block_5/dropout_11/dropout/GreaterEqualGreaterEqualLtransformer_block_5/dropout_11/dropout/random_uniform/RandomUniform:output:0>transformer_block_5/dropout_11/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аs
.transformer_block_5/dropout_11/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Э
/transformer_block_5/dropout_11/dropout/SelectV2SelectV27transformer_block_5/dropout_11/dropout/GreaterEqual:z:0.transformer_block_5/dropout_11/dropout/Mul:z:07transformer_block_5/dropout_11/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А№
transformer_block_5/add_2AddV2>transformer_block_5/layer_normalization_10/batchnorm/add_1:z:08transformer_block_5/dropout_11/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АУ
Itransformer_block_5/layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:В
7transformer_block_5/layer_normalization_11/moments/meanMeantransformer_block_5/add_2:z:0Rtransformer_block_5/layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(–
?transformer_block_5/layer_normalization_11/moments/StopGradientStopGradient@transformer_block_5/layer_normalization_11/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€В
Dtransformer_block_5/layer_normalization_11/moments/SquaredDifferenceSquaredDifferencetransformer_block_5/add_2:z:0Htransformer_block_5/layer_normalization_11/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЧ
Mtransformer_block_5/layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:µ
;transformer_block_5/layer_normalization_11/moments/varianceMeanHtransformer_block_5/layer_normalization_11/moments/SquaredDifference:z:0Vtransformer_block_5/layer_normalization_11/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(
:transformer_block_5/layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5Л
8transformer_block_5/layer_normalization_11/batchnorm/addAddV2Dtransformer_block_5/layer_normalization_11/moments/variance:output:0Ctransformer_block_5/layer_normalization_11/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
:transformer_block_5/layer_normalization_11/batchnorm/RsqrtRsqrt<transformer_block_5/layer_normalization_11/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€’
Gtransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_5_layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0Р
8transformer_block_5/layer_normalization_11/batchnorm/mulMul>transformer_block_5/layer_normalization_11/batchnorm/Rsqrt:y:0Otransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аё
:transformer_block_5/layer_normalization_11/batchnorm/mul_1Multransformer_block_5/add_2:z:0<transformer_block_5/layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АБ
:transformer_block_5/layer_normalization_11/batchnorm/mul_2Mul@transformer_block_5/layer_normalization_11/moments/mean:output:0<transformer_block_5/layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЌ
Ctransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_5_layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0М
8transformer_block_5/layer_normalization_11/batchnorm/subSubKtransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOp:value:0>transformer_block_5/layer_normalization_11/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АБ
:transformer_block_5/layer_normalization_11/batchnorm/add_1AddV2>transformer_block_5/layer_normalization_11/batchnorm/mul_1:z:0<transformer_block_5/layer_normalization_11/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_17/Tensordot/ReadVariableOpReadVariableOp*dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
АРN*
dtype0a
dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ф
dense_17/Tensordot/ShapeShape>transformer_block_5/layer_normalization_11/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕb
 dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_17/Tensordot/GatherV2GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/free:output:0)dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_17/Tensordot/GatherV2_1GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/axes:output:0+dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_17/Tensordot/ProdProd$dense_17/Tensordot/GatherV2:output:0!dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_17/Tensordot/Prod_1Prod&dense_17/Tensordot/GatherV2_1:output:0#dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_17/Tensordot/concatConcatV2 dense_17/Tensordot/free:output:0 dense_17/Tensordot/axes:output:0'dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_17/Tensordot/stackPack dense_17/Tensordot/Prod:output:0"dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ќ
dense_17/Tensordot/transpose	Transpose>transformer_block_5/layer_normalization_11/batchnorm/add_1:z:0"dense_17/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_17/Tensordot/ReshapeReshape dense_17/Tensordot/transpose:y:0!dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_17/Tensordot/MatMulMatMul#dense_17/Tensordot/Reshape:output:0)dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РNe
dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:РNb
 dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_17/Tensordot/concat_1ConcatV2$dense_17/Tensordot/GatherV2:output:0#dense_17/Tensordot/Const_2:output:0)dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_17/TensordotReshape#dense_17/Tensordot/MatMul:product:0$dense_17/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЕ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:РN*
dtype0°
dense_17/BiasAddBiasAdddense_17/Tensordot:output:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNv
dense_17/SoftmaxSoftmaxdense_17/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNw
IdentityIdentitydense_17/Softmax:softmax:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNѓ

Identity_1IdentityDtransformer_block_5/multi_head_attention_5/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€р

NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp"^dense_17/Tensordot/ReadVariableOp=^token_and_position_embedding_5/embedding_10/embedding_lookup=^token_and_position_embedding_5/embedding_11/embedding_lookup4^transformer_block_5/dense_15/BiasAdd/ReadVariableOp6^transformer_block_5/dense_15/Tensordot/ReadVariableOp4^transformer_block_5/dense_16/BiasAdd/ReadVariableOp6^transformer_block_5/dense_16/Tensordot/ReadVariableOpD^transformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpH^transformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpD^transformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpH^transformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpO^transformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpY^transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_5/multi_head_attention_5/key/add/ReadVariableOpL^transformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpD^transformer_block_5/multi_head_attention_5/query/add/ReadVariableOpN^transformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpD^transformer_block_5/multi_head_attention_5/value/add/ReadVariableOpN^transformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2F
!dense_17/Tensordot/ReadVariableOp!dense_17/Tensordot/ReadVariableOp2|
<token_and_position_embedding_5/embedding_10/embedding_lookup<token_and_position_embedding_5/embedding_10/embedding_lookup2|
<token_and_position_embedding_5/embedding_11/embedding_lookup<token_and_position_embedding_5/embedding_11/embedding_lookup2j
3transformer_block_5/dense_15/BiasAdd/ReadVariableOp3transformer_block_5/dense_15/BiasAdd/ReadVariableOp2n
5transformer_block_5/dense_15/Tensordot/ReadVariableOp5transformer_block_5/dense_15/Tensordot/ReadVariableOp2j
3transformer_block_5/dense_16/BiasAdd/ReadVariableOp3transformer_block_5/dense_16/BiasAdd/ReadVariableOp2n
5transformer_block_5/dense_16/Tensordot/ReadVariableOp5transformer_block_5/dense_16/Tensordot/ReadVariableOp2К
Ctransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpCtransformer_block_5/layer_normalization_10/batchnorm/ReadVariableOp2Т
Gtransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpGtransformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOp2К
Ctransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpCtransformer_block_5/layer_normalization_11/batchnorm/ReadVariableOp2Т
Gtransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpGtransformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOp2†
Ntransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpNtransformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOp2і
Xtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2Ж
Atransformer_block_5/multi_head_attention_5/key/add/ReadVariableOpAtransformer_block_5/multi_head_attention_5/key/add/ReadVariableOp2Ъ
Ktransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpKtransformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_5/multi_head_attention_5/query/add/ReadVariableOpCtransformer_block_5/multi_head_attention_5/query/add/ReadVariableOp2Ю
Mtransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpMtransformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_5/multi_head_attention_5/value/add/ReadVariableOpCtransformer_block_5/multi_head_attention_5/value/add/ReadVariableOp2Ю
Mtransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpMtransformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф 
†	
C__inference_model_5_layer_call_and_return_conditional_losses_169376

inputs8
%token_and_position_embedding_5_169330:	PА9
%token_and_position_embedding_5_169332:
РNА2
transformer_block_5_169335:АА-
transformer_block_5_169337:	А2
transformer_block_5_169339:АА-
transformer_block_5_169341:	А2
transformer_block_5_169343:АА-
transformer_block_5_169345:	А2
transformer_block_5_169347:АА)
transformer_block_5_169349:	А)
transformer_block_5_169351:	А)
transformer_block_5_169353:	А.
transformer_block_5_169355:
АА)
transformer_block_5_169357:	А.
transformer_block_5_169359:
АА)
transformer_block_5_169361:	А)
transformer_block_5_169363:	А)
transformer_block_5_169365:	А#
dense_17_169369:
АРN
dense_17_169371:	РN
identity

identity_1ИҐ dense_17/StatefulPartitionedCallҐ6token_and_position_embedding_5/StatefulPartitionedCallҐ+transformer_block_5/StatefulPartitionedCall÷
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_5_169330%token_and_position_embedding_5_169332*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *c
f^R\
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_168751µ
+transformer_block_5/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0transformer_block_5_169335transformer_block_5_169337transformer_block_5_169339transformer_block_5_169341transformer_block_5_169343transformer_block_5_169345transformer_block_5_169347transformer_block_5_169349transformer_block_5_169351transformer_block_5_169353transformer_block_5_169355transformer_block_5_169357transformer_block_5_169359transformer_block_5_169361transformer_block_5_169363transformer_block_5_169365*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_169186ђ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall4transformer_block_5/StatefulPartitionedCall:output:0dense_17_169369dense_17_169371*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РN*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_169004Ж
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЯ

Identity_1Identity4transformer_block_5/StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€–
NoOpNoOp!^dense_17/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall,^transformer_block_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2Z
+transformer_block_5/StatefulPartitionedCall+transformer_block_5/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
еЏ
ф
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_169186

inputsZ
Bmulti_head_attention_5_query_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_5_query_add_readvariableop_resource:	АX
@multi_head_attention_5_key_einsum_einsum_readvariableop_resource:ААI
6multi_head_attention_5_key_add_readvariableop_resource:	АZ
Bmulti_head_attention_5_value_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_5_value_add_readvariableop_resource:	Аe
Mmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:ААR
Cmulti_head_attention_5_attention_output_add_readvariableop_resource:	АK
<layer_normalization_10_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_10_batchnorm_readvariableop_resource:	А>
*dense_15_tensordot_readvariableop_resource:
АА7
(dense_15_biasadd_readvariableop_resource:	А>
*dense_16_tensordot_readvariableop_resource:
АА7
(dense_16_biasadd_readvariableop_resource:	АK
<layer_normalization_11_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_11_batchnorm_readvariableop_resource:	А
identity

identity_1ИҐdense_15/BiasAdd/ReadVariableOpҐ!dense_15/Tensordot/ReadVariableOpҐdense_16/BiasAdd/ReadVariableOpҐ!dense_16/Tensordot/ReadVariableOpҐ/layer_normalization_10/batchnorm/ReadVariableOpҐ3layer_normalization_10/batchnorm/mul/ReadVariableOpҐ/layer_normalization_11/batchnorm/ReadVariableOpҐ3layer_normalization_11/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_5/attention_output/add/ReadVariableOpҐDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_5/key/add/ReadVariableOpҐ7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_5/query/add/ReadVariableOpҐ9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_5/value/add/ReadVariableOpҐ9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Й
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :С
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€¬
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_5/query/einsum/EinsumEinsuminputsAmulti_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_5/query/add/ReadVariableOpReadVariableOp8multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_5/query/addAddV23multi_head_attention_5/query/einsum/Einsum:output:07multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЊ
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_5_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0е
(multi_head_attention_5/key/einsum/EinsumEinsuminputs?multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde•
-multi_head_attention_5/key/add/ReadVariableOpReadVariableOp6multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0’
multi_head_attention_5/key/addAddV21multi_head_attention_5/key/einsum/Einsum:output:05multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А¬
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_5/value/einsum/EinsumEinsuminputsAmulti_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_5/value/add/ReadVariableOpReadVariableOp8multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_5/value/addAddV23multi_head_attention_5/value/einsum/Einsum:output:07multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аa
multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=≤
multi_head_attention_5/MulMul$multi_head_attention_5/query/add:z:0%multi_head_attention_5/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
$multi_head_attention_5/einsum/EinsumEinsum"multi_head_attention_5/key/add:z:0multi_head_attention_5/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbep
%multi_head_attention_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ї
!multi_head_attention_5/ExpandDims
ExpandDimsTile:output:0.multi_head_attention_5/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≤
#multi_head_attention_5/softmax/CastCast*multi_head_attention_5/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_5/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ќ
"multi_head_attention_5/softmax/subSub-multi_head_attention_5/softmax/sub/x:output:0'multi_head_attention_5/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_5/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќћ
"multi_head_attention_5/softmax/mulMul&multi_head_attention_5/softmax/sub:z:0-multi_head_attention_5/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ќ
"multi_head_attention_5/softmax/addAddV2-multi_head_attention_5/einsum/Einsum:output:0&multi_head_attention_5/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
&multi_head_attention_5/softmax/SoftmaxSoftmax&multi_head_attention_5/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€±
'multi_head_attention_5/dropout/IdentityIdentity0multi_head_attention_5/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
&multi_head_attention_5/einsum_1/EinsumEinsum0multi_head_attention_5/dropout/Identity:output:0$multi_head_attention_5/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdЎ
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0§
5multi_head_attention_5/attention_output/einsum/EinsumEinsum/multi_head_attention_5/einsum_1/Einsum:output:0Lmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeї
:multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
+multi_head_attention_5/attention_output/addAddV2>multi_head_attention_5/attention_output/einsum/Einsum:output:0Bmulti_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АР
dropout_10/IdentityIdentity/multi_head_attention_5/attention_output/add:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аt
add_1AddV2inputsdropout_10/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
5layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:∆
#layer_normalization_10/moments/meanMean	add_1:z:0>layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(®
+layer_normalization_10/moments/StopGradientStopGradient,layer_normalization_10/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€∆
0layer_normalization_10/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_10/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
9layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:щ
'layer_normalization_10/moments/varianceMean4layer_normalization_10/moments/SquaredDifference:z:0Blayer_normalization_10/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(k
&layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ѕ
$layer_normalization_10/batchnorm/addAddV20layer_normalization_10/moments/variance:output:0/layer_normalization_10/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ш
&layer_normalization_10/batchnorm/RsqrtRsqrt(layer_normalization_10/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€≠
3layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
$layer_normalization_10/batchnorm/mulMul*layer_normalization_10/batchnorm/Rsqrt:y:0;layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
&layer_normalization_10/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_10/batchnorm/mul_2Mul,layer_normalization_10/moments/mean:output:0(layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0–
$layer_normalization_10/batchnorm/subSub7layer_normalization_10/batchnorm/ReadVariableOp:value:0*layer_normalization_10/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_10/batchnorm/add_1AddV2*layer_normalization_10/batchnorm/mul_1:z:0(layer_normalization_10/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_15/Tensordot/ReadVariableOpReadVariableOp*dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       А
dense_15/Tensordot/ShapeShape*layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕb
 dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_15/Tensordot/GatherV2GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/free:output:0)dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_15/Tensordot/GatherV2_1GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/axes:output:0+dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_15/Tensordot/ProdProd$dense_15/Tensordot/GatherV2:output:0!dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_15/Tensordot/Prod_1Prod&dense_15/Tensordot/GatherV2_1:output:0#dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_15/Tensordot/concatConcatV2 dense_15/Tensordot/free:output:0 dense_15/Tensordot/axes:output:0'dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_15/Tensordot/stackPack dense_15/Tensordot/Prod:output:0"dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:є
dense_15/Tensordot/transpose	Transpose*layer_normalization_10/batchnorm/add_1:z:0"dense_15/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_15/Tensordot/ReshapeReshape dense_15/Tensordot/transpose:y:0!dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_15/Tensordot/MatMulMatMul#dense_15/Tensordot/Reshape:output:0)dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_15/Tensordot/concat_1ConcatV2$dense_15/Tensordot/GatherV2:output:0#dense_15/Tensordot/Const_2:output:0)dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_15/TensordotReshape#dense_15/Tensordot/MatMul:product:0$dense_15/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_15/BiasAddBiasAdddense_15/Tensordot:output:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аp
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
dense_16/Tensordot/ShapeShapedense_15/Relu:activations:0*
T0*
_output_shapes
::нѕb
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:™
dense_16/Tensordot/transpose	Transposedense_15/Relu:activations:0"dense_16/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аz
dropout_11/IdentityIdentitydense_16/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АШ
add_2AddV2*layer_normalization_10/batchnorm/add_1:z:0dropout_11/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
5layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:∆
#layer_normalization_11/moments/meanMean	add_2:z:0>layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(®
+layer_normalization_11/moments/StopGradientStopGradient,layer_normalization_11/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€∆
0layer_normalization_11/moments/SquaredDifferenceSquaredDifference	add_2:z:04layer_normalization_11/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
9layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:щ
'layer_normalization_11/moments/varianceMean4layer_normalization_11/moments/SquaredDifference:z:0Blayer_normalization_11/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(k
&layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ѕ
$layer_normalization_11/batchnorm/addAddV20layer_normalization_11/moments/variance:output:0/layer_normalization_11/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ш
&layer_normalization_11/batchnorm/RsqrtRsqrt(layer_normalization_11/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€≠
3layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
$layer_normalization_11/batchnorm/mulMul*layer_normalization_11/batchnorm/Rsqrt:y:0;layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
&layer_normalization_11/batchnorm/mul_1Mul	add_2:z:0(layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_11/batchnorm/mul_2Mul,layer_normalization_11/moments/mean:output:0(layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0–
$layer_normalization_11/batchnorm/subSub7layer_normalization_11/batchnorm/ReadVariableOp:value:0*layer_normalization_11/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_11/batchnorm/add_1AddV2*layer_normalization_11/batchnorm/mul_1:z:0(layer_normalization_11/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЗ
IdentityIdentity*layer_normalization_11/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ

Identity_1Identity0multi_head_attention_5/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€м
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp"^dense_15/Tensordot/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp0^layer_normalization_10/batchnorm/ReadVariableOp4^layer_normalization_10/batchnorm/mul/ReadVariableOp0^layer_normalization_11/batchnorm/ReadVariableOp4^layer_normalization_11/batchnorm/mul/ReadVariableOp;^multi_head_attention_5/attention_output/add/ReadVariableOpE^multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_5/key/add/ReadVariableOp8^multi_head_attention_5/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/query/add/ReadVariableOp:^multi_head_attention_5/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/value/add/ReadVariableOp:^multi_head_attention_5/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2F
!dense_15/Tensordot/ReadVariableOp!dense_15/Tensordot/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2b
/layer_normalization_10/batchnorm/ReadVariableOp/layer_normalization_10/batchnorm/ReadVariableOp2j
3layer_normalization_10/batchnorm/mul/ReadVariableOp3layer_normalization_10/batchnorm/mul/ReadVariableOp2b
/layer_normalization_11/batchnorm/ReadVariableOp/layer_normalization_11/batchnorm/ReadVariableOp2j
3layer_normalization_11/batchnorm/mul/ReadVariableOp3layer_normalization_11/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_5/attention_output/add/ReadVariableOp:multi_head_attention_5/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_5/key/add/ReadVariableOp-multi_head_attention_5/key/add/ReadVariableOp2r
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/query/add/ReadVariableOp/multi_head_attention_5/query/add/ReadVariableOp2v
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/value/add/ReadVariableOp/multi_head_attention_5/value/add/ReadVariableOp2v
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ч 
°	
C__inference_model_5_layer_call_and_return_conditional_losses_169228
input_68
%token_and_position_embedding_5_169015:	PА9
%token_and_position_embedding_5_169017:
РNА2
transformer_block_5_169187:АА-
transformer_block_5_169189:	А2
transformer_block_5_169191:АА-
transformer_block_5_169193:	А2
transformer_block_5_169195:АА-
transformer_block_5_169197:	А2
transformer_block_5_169199:АА)
transformer_block_5_169201:	А)
transformer_block_5_169203:	А)
transformer_block_5_169205:	А.
transformer_block_5_169207:
АА)
transformer_block_5_169209:	А.
transformer_block_5_169211:
АА)
transformer_block_5_169213:	А)
transformer_block_5_169215:	А)
transformer_block_5_169217:	А#
dense_17_169221:
АРN
dense_17_169223:	РN
identity

identity_1ИҐ dense_17/StatefulPartitionedCallҐ6token_and_position_embedding_5/StatefulPartitionedCallҐ+transformer_block_5/StatefulPartitionedCall„
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinput_6%token_and_position_embedding_5_169015%token_and_position_embedding_5_169017*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *c
f^R\
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_168751µ
+transformer_block_5/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0transformer_block_5_169187transformer_block_5_169189transformer_block_5_169191transformer_block_5_169193transformer_block_5_169195transformer_block_5_169197transformer_block_5_169199transformer_block_5_169201transformer_block_5_169203transformer_block_5_169205transformer_block_5_169207transformer_block_5_169209transformer_block_5_169211transformer_block_5_169213transformer_block_5_169215transformer_block_5_169217*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_169186ђ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall4transformer_block_5/StatefulPartitionedCall:output:0dense_17_169221dense_17_169223*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РN*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_169004Ж
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЯ

Identity_1Identity4transformer_block_5/StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€–
NoOpNoOp!^dense_17/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall,^transformer_block_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2Z
+transformer_block_5/StatefulPartitionedCall+transformer_block_5/StatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_6
ќь
ц
!__inference__wrapped_model_168724
input_6^
Kmodel_5_token_and_position_embedding_5_embedding_11_embedding_lookup_168522:	PА_
Kmodel_5_token_and_position_embedding_5_embedding_10_embedding_lookup_168527:
РNАv
^model_5_transformer_block_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource:ААg
Tmodel_5_transformer_block_5_multi_head_attention_5_query_add_readvariableop_resource:	Аt
\model_5_transformer_block_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource:ААe
Rmodel_5_transformer_block_5_multi_head_attention_5_key_add_readvariableop_resource:	Аv
^model_5_transformer_block_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource:ААg
Tmodel_5_transformer_block_5_multi_head_attention_5_value_add_readvariableop_resource:	АБ
imodel_5_transformer_block_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:ААn
_model_5_transformer_block_5_multi_head_attention_5_attention_output_add_readvariableop_resource:	Аg
Xmodel_5_transformer_block_5_layer_normalization_10_batchnorm_mul_readvariableop_resource:	Аc
Tmodel_5_transformer_block_5_layer_normalization_10_batchnorm_readvariableop_resource:	АZ
Fmodel_5_transformer_block_5_dense_15_tensordot_readvariableop_resource:
ААS
Dmodel_5_transformer_block_5_dense_15_biasadd_readvariableop_resource:	АZ
Fmodel_5_transformer_block_5_dense_16_tensordot_readvariableop_resource:
ААS
Dmodel_5_transformer_block_5_dense_16_biasadd_readvariableop_resource:	Аg
Xmodel_5_transformer_block_5_layer_normalization_11_batchnorm_mul_readvariableop_resource:	Аc
Tmodel_5_transformer_block_5_layer_normalization_11_batchnorm_readvariableop_resource:	АF
2model_5_dense_17_tensordot_readvariableop_resource:
АРN?
0model_5_dense_17_biasadd_readvariableop_resource:	РN
identity

identity_1ИҐ'model_5/dense_17/BiasAdd/ReadVariableOpҐ)model_5/dense_17/Tensordot/ReadVariableOpҐDmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookupҐDmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookupҐ;model_5/transformer_block_5/dense_15/BiasAdd/ReadVariableOpҐ=model_5/transformer_block_5/dense_15/Tensordot/ReadVariableOpҐ;model_5/transformer_block_5/dense_16/BiasAdd/ReadVariableOpҐ=model_5/transformer_block_5/dense_16/Tensordot/ReadVariableOpҐKmodel_5/transformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpҐOmodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpҐKmodel_5/transformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpҐOmodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpҐVmodel_5/transformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpҐ`model_5/transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpҐImodel_5/transformer_block_5/multi_head_attention_5/key/add/ReadVariableOpҐSmodel_5/transformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpҐKmodel_5/transformer_block_5/multi_head_attention_5/query/add/ReadVariableOpҐUmodel_5/transformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpҐKmodel_5/transformer_block_5/multi_head_attention_5/value/add/ReadVariableOpҐUmodel_5/transformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpq
,model_5/token_and_position_embedding_5/ShapeShapeinput_6*
T0*
_output_shapes
::нѕН
:model_5/token_and_position_embedding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Ж
<model_5/token_and_position_embedding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
<model_5/token_and_position_embedding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
4model_5/token_and_position_embedding_5/strided_sliceStridedSlice5model_5/token_and_position_embedding_5/Shape:output:0Cmodel_5/token_and_position_embedding_5/strided_slice/stack:output:0Emodel_5/token_and_position_embedding_5/strided_slice/stack_1:output:0Emodel_5/token_and_position_embedding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2model_5/token_and_position_embedding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2model_5/token_and_position_embedding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :У
,model_5/token_and_position_embedding_5/rangeRange;model_5/token_and_position_embedding_5/range/start:output:0=model_5/token_and_position_embedding_5/strided_slice:output:0;model_5/token_and_position_embedding_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€Б
Dmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookupResourceGatherKmodel_5_token_and_position_embedding_5_embedding_11_embedding_lookup_1685225model_5/token_and_position_embedding_5/range:output:0*
Tindices0*^
_classT
RPloc:@model_5/token_and_position_embedding_5/embedding_11/embedding_lookup/168522*(
_output_shapes
:€€€€€€€€€А*
dtype0ї
Mmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup/IdentityIdentityMmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup:output:0*
T0*^
_classT
RPloc:@model_5/token_and_position_embedding_5/embedding_11/embedding_lookup/168522*(
_output_shapes
:€€€€€€€€€Аж
Omodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1IdentityVmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аа
Dmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookupResourceGatherKmodel_5_token_and_position_embedding_5_embedding_10_embedding_lookup_168527input_6*
Tindices0*^
_classT
RPloc:@model_5/token_and_position_embedding_5/embedding_10/embedding_lookup/168527*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0»
Mmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup/IdentityIdentityMmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup:output:0*
T0*^
_classT
RPloc:@model_5/token_and_position_embedding_5/embedding_10/embedding_lookup/168527*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ау
Omodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1IdentityVmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АІ
*model_5/token_and_position_embedding_5/addAddV2Xmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1:output:0Xmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АН
!model_5/transformer_block_5/ShapeShape.model_5/token_and_position_embedding_5/add:z:0*
T0*
_output_shapes
::нѕy
/model_5/transformer_block_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_5/transformer_block_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_5/transformer_block_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)model_5/transformer_block_5/strided_sliceStridedSlice*model_5/transformer_block_5/Shape:output:08model_5/transformer_block_5/strided_slice/stack:output:0:model_5/transformer_block_5/strided_slice/stack_1:output:0:model_5/transformer_block_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_5/transformer_block_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_5/transformer_block_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_5/transformer_block_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
+model_5/transformer_block_5/strided_slice_1StridedSlice*model_5/transformer_block_5/Shape:output:0:model_5/transformer_block_5/strided_slice_1/stack:output:0<model_5/transformer_block_5/strided_slice_1/stack_1:output:0<model_5/transformer_block_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'model_5/transformer_block_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : i
'model_5/transformer_block_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :й
!model_5/transformer_block_5/rangeRange0model_5/transformer_block_5/range/start:output:04model_5/transformer_block_5/strided_slice_1:output:00model_5/transformer_block_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€В
1model_5/transformer_block_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        Д
3model_5/transformer_block_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Д
3model_5/transformer_block_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
+model_5/transformer_block_5/strided_slice_2StridedSlice*model_5/transformer_block_5/range:output:0:model_5/transformer_block_5/strided_slice_2/stack:output:0<model_5/transformer_block_5/strided_slice_2/stack_1:output:0<model_5/transformer_block_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskk
)model_5/transformer_block_5/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : k
)model_5/transformer_block_5/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :п
#model_5/transformer_block_5/range_1Range2model_5/transformer_block_5/range_1/start:output:04model_5/transformer_block_5/strided_slice_1:output:02model_5/transformer_block_5/range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€Є
model_5/transformer_block_5/subSub,model_5/transformer_block_5/range_1:output:04model_5/transformer_block_5/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€±
model_5/transformer_block_5/addAddV2#model_5/transformer_block_5/sub:z:04model_5/transformer_block_5/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€ќ
(model_5/transformer_block_5/GreaterEqualGreaterEqual4model_5/transformer_block_5/strided_slice_2:output:0#model_5/transformer_block_5/add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€m
+model_5/transformer_block_5/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Б
)model_5/transformer_block_5/Reshape/shapePack4model_5/transformer_block_5/Reshape/shape/0:output:04model_5/transformer_block_5/strided_slice_1:output:04model_5/transformer_block_5/strided_slice_1:output:0*
N*
T0*
_output_shapes
:ѕ
#model_5/transformer_block_5/ReshapeReshape,model_5/transformer_block_5/GreaterEqual:z:02model_5/transformer_block_5/Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€u
*model_5/transformer_block_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€¬
&model_5/transformer_block_5/ExpandDims
ExpandDims2model_5/transformer_block_5/strided_slice:output:03model_5/transformer_block_5/ExpandDims/dim:output:0*
T0*
_output_shapes
:r
!model_5/transformer_block_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
'model_5/transformer_block_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : л
"model_5/transformer_block_5/concatConcatV2/model_5/transformer_block_5/ExpandDims:output:0*model_5/transformer_block_5/Const:output:00model_5/transformer_block_5/concat/axis:output:0*
N*
T0*
_output_shapes
:Ћ
 model_5/transformer_block_5/TileTile,model_5/transformer_block_5/Reshape:output:0+model_5/transformer_block_5/concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€ъ
Umodel_5/transformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOp^model_5_transformer_block_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0…
Fmodel_5/transformer_block_5/multi_head_attention_5/query/einsum/EinsumEinsum.model_5/token_and_position_embedding_5/add:z:0]model_5/transformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeб
Kmodel_5/transformer_block_5/multi_head_attention_5/query/add/ReadVariableOpReadVariableOpTmodel_5_transformer_block_5_multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0ѓ
<model_5/transformer_block_5/multi_head_attention_5/query/addAddV2Omodel_5/transformer_block_5/multi_head_attention_5/query/einsum/Einsum:output:0Smodel_5/transformer_block_5/multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Ац
Smodel_5/transformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp\model_5_transformer_block_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≈
Dmodel_5/transformer_block_5/multi_head_attention_5/key/einsum/EinsumEinsum.model_5/token_and_position_embedding_5/add:z:0[model_5/transformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeЁ
Imodel_5/transformer_block_5/multi_head_attention_5/key/add/ReadVariableOpReadVariableOpRmodel_5_transformer_block_5_multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0©
:model_5/transformer_block_5/multi_head_attention_5/key/addAddV2Mmodel_5/transformer_block_5/multi_head_attention_5/key/einsum/Einsum:output:0Qmodel_5/transformer_block_5/multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аъ
Umodel_5/transformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOp^model_5_transformer_block_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0…
Fmodel_5/transformer_block_5/multi_head_attention_5/value/einsum/EinsumEinsum.model_5/token_and_position_embedding_5/add:z:0]model_5/transformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeб
Kmodel_5/transformer_block_5/multi_head_attention_5/value/add/ReadVariableOpReadVariableOpTmodel_5_transformer_block_5_multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0ѓ
<model_5/transformer_block_5/multi_head_attention_5/value/addAddV2Omodel_5/transformer_block_5/multi_head_attention_5/value/einsum/Einsum:output:0Smodel_5/transformer_block_5/multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А}
8model_5/transformer_block_5/multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=Ж
6model_5/transformer_block_5/multi_head_attention_5/MulMul@model_5/transformer_block_5/multi_head_attention_5/query/add:z:0Amodel_5/transformer_block_5/multi_head_attention_5/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЇ
@model_5/transformer_block_5/multi_head_attention_5/einsum/EinsumEinsum>model_5/transformer_block_5/multi_head_attention_5/key/add:z:0:model_5/transformer_block_5/multi_head_attention_5/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeМ
Amodel_5/transformer_block_5/multi_head_attention_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€О
=model_5/transformer_block_5/multi_head_attention_5/ExpandDims
ExpandDims)model_5/transformer_block_5/Tile:output:0Jmodel_5/transformer_block_5/multi_head_attention_5/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€к
?model_5/transformer_block_5/multi_head_attention_5/softmax/CastCastFmodel_5/transformer_block_5/multi_head_attention_5/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Е
@model_5/transformer_block_5/multi_head_attention_5/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?°
>model_5/transformer_block_5/multi_head_attention_5/softmax/subSubImodel_5/transformer_block_5/multi_head_attention_5/softmax/sub/x:output:0Cmodel_5/transformer_block_5/multi_head_attention_5/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Е
@model_5/transformer_block_5/multi_head_attention_5/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќ†
>model_5/transformer_block_5/multi_head_attention_5/softmax/mulMulBmodel_5/transformer_block_5/multi_head_attention_5/softmax/sub:z:0Imodel_5/transformer_block_5/multi_head_attention_5/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Ґ
>model_5/transformer_block_5/multi_head_attention_5/softmax/addAddV2Imodel_5/transformer_block_5/multi_head_attention_5/einsum/Einsum:output:0Bmodel_5/transformer_block_5/multi_head_attention_5/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Ё
Bmodel_5/transformer_block_5/multi_head_attention_5/softmax/SoftmaxSoftmaxBmodel_5/transformer_block_5/multi_head_attention_5/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€й
Cmodel_5/transformer_block_5/multi_head_attention_5/dropout/IdentityIdentityLmodel_5/transformer_block_5/multi_head_attention_5/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€»
Bmodel_5/transformer_block_5/multi_head_attention_5/einsum_1/EinsumEinsumLmodel_5/transformer_block_5/multi_head_attention_5/dropout/Identity:output:0@model_5/transformer_block_5/multi_head_attention_5/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdР
`model_5/transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpimodel_5_transformer_block_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0ш
Qmodel_5/transformer_block_5/multi_head_attention_5/attention_output/einsum/EinsumEinsumKmodel_5/transformer_block_5/multi_head_attention_5/einsum_1/Einsum:output:0hmodel_5/transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeу
Vmodel_5/transformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOp_model_5_transformer_block_5_multi_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0ћ
Gmodel_5/transformer_block_5/multi_head_attention_5/attention_output/addAddV2Zmodel_5/transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum:output:0^model_5/transformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А»
/model_5/transformer_block_5/dropout_10/IdentityIdentityKmodel_5/transformer_block_5/multi_head_attention_5/attention_output/add:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А‘
!model_5/transformer_block_5/add_1AddV2.model_5/token_and_position_embedding_5/add:z:08model_5/transformer_block_5/dropout_10/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ
Qmodel_5/transformer_block_5/layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ъ
?model_5/transformer_block_5/layer_normalization_10/moments/meanMean%model_5/transformer_block_5/add_1:z:0Zmodel_5/transformer_block_5/layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(а
Gmodel_5/transformer_block_5/layer_normalization_10/moments/StopGradientStopGradientHmodel_5/transformer_block_5/layer_normalization_10/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ъ
Lmodel_5/transformer_block_5/layer_normalization_10/moments/SquaredDifferenceSquaredDifference%model_5/transformer_block_5/add_1:z:0Pmodel_5/transformer_block_5/layer_normalization_10/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЯ
Umodel_5/transformer_block_5/layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ќ
Cmodel_5/transformer_block_5/layer_normalization_10/moments/varianceMeanPmodel_5/transformer_block_5/layer_normalization_10/moments/SquaredDifference:z:0^model_5/transformer_block_5/layer_normalization_10/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(З
Bmodel_5/transformer_block_5/layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5£
@model_5/transformer_block_5/layer_normalization_10/batchnorm/addAddV2Lmodel_5/transformer_block_5/layer_normalization_10/moments/variance:output:0Kmodel_5/transformer_block_5/layer_normalization_10/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€–
Bmodel_5/transformer_block_5/layer_normalization_10/batchnorm/RsqrtRsqrtDmodel_5/transformer_block_5/layer_normalization_10/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€е
Omodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpXmodel_5_transformer_block_5_layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0®
@model_5/transformer_block_5/layer_normalization_10/batchnorm/mulMulFmodel_5/transformer_block_5/layer_normalization_10/batchnorm/Rsqrt:y:0Wmodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ац
Bmodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul_1Mul%model_5/transformer_block_5/add_1:z:0Dmodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЩ
Bmodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul_2MulHmodel_5/transformer_block_5/layer_normalization_10/moments/mean:output:0Dmodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЁ
Kmodel_5/transformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOpTmodel_5_transformer_block_5_layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0§
@model_5/transformer_block_5/layer_normalization_10/batchnorm/subSubSmodel_5/transformer_block_5/layer_normalization_10/batchnorm/ReadVariableOp:value:0Fmodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЩ
Bmodel_5/transformer_block_5/layer_normalization_10/batchnorm/add_1AddV2Fmodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul_1:z:0Dmodel_5/transformer_block_5/layer_normalization_10/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А∆
=model_5/transformer_block_5/dense_15/Tensordot/ReadVariableOpReadVariableOpFmodel_5_transformer_block_5_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0}
3model_5/transformer_block_5/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Д
3model_5/transformer_block_5/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Є
4model_5/transformer_block_5/dense_15/Tensordot/ShapeShapeFmodel_5/transformer_block_5/layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕ~
<model_5/transformer_block_5/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ѕ
7model_5/transformer_block_5/dense_15/Tensordot/GatherV2GatherV2=model_5/transformer_block_5/dense_15/Tensordot/Shape:output:0<model_5/transformer_block_5/dense_15/Tensordot/free:output:0Emodel_5/transformer_block_5/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:А
>model_5/transformer_block_5/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ”
9model_5/transformer_block_5/dense_15/Tensordot/GatherV2_1GatherV2=model_5/transformer_block_5/dense_15/Tensordot/Shape:output:0<model_5/transformer_block_5/dense_15/Tensordot/axes:output:0Gmodel_5/transformer_block_5/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4model_5/transformer_block_5/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ё
3model_5/transformer_block_5/dense_15/Tensordot/ProdProd@model_5/transformer_block_5/dense_15/Tensordot/GatherV2:output:0=model_5/transformer_block_5/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: А
6model_5/transformer_block_5/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: г
5model_5/transformer_block_5/dense_15/Tensordot/Prod_1ProdBmodel_5/transformer_block_5/dense_15/Tensordot/GatherV2_1:output:0?model_5/transformer_block_5/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:model_5/transformer_block_5/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ∞
5model_5/transformer_block_5/dense_15/Tensordot/concatConcatV2<model_5/transformer_block_5/dense_15/Tensordot/free:output:0<model_5/transformer_block_5/dense_15/Tensordot/axes:output:0Cmodel_5/transformer_block_5/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:и
4model_5/transformer_block_5/dense_15/Tensordot/stackPack<model_5/transformer_block_5/dense_15/Tensordot/Prod:output:0>model_5/transformer_block_5/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Н
8model_5/transformer_block_5/dense_15/Tensordot/transpose	TransposeFmodel_5/transformer_block_5/layer_normalization_10/batchnorm/add_1:z:0>model_5/transformer_block_5/dense_15/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ащ
6model_5/transformer_block_5/dense_15/Tensordot/ReshapeReshape<model_5/transformer_block_5/dense_15/Tensordot/transpose:y:0=model_5/transformer_block_5/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ъ
5model_5/transformer_block_5/dense_15/Tensordot/MatMulMatMul?model_5/transformer_block_5/dense_15/Tensordot/Reshape:output:0Emodel_5/transformer_block_5/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
6model_5/transformer_block_5/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:А~
<model_5/transformer_block_5/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
7model_5/transformer_block_5/dense_15/Tensordot/concat_1ConcatV2@model_5/transformer_block_5/dense_15/Tensordot/GatherV2:output:0?model_5/transformer_block_5/dense_15/Tensordot/Const_2:output:0Emodel_5/transformer_block_5/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ь
.model_5/transformer_block_5/dense_15/TensordotReshape?model_5/transformer_block_5/dense_15/Tensordot/MatMul:product:0@model_5/transformer_block_5/dense_15/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аљ
;model_5/transformer_block_5/dense_15/BiasAdd/ReadVariableOpReadVariableOpDmodel_5_transformer_block_5_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0х
,model_5/transformer_block_5/dense_15/BiasAddBiasAdd7model_5/transformer_block_5/dense_15/Tensordot:output:0Cmodel_5/transformer_block_5/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А®
)model_5/transformer_block_5/dense_15/ReluRelu5model_5/transformer_block_5/dense_15/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А∆
=model_5/transformer_block_5/dense_16/Tensordot/ReadVariableOpReadVariableOpFmodel_5_transformer_block_5_dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0}
3model_5/transformer_block_5/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Д
3model_5/transformer_block_5/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
4model_5/transformer_block_5/dense_16/Tensordot/ShapeShape7model_5/transformer_block_5/dense_15/Relu:activations:0*
T0*
_output_shapes
::нѕ~
<model_5/transformer_block_5/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ѕ
7model_5/transformer_block_5/dense_16/Tensordot/GatherV2GatherV2=model_5/transformer_block_5/dense_16/Tensordot/Shape:output:0<model_5/transformer_block_5/dense_16/Tensordot/free:output:0Emodel_5/transformer_block_5/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:А
>model_5/transformer_block_5/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ”
9model_5/transformer_block_5/dense_16/Tensordot/GatherV2_1GatherV2=model_5/transformer_block_5/dense_16/Tensordot/Shape:output:0<model_5/transformer_block_5/dense_16/Tensordot/axes:output:0Gmodel_5/transformer_block_5/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4model_5/transformer_block_5/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ё
3model_5/transformer_block_5/dense_16/Tensordot/ProdProd@model_5/transformer_block_5/dense_16/Tensordot/GatherV2:output:0=model_5/transformer_block_5/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: А
6model_5/transformer_block_5/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: г
5model_5/transformer_block_5/dense_16/Tensordot/Prod_1ProdBmodel_5/transformer_block_5/dense_16/Tensordot/GatherV2_1:output:0?model_5/transformer_block_5/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:model_5/transformer_block_5/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ∞
5model_5/transformer_block_5/dense_16/Tensordot/concatConcatV2<model_5/transformer_block_5/dense_16/Tensordot/free:output:0<model_5/transformer_block_5/dense_16/Tensordot/axes:output:0Cmodel_5/transformer_block_5/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:и
4model_5/transformer_block_5/dense_16/Tensordot/stackPack<model_5/transformer_block_5/dense_16/Tensordot/Prod:output:0>model_5/transformer_block_5/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ю
8model_5/transformer_block_5/dense_16/Tensordot/transpose	Transpose7model_5/transformer_block_5/dense_15/Relu:activations:0>model_5/transformer_block_5/dense_16/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ащ
6model_5/transformer_block_5/dense_16/Tensordot/ReshapeReshape<model_5/transformer_block_5/dense_16/Tensordot/transpose:y:0=model_5/transformer_block_5/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ъ
5model_5/transformer_block_5/dense_16/Tensordot/MatMulMatMul?model_5/transformer_block_5/dense_16/Tensordot/Reshape:output:0Emodel_5/transformer_block_5/dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
6model_5/transformer_block_5/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:А~
<model_5/transformer_block_5/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
7model_5/transformer_block_5/dense_16/Tensordot/concat_1ConcatV2@model_5/transformer_block_5/dense_16/Tensordot/GatherV2:output:0?model_5/transformer_block_5/dense_16/Tensordot/Const_2:output:0Emodel_5/transformer_block_5/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ь
.model_5/transformer_block_5/dense_16/TensordotReshape?model_5/transformer_block_5/dense_16/Tensordot/MatMul:product:0@model_5/transformer_block_5/dense_16/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аљ
;model_5/transformer_block_5/dense_16/BiasAdd/ReadVariableOpReadVariableOpDmodel_5_transformer_block_5_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0х
,model_5/transformer_block_5/dense_16/BiasAddBiasAdd7model_5/transformer_block_5/dense_16/Tensordot:output:0Cmodel_5/transformer_block_5/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≤
/model_5/transformer_block_5/dropout_11/IdentityIdentity5model_5/transformer_block_5/dense_16/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ам
!model_5/transformer_block_5/add_2AddV2Fmodel_5/transformer_block_5/layer_normalization_10/batchnorm/add_1:z:08model_5/transformer_block_5/dropout_11/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ
Qmodel_5/transformer_block_5/layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ъ
?model_5/transformer_block_5/layer_normalization_11/moments/meanMean%model_5/transformer_block_5/add_2:z:0Zmodel_5/transformer_block_5/layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(а
Gmodel_5/transformer_block_5/layer_normalization_11/moments/StopGradientStopGradientHmodel_5/transformer_block_5/layer_normalization_11/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ъ
Lmodel_5/transformer_block_5/layer_normalization_11/moments/SquaredDifferenceSquaredDifference%model_5/transformer_block_5/add_2:z:0Pmodel_5/transformer_block_5/layer_normalization_11/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЯ
Umodel_5/transformer_block_5/layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ќ
Cmodel_5/transformer_block_5/layer_normalization_11/moments/varianceMeanPmodel_5/transformer_block_5/layer_normalization_11/moments/SquaredDifference:z:0^model_5/transformer_block_5/layer_normalization_11/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(З
Bmodel_5/transformer_block_5/layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5£
@model_5/transformer_block_5/layer_normalization_11/batchnorm/addAddV2Lmodel_5/transformer_block_5/layer_normalization_11/moments/variance:output:0Kmodel_5/transformer_block_5/layer_normalization_11/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€–
Bmodel_5/transformer_block_5/layer_normalization_11/batchnorm/RsqrtRsqrtDmodel_5/transformer_block_5/layer_normalization_11/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€е
Omodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpXmodel_5_transformer_block_5_layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0®
@model_5/transformer_block_5/layer_normalization_11/batchnorm/mulMulFmodel_5/transformer_block_5/layer_normalization_11/batchnorm/Rsqrt:y:0Wmodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ац
Bmodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul_1Mul%model_5/transformer_block_5/add_2:z:0Dmodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЩ
Bmodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul_2MulHmodel_5/transformer_block_5/layer_normalization_11/moments/mean:output:0Dmodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЁ
Kmodel_5/transformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOpTmodel_5_transformer_block_5_layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0§
@model_5/transformer_block_5/layer_normalization_11/batchnorm/subSubSmodel_5/transformer_block_5/layer_normalization_11/batchnorm/ReadVariableOp:value:0Fmodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЩ
Bmodel_5/transformer_block_5/layer_normalization_11/batchnorm/add_1AddV2Fmodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul_1:z:0Dmodel_5/transformer_block_5/layer_normalization_11/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЮ
)model_5/dense_17/Tensordot/ReadVariableOpReadVariableOp2model_5_dense_17_tensordot_readvariableop_resource* 
_output_shapes
:
АРN*
dtype0i
model_5/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
model_5/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       §
 model_5/dense_17/Tensordot/ShapeShapeFmodel_5/transformer_block_5/layer_normalization_11/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕj
(model_5/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : €
#model_5/dense_17/Tensordot/GatherV2GatherV2)model_5/dense_17/Tensordot/Shape:output:0(model_5/dense_17/Tensordot/free:output:01model_5/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*model_5/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
%model_5/dense_17/Tensordot/GatherV2_1GatherV2)model_5/dense_17/Tensordot/Shape:output:0(model_5/dense_17/Tensordot/axes:output:03model_5/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 model_5/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
model_5/dense_17/Tensordot/ProdProd,model_5/dense_17/Tensordot/GatherV2:output:0)model_5/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"model_5/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: І
!model_5/dense_17/Tensordot/Prod_1Prod.model_5/dense_17/Tensordot/GatherV2_1:output:0+model_5/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&model_5/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : а
!model_5/dense_17/Tensordot/concatConcatV2(model_5/dense_17/Tensordot/free:output:0(model_5/dense_17/Tensordot/axes:output:0/model_5/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ђ
 model_5/dense_17/Tensordot/stackPack(model_5/dense_17/Tensordot/Prod:output:0*model_5/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:е
$model_5/dense_17/Tensordot/transpose	TransposeFmodel_5/transformer_block_5/layer_normalization_11/batchnorm/add_1:z:0*model_5/dense_17/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аљ
"model_5/dense_17/Tensordot/ReshapeReshape(model_5/dense_17/Tensordot/transpose:y:0)model_5/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Њ
!model_5/dense_17/Tensordot/MatMulMatMul+model_5/dense_17/Tensordot/Reshape:output:01model_5/dense_17/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РNm
"model_5/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:РNj
(model_5/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : л
#model_5/dense_17/Tensordot/concat_1ConcatV2,model_5/dense_17/Tensordot/GatherV2:output:0+model_5/dense_17/Tensordot/Const_2:output:01model_5/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ј
model_5/dense_17/TensordotReshape+model_5/dense_17/Tensordot/MatMul:product:0,model_5/dense_17/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNХ
'model_5/dense_17/BiasAdd/ReadVariableOpReadVariableOp0model_5_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:РN*
dtype0є
model_5/dense_17/BiasAddBiasAdd#model_5/dense_17/Tensordot:output:0/model_5/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЖ
model_5/dense_17/SoftmaxSoftmax!model_5/dense_17/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РN
IdentityIdentity"model_5/dense_17/Softmax:softmax:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЈ

Identity_1IdentityLmodel_5/transformer_block_5/multi_head_attention_5/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Р
NoOpNoOp(^model_5/dense_17/BiasAdd/ReadVariableOp*^model_5/dense_17/Tensordot/ReadVariableOpE^model_5/token_and_position_embedding_5/embedding_10/embedding_lookupE^model_5/token_and_position_embedding_5/embedding_11/embedding_lookup<^model_5/transformer_block_5/dense_15/BiasAdd/ReadVariableOp>^model_5/transformer_block_5/dense_15/Tensordot/ReadVariableOp<^model_5/transformer_block_5/dense_16/BiasAdd/ReadVariableOp>^model_5/transformer_block_5/dense_16/Tensordot/ReadVariableOpL^model_5/transformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpP^model_5/transformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpL^model_5/transformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpP^model_5/transformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpW^model_5/transformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpa^model_5/transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpJ^model_5/transformer_block_5/multi_head_attention_5/key/add/ReadVariableOpT^model_5/transformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpL^model_5/transformer_block_5/multi_head_attention_5/query/add/ReadVariableOpV^model_5/transformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpL^model_5/transformer_block_5/multi_head_attention_5/value/add/ReadVariableOpV^model_5/transformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 2R
'model_5/dense_17/BiasAdd/ReadVariableOp'model_5/dense_17/BiasAdd/ReadVariableOp2V
)model_5/dense_17/Tensordot/ReadVariableOp)model_5/dense_17/Tensordot/ReadVariableOp2М
Dmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookupDmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup2М
Dmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookupDmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup2z
;model_5/transformer_block_5/dense_15/BiasAdd/ReadVariableOp;model_5/transformer_block_5/dense_15/BiasAdd/ReadVariableOp2~
=model_5/transformer_block_5/dense_15/Tensordot/ReadVariableOp=model_5/transformer_block_5/dense_15/Tensordot/ReadVariableOp2z
;model_5/transformer_block_5/dense_16/BiasAdd/ReadVariableOp;model_5/transformer_block_5/dense_16/BiasAdd/ReadVariableOp2~
=model_5/transformer_block_5/dense_16/Tensordot/ReadVariableOp=model_5/transformer_block_5/dense_16/Tensordot/ReadVariableOp2Ъ
Kmodel_5/transformer_block_5/layer_normalization_10/batchnorm/ReadVariableOpKmodel_5/transformer_block_5/layer_normalization_10/batchnorm/ReadVariableOp2Ґ
Omodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOpOmodel_5/transformer_block_5/layer_normalization_10/batchnorm/mul/ReadVariableOp2Ъ
Kmodel_5/transformer_block_5/layer_normalization_11/batchnorm/ReadVariableOpKmodel_5/transformer_block_5/layer_normalization_11/batchnorm/ReadVariableOp2Ґ
Omodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOpOmodel_5/transformer_block_5/layer_normalization_11/batchnorm/mul/ReadVariableOp2∞
Vmodel_5/transformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOpVmodel_5/transformer_block_5/multi_head_attention_5/attention_output/add/ReadVariableOp2ƒ
`model_5/transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp`model_5/transformer_block_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2Ц
Imodel_5/transformer_block_5/multi_head_attention_5/key/add/ReadVariableOpImodel_5/transformer_block_5/multi_head_attention_5/key/add/ReadVariableOp2™
Smodel_5/transformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpSmodel_5/transformer_block_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2Ъ
Kmodel_5/transformer_block_5/multi_head_attention_5/query/add/ReadVariableOpKmodel_5/transformer_block_5/multi_head_attention_5/query/add/ReadVariableOp2Ѓ
Umodel_5/transformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpUmodel_5/transformer_block_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2Ъ
Kmodel_5/transformer_block_5/multi_head_attention_5/value/add/ReadVariableOpKmodel_5/transformer_block_5/multi_head_attention_5/value/add/ReadVariableOp2Ѓ
Umodel_5/transformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpUmodel_5/transformer_block_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_6
Ф
Ѓ
?__inference_token_and_position_embedding_5_layer_call_fn_170208
x
unknown:	PА
	unknown_0:
РNА
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *c
f^R\
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_168751}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
0
_output_shapes
:€€€€€€€€€€€€€€€€€€

_user_specified_namex
Ъ
…
(__inference_model_5_layer_call_fn_169421
input_6
unknown:	PА
	unknown_0:
РNА!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АРN

unknown_18:	РN
identity

identity_1ИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€РN:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_169376}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЛ

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_6
еЏ
ф
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_170657

inputsZ
Bmulti_head_attention_5_query_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_5_query_add_readvariableop_resource:	АX
@multi_head_attention_5_key_einsum_einsum_readvariableop_resource:ААI
6multi_head_attention_5_key_add_readvariableop_resource:	АZ
Bmulti_head_attention_5_value_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_5_value_add_readvariableop_resource:	Аe
Mmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:ААR
Cmulti_head_attention_5_attention_output_add_readvariableop_resource:	АK
<layer_normalization_10_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_10_batchnorm_readvariableop_resource:	А>
*dense_15_tensordot_readvariableop_resource:
АА7
(dense_15_biasadd_readvariableop_resource:	А>
*dense_16_tensordot_readvariableop_resource:
АА7
(dense_16_biasadd_readvariableop_resource:	АK
<layer_normalization_11_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_11_batchnorm_readvariableop_resource:	А
identity

identity_1ИҐdense_15/BiasAdd/ReadVariableOpҐ!dense_15/Tensordot/ReadVariableOpҐdense_16/BiasAdd/ReadVariableOpҐ!dense_16/Tensordot/ReadVariableOpҐ/layer_normalization_10/batchnorm/ReadVariableOpҐ3layer_normalization_10/batchnorm/mul/ReadVariableOpҐ/layer_normalization_11/batchnorm/ReadVariableOpҐ3layer_normalization_11/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_5/attention_output/add/ReadVariableOpҐDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_5/key/add/ReadVariableOpҐ7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_5/query/add/ReadVariableOpҐ9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_5/value/add/ReadVariableOpҐ9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Й
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :С
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€¬
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_5/query/einsum/EinsumEinsuminputsAmulti_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_5/query/add/ReadVariableOpReadVariableOp8multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_5/query/addAddV23multi_head_attention_5/query/einsum/Einsum:output:07multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЊ
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_5_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0е
(multi_head_attention_5/key/einsum/EinsumEinsuminputs?multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde•
-multi_head_attention_5/key/add/ReadVariableOpReadVariableOp6multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0’
multi_head_attention_5/key/addAddV21multi_head_attention_5/key/einsum/Einsum:output:05multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А¬
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_5/value/einsum/EinsumEinsuminputsAmulti_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_5/value/add/ReadVariableOpReadVariableOp8multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_5/value/addAddV23multi_head_attention_5/value/einsum/Einsum:output:07multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аa
multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=≤
multi_head_attention_5/MulMul$multi_head_attention_5/query/add:z:0%multi_head_attention_5/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
$multi_head_attention_5/einsum/EinsumEinsum"multi_head_attention_5/key/add:z:0multi_head_attention_5/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbep
%multi_head_attention_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ї
!multi_head_attention_5/ExpandDims
ExpandDimsTile:output:0.multi_head_attention_5/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≤
#multi_head_attention_5/softmax/CastCast*multi_head_attention_5/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_5/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ќ
"multi_head_attention_5/softmax/subSub-multi_head_attention_5/softmax/sub/x:output:0'multi_head_attention_5/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_5/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќћ
"multi_head_attention_5/softmax/mulMul&multi_head_attention_5/softmax/sub:z:0-multi_head_attention_5/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ќ
"multi_head_attention_5/softmax/addAddV2-multi_head_attention_5/einsum/Einsum:output:0&multi_head_attention_5/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
&multi_head_attention_5/softmax/SoftmaxSoftmax&multi_head_attention_5/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€±
'multi_head_attention_5/dropout/IdentityIdentity0multi_head_attention_5/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
&multi_head_attention_5/einsum_1/EinsumEinsum0multi_head_attention_5/dropout/Identity:output:0$multi_head_attention_5/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdЎ
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0§
5multi_head_attention_5/attention_output/einsum/EinsumEinsum/multi_head_attention_5/einsum_1/Einsum:output:0Lmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeї
:multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
+multi_head_attention_5/attention_output/addAddV2>multi_head_attention_5/attention_output/einsum/Einsum:output:0Bmulti_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АР
dropout_10/IdentityIdentity/multi_head_attention_5/attention_output/add:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аt
add_1AddV2inputsdropout_10/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
5layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:∆
#layer_normalization_10/moments/meanMean	add_1:z:0>layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(®
+layer_normalization_10/moments/StopGradientStopGradient,layer_normalization_10/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€∆
0layer_normalization_10/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_10/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
9layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:щ
'layer_normalization_10/moments/varianceMean4layer_normalization_10/moments/SquaredDifference:z:0Blayer_normalization_10/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(k
&layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ѕ
$layer_normalization_10/batchnorm/addAddV20layer_normalization_10/moments/variance:output:0/layer_normalization_10/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ш
&layer_normalization_10/batchnorm/RsqrtRsqrt(layer_normalization_10/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€≠
3layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
$layer_normalization_10/batchnorm/mulMul*layer_normalization_10/batchnorm/Rsqrt:y:0;layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
&layer_normalization_10/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_10/batchnorm/mul_2Mul,layer_normalization_10/moments/mean:output:0(layer_normalization_10/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0–
$layer_normalization_10/batchnorm/subSub7layer_normalization_10/batchnorm/ReadVariableOp:value:0*layer_normalization_10/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_10/batchnorm/add_1AddV2*layer_normalization_10/batchnorm/mul_1:z:0(layer_normalization_10/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_15/Tensordot/ReadVariableOpReadVariableOp*dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       А
dense_15/Tensordot/ShapeShape*layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕb
 dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_15/Tensordot/GatherV2GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/free:output:0)dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_15/Tensordot/GatherV2_1GatherV2!dense_15/Tensordot/Shape:output:0 dense_15/Tensordot/axes:output:0+dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_15/Tensordot/ProdProd$dense_15/Tensordot/GatherV2:output:0!dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_15/Tensordot/Prod_1Prod&dense_15/Tensordot/GatherV2_1:output:0#dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_15/Tensordot/concatConcatV2 dense_15/Tensordot/free:output:0 dense_15/Tensordot/axes:output:0'dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_15/Tensordot/stackPack dense_15/Tensordot/Prod:output:0"dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:є
dense_15/Tensordot/transpose	Transpose*layer_normalization_10/batchnorm/add_1:z:0"dense_15/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_15/Tensordot/ReshapeReshape dense_15/Tensordot/transpose:y:0!dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_15/Tensordot/MatMulMatMul#dense_15/Tensordot/Reshape:output:0)dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_15/Tensordot/concat_1ConcatV2$dense_15/Tensordot/GatherV2:output:0#dense_15/Tensordot/Const_2:output:0)dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_15/TensordotReshape#dense_15/Tensordot/MatMul:product:0$dense_15/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_15/BiasAddBiasAdddense_15/Tensordot:output:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аp
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АО
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
dense_16/Tensordot/ShapeShapedense_15/Relu:activations:0*
T0*
_output_shapes
::нѕb
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:™
dense_16/Tensordot/transpose	Transposedense_15/Relu:activations:0"dense_16/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аz
dropout_11/IdentityIdentitydense_16/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АШ
add_2AddV2*layer_normalization_10/batchnorm/add_1:z:0dropout_11/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
5layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:∆
#layer_normalization_11/moments/meanMean	add_2:z:0>layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(®
+layer_normalization_11/moments/StopGradientStopGradient,layer_normalization_11/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€∆
0layer_normalization_11/moments/SquaredDifferenceSquaredDifference	add_2:z:04layer_normalization_11/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
9layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:щ
'layer_normalization_11/moments/varianceMean4layer_normalization_11/moments/SquaredDifference:z:0Blayer_normalization_11/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(k
&layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ѕ
$layer_normalization_11/batchnorm/addAddV20layer_normalization_11/moments/variance:output:0/layer_normalization_11/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ш
&layer_normalization_11/batchnorm/RsqrtRsqrt(layer_normalization_11/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€≠
3layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
$layer_normalization_11/batchnorm/mulMul*layer_normalization_11/batchnorm/Rsqrt:y:0;layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
&layer_normalization_11/batchnorm/mul_1Mul	add_2:z:0(layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_11/batchnorm/mul_2Mul,layer_normalization_11/moments/mean:output:0(layer_normalization_11/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0–
$layer_normalization_11/batchnorm/subSub7layer_normalization_11/batchnorm/ReadVariableOp:value:0*layer_normalization_11/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≈
&layer_normalization_11/batchnorm/add_1AddV2*layer_normalization_11/batchnorm/mul_1:z:0(layer_normalization_11/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЗ
IdentityIdentity*layer_normalization_11/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ

Identity_1Identity0multi_head_attention_5/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€м
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp"^dense_15/Tensordot/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp0^layer_normalization_10/batchnorm/ReadVariableOp4^layer_normalization_10/batchnorm/mul/ReadVariableOp0^layer_normalization_11/batchnorm/ReadVariableOp4^layer_normalization_11/batchnorm/mul/ReadVariableOp;^multi_head_attention_5/attention_output/add/ReadVariableOpE^multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_5/key/add/ReadVariableOp8^multi_head_attention_5/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/query/add/ReadVariableOp:^multi_head_attention_5/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/value/add/ReadVariableOp:^multi_head_attention_5/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2F
!dense_15/Tensordot/ReadVariableOp!dense_15/Tensordot/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2b
/layer_normalization_10/batchnorm/ReadVariableOp/layer_normalization_10/batchnorm/ReadVariableOp2j
3layer_normalization_10/batchnorm/mul/ReadVariableOp3layer_normalization_10/batchnorm/mul/ReadVariableOp2b
/layer_normalization_11/batchnorm/ReadVariableOp/layer_normalization_11/batchnorm/ReadVariableOp2j
3layer_normalization_11/batchnorm/mul/ReadVariableOp3layer_normalization_11/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_5/attention_output/add/ReadVariableOp:multi_head_attention_5/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_5/key/add/ReadVariableOp-multi_head_attention_5/key/add/ReadVariableOp2r
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/query/add/ReadVariableOp/multi_head_attention_5/query/add/ReadVariableOp2v
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/value/add/ReadVariableOp/multi_head_attention_5/value/add/ReadVariableOp2v
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ф
≈
$__inference_signature_wrapper_169665
input_6
unknown:	PА
	unknown_0:
РNА!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АРN

unknown_18:	РN
identity

identity_1ИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€РN:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_168724}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNЛ

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_6
Ж
ю
D__inference_dense_17_layer_call_and_return_conditional_losses_169004

inputs5
!tensordot_readvariableop_resource:
АРN.
biasadd_readvariableop_resource:	РN
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
АРN*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Г
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РN\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:РNY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Н
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:РN*
dtype0Ж
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNd
SoftmaxSoftmaxBiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNn
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€РNz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
€
Џ
4__inference_transformer_block_5_layer_call_fn_170270

inputs
unknown:АА
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А

unknown_14:	А
identity

identity_1ИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_168938}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЛ

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs"у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*•
serving_defaultС
D
input_69
serving_default_input_6:0€€€€€€€€€€€€€€€€€€J
dense_17>
StatefulPartitionedCall:0€€€€€€€€€€€€€€€€€€РNa
transformer_block_5J
StatefulPartitionedCall:1+€€€€€€€€€€€€€€€€€€€€€€€€€€€tensorflow/serving/predict:ђЄ
п
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb"
_tf_keras_layer
ч
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
attn
	dropout_1
ln_1
	 ffn_1
	!ffn_2
"	dropout_2
#ln_2"
_tf_keras_layer
ї
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
ґ
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
*18
+19"
trackable_list_wrapper
ґ
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
*18
+19"
trackable_list_wrapper
 "
trackable_list_wrapper
 
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
Ћ
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32а
(__inference_model_5_layer_call_fn_169325
(__inference_model_5_layer_call_fn_169421
(__inference_model_5_layer_call_fn_169712
(__inference_model_5_layer_call_fn_169759µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
Ј
Gtrace_0
Htrace_1
Itrace_2
Jtrace_32ћ
C__inference_model_5_layer_call_and_return_conditional_losses_169012
C__inference_model_5_layer_call_and_return_conditional_losses_169228
C__inference_model_5_layer_call_and_return_conditional_losses_169986
C__inference_model_5_layer_call_and_return_conditional_losses_170199µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
ћB…
!__inference__wrapped_model_168724input_6"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
K
_variables
L_iterations
M_learning_rate
N_index_dict
O
_momentums
P_velocities
Q_update_step_xla"
experimentalOptimizer
 "
trackable_list_wrapper
,
Rserving_default"
signature_map
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ф
Xtrace_02„
?__inference_token_and_position_embedding_5_layer_call_fn_170208У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zXtrace_0
П
Ytrace_02т
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_170231У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zYtrace_0
µ
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
,
embeddings"
_tf_keras_layer
µ
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
-
embeddings"
_tf_keras_layer
Ц
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15"
trackable_list_wrapper
Ц
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
џ
ktrace_0
ltrace_12§
4__inference_transformer_block_5_layer_call_fn_170270
4__inference_transformer_block_5_layer_call_fn_170309µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 zktrace_0zltrace_1
С
mtrace_0
ntrace_12Џ
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_170490
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_170657µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 zmtrace_0zntrace_1
О
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
u_query_dense
v
_key_dense
w_value_dense
x_softmax
y_dropout_layer
z_output_dense"
_tf_keras_layer
Њ
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses
Б_random_generator"
_tf_keras_layer
Ћ
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
	Иaxis
	6gamma
7beta"
_tf_keras_layer
Ѕ
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
Н__call__
+О&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
Ѕ
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
√
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
Ы_random_generator"
_tf_keras_layer
Ћ
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
†__call__
+°&call_and_return_all_conditional_losses
	Ґaxis
	<gamma
=beta"
_tf_keras_layer
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
е
®trace_02∆
)__inference_dense_17_layer_call_fn_170666Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z®trace_0
А
©trace_02б
D__inference_dense_17_layer_call_and_return_conditional_losses_170697Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z©trace_0
#:!
АРN2dense_17/kernel
:РN2dense_17/bias
J:H
РNА26token_and_position_embedding_5/embedding_10/embeddings
I:G	PА26token_and_position_embedding_5/embedding_11/embeddings
O:MАА27transformer_block_5/multi_head_attention_5/query/kernel
H:F	А25transformer_block_5/multi_head_attention_5/query/bias
M:KАА25transformer_block_5/multi_head_attention_5/key/kernel
F:D	А23transformer_block_5/multi_head_attention_5/key/bias
O:MАА27transformer_block_5/multi_head_attention_5/value/kernel
H:F	А25transformer_block_5/multi_head_attention_5/value/bias
Z:XАА2Btransformer_block_5/multi_head_attention_5/attention_output/kernel
O:MА2@transformer_block_5/multi_head_attention_5/attention_output/bias
?:=А20transformer_block_5/layer_normalization_10/gamma
>:<А2/transformer_block_5/layer_normalization_10/beta
7:5
АА2#transformer_block_5/dense_15/kernel
0:.А2!transformer_block_5/dense_15/bias
7:5
АА2#transformer_block_5/dense_16/kernel
0:.А2!transformer_block_5/dense_16/bias
?:=А20transformer_block_5/layer_normalization_11/gamma
>:<А2/transformer_block_5/layer_normalization_11/beta
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
0
™0
Ђ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
(__inference_model_5_layer_call_fn_169325input_6"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
(__inference_model_5_layer_call_fn_169421input_6"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
(__inference_model_5_layer_call_fn_169712inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
(__inference_model_5_layer_call_fn_169759inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
C__inference_model_5_layer_call_and_return_conditional_losses_169012input_6"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
C__inference_model_5_layer_call_and_return_conditional_losses_169228input_6"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
C__inference_model_5_layer_call_and_return_conditional_losses_169986inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
C__inference_model_5_layer_call_and_return_conditional_losses_170199inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ж
L0
ђ1
≠2
Ѓ3
ѓ4
∞5
±6
≤7
≥8
і9
µ10
ґ11
Ј12
Є13
є14
Ї15
ї16
Љ17
љ18
Њ19
њ20
ј21
Ѕ22
¬23
√24
ƒ25
≈26
∆27
«28
»29
…30
 31
Ћ32
ћ33
Ќ34
ќ35
ѕ36
–37
—38
“39
”40"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
 
ђ0
Ѓ1
∞2
≤3
і4
ґ5
Є6
Ї7
Љ8
Њ9
ј10
¬11
ƒ12
∆13
»14
 15
ћ16
ќ17
–18
“19"
trackable_list_wrapper
 
≠0
ѓ1
±2
≥3
µ4
Ј5
є6
ї7
љ8
њ9
Ѕ10
√11
≈12
«13
…14
Ћ15
Ќ16
ѕ17
—18
”19"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
ЋB»
$__inference_signature_wrapper_169665input_6"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яB№
?__inference_token_and_position_embedding_5_layer_call_fn_170208x"У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_170231x"У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
'
,0"
trackable_list_wrapper
'
,0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
'
-0"
trackable_list_wrapper
'
-0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
Q
0
1
2
 3
!4
"5
#6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ыBш
4__inference_transformer_block_5_layer_call_fn_170270inputs"µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
ыBш
4__inference_transformer_block_5_layer_call_fn_170309inputs"µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
ЦBУ
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_170490inputs"µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
ЦBУ
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_170657inputs"µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
X
.0
/1
02
13
24
35
46
57"
trackable_list_wrapper
X
.0
/1
02
13
24
35
46
57"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
О2ЛИ
Б≤э
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsҐ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
О2ЛИ
Б≤э
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsҐ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ф
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses
йpartial_output_shape
кfull_output_shape

.kernel
/bias"
_tf_keras_layer
ф
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+р&call_and_return_all_conditional_losses
сpartial_output_shape
тfull_output_shape

0kernel
1bias"
_tf_keras_layer
ф
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses
щpartial_output_shape
ъfull_output_shape

2kernel
3bias"
_tf_keras_layer
Ђ
ы	variables
ьtrainable_variables
эregularization_losses
ю	keras_api
€__call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
З_random_generator"
_tf_keras_layer
ф
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
Оpartial_output_shape
Пfull_output_shape

4kernel
5bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
і
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Й	variables
Кtrainable_variables
Лregularization_losses
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
§non_trainable_variables
•layers
¶metrics
 Іlayer_regularization_losses
®layer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
†__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_17_layer_call_fn_170666inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_17_layer_call_and_return_conditional_losses_170697inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
Ѓ	variables
ѓ	keras_api

∞total

±count"
_tf_keras_metric
R
≤	variables
≥	keras_api

іtotal

µcount"
_tf_keras_metric
O:M
РNА2=Adam/m/token_and_position_embedding_5/embedding_10/embeddings
O:M
РNА2=Adam/v/token_and_position_embedding_5/embedding_10/embeddings
N:L	PА2=Adam/m/token_and_position_embedding_5/embedding_11/embeddings
N:L	PА2=Adam/v/token_and_position_embedding_5/embedding_11/embeddings
T:RАА2>Adam/m/transformer_block_5/multi_head_attention_5/query/kernel
T:RАА2>Adam/v/transformer_block_5/multi_head_attention_5/query/kernel
M:K	А2<Adam/m/transformer_block_5/multi_head_attention_5/query/bias
M:K	А2<Adam/v/transformer_block_5/multi_head_attention_5/query/bias
R:PАА2<Adam/m/transformer_block_5/multi_head_attention_5/key/kernel
R:PАА2<Adam/v/transformer_block_5/multi_head_attention_5/key/kernel
K:I	А2:Adam/m/transformer_block_5/multi_head_attention_5/key/bias
K:I	А2:Adam/v/transformer_block_5/multi_head_attention_5/key/bias
T:RАА2>Adam/m/transformer_block_5/multi_head_attention_5/value/kernel
T:RАА2>Adam/v/transformer_block_5/multi_head_attention_5/value/kernel
M:K	А2<Adam/m/transformer_block_5/multi_head_attention_5/value/bias
M:K	А2<Adam/v/transformer_block_5/multi_head_attention_5/value/bias
_:]АА2IAdam/m/transformer_block_5/multi_head_attention_5/attention_output/kernel
_:]АА2IAdam/v/transformer_block_5/multi_head_attention_5/attention_output/kernel
T:RА2GAdam/m/transformer_block_5/multi_head_attention_5/attention_output/bias
T:RА2GAdam/v/transformer_block_5/multi_head_attention_5/attention_output/bias
D:BА27Adam/m/transformer_block_5/layer_normalization_10/gamma
D:BА27Adam/v/transformer_block_5/layer_normalization_10/gamma
C:AА26Adam/m/transformer_block_5/layer_normalization_10/beta
C:AА26Adam/v/transformer_block_5/layer_normalization_10/beta
<::
АА2*Adam/m/transformer_block_5/dense_15/kernel
<::
АА2*Adam/v/transformer_block_5/dense_15/kernel
5:3А2(Adam/m/transformer_block_5/dense_15/bias
5:3А2(Adam/v/transformer_block_5/dense_15/bias
<::
АА2*Adam/m/transformer_block_5/dense_16/kernel
<::
АА2*Adam/v/transformer_block_5/dense_16/kernel
5:3А2(Adam/m/transformer_block_5/dense_16/bias
5:3А2(Adam/v/transformer_block_5/dense_16/bias
D:BА27Adam/m/transformer_block_5/layer_normalization_11/gamma
D:BА27Adam/v/transformer_block_5/layer_normalization_11/gamma
C:AА26Adam/m/transformer_block_5/layer_normalization_11/beta
C:AА26Adam/v/transformer_block_5/layer_normalization_11/beta
(:&
АРN2Adam/m/dense_17/kernel
(:&
АРN2Adam/v/dense_17/kernel
!:РN2Adam/m/dense_17/bias
!:РN2Adam/v/dense_17/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
J
u0
v1
w2
x3
y4
z5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
їnon_trainable_variables
Љlayers
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
јnon_trainable_variables
Ѕlayers
¬metrics
 √layer_regularization_losses
ƒlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
ы	variables
ьtrainable_variables
эregularization_losses
€__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 non_trainable_variables
Ћlayers
ћmetrics
 Ќlayer_regularization_losses
ќlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
∞0
±1"
trackable_list_wrapper
.
Ѓ	variables"
_generic_user_object
:  (2total
:  (2count
0
і0
µ1"
trackable_list_wrapper
.
≤	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapperЬ
!__inference__wrapped_model_168724ц-,./0123456789:;<=*+9Ґ6
/Ґ,
*К'
input_6€€€€€€€€€€€€€€€€€€
™ "Ґ™Ю
<
dense_170К-
dense_17€€€€€€€€€€€€€€€€€€РN
^
transformer_block_5GКD
transformer_block_5+€€€€€€€€€€€€€€€€€€€€€€€€€€€«
D__inference_dense_17_layer_call_and_return_conditional_losses_170697*+=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™ ":Ґ7
0К-
tensor_0€€€€€€€€€€€€€€€€€€РN
Ъ °
)__inference_dense_17_layer_call_fn_170666t*+=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™ "/К,
unknown€€€€€€€€€€€€€€€€€€РN•
C__inference_model_5_layer_call_and_return_conditional_losses_169012Ё-,./0123456789:;<=*+AҐ>
7Ґ4
*К'
input_6€€€€€€€€€€€€€€€€€€
p

 
™ "БҐ~
wЪt
2К/

tensor_0_0€€€€€€€€€€€€€€€€€€РN
>К;

tensor_0_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ •
C__inference_model_5_layer_call_and_return_conditional_losses_169228Ё-,./0123456789:;<=*+AҐ>
7Ґ4
*К'
input_6€€€€€€€€€€€€€€€€€€
p 

 
™ "БҐ~
wЪt
2К/

tensor_0_0€€€€€€€€€€€€€€€€€€РN
>К;

tensor_0_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ §
C__inference_model_5_layer_call_and_return_conditional_losses_169986№-,./0123456789:;<=*+@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "БҐ~
wЪt
2К/

tensor_0_0€€€€€€€€€€€€€€€€€€РN
>К;

tensor_0_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ §
C__inference_model_5_layer_call_and_return_conditional_losses_170199№-,./0123456789:;<=*+@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "БҐ~
wЪt
2К/

tensor_0_0€€€€€€€€€€€€€€€€€€РN
>К;

tensor_0_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ы
(__inference_model_5_layer_call_fn_169325ќ-,./0123456789:;<=*+AҐ>
7Ґ4
*К'
input_6€€€€€€€€€€€€€€€€€€
p

 
™ "sЪp
0К-
tensor_0€€€€€€€€€€€€€€€€€€РN
<К9
tensor_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€ы
(__inference_model_5_layer_call_fn_169421ќ-,./0123456789:;<=*+AҐ>
7Ґ4
*К'
input_6€€€€€€€€€€€€€€€€€€
p 

 
™ "sЪp
0К-
tensor_0€€€€€€€€€€€€€€€€€€РN
<К9
tensor_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€ъ
(__inference_model_5_layer_call_fn_169712Ќ-,./0123456789:;<=*+@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "sЪp
0К-
tensor_0€€€€€€€€€€€€€€€€€€РN
<К9
tensor_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€ъ
(__inference_model_5_layer_call_fn_169759Ќ-,./0123456789:;<=*+@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "sЪp
0К-
tensor_0€€€€€€€€€€€€€€€€€€РN
<К9
tensor_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€™
$__inference_signature_wrapper_169665Б-,./0123456789:;<=*+DҐA
Ґ 
:™7
5
input_6*К'
input_6€€€€€€€€€€€€€€€€€€"Ґ™Ю
<
dense_170К-
dense_17€€€€€€€€€€€€€€€€€€РN
^
transformer_block_5GКD
transformer_block_5+€€€€€€€€€€€€€€€€€€€€€€€€€€€”
Z__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_170231u-,3Ґ0
)Ґ&
$К!
x€€€€€€€€€€€€€€€€€€
™ ":Ґ7
0К-
tensor_0€€€€€€€€€€€€€€€€€€А
Ъ ≠
?__inference_token_and_position_embedding_5_layer_call_fn_170208j-,3Ґ0
)Ґ&
$К!
x€€€€€€€€€€€€€€€€€€
™ "/К,
unknown€€€€€€€€€€€€€€€€€€Ає
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_170490е./0123456789:;<=MҐJ
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™

trainingp"БҐ~
wҐt
2К/

tensor_0_0€€€€€€€€€€€€€€€€€€А
>К;

tensor_0_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ є
O__inference_transformer_block_5_layer_call_and_return_conditional_losses_170657е./0123456789:;<=MҐJ
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™

trainingp "БҐ~
wҐt
2К/

tensor_0_0€€€€€€€€€€€€€€€€€€А
>К;

tensor_0_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ П
4__inference_transformer_block_5_layer_call_fn_170270÷./0123456789:;<=MҐJ
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™

trainingp"sҐp
0К-
tensor_0€€€€€€€€€€€€€€€€€€А
<К9
tensor_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€П
4__inference_transformer_block_5_layer_call_fn_170309÷./0123456789:;<=MҐJ
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™

trainingp "sҐp
0К-
tensor_0€€€€€€€€€€€€€€€€€€А
<К9
tensor_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€