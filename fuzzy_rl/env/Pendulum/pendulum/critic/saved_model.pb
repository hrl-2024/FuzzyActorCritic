��
��
.
Abs
x"T
y"T"
Ttype:

2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.12unknown8��
h

main/countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
main/count
a
main/count/Read/ReadVariableOpReadVariableOp
main/count*
_output_shapes
: *
dtype0
h

main/totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
main/total
a
main/total/Read/ReadVariableOpReadVariableOp
main/total*
_output_shapes
: *
dtype0
x
main/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namemain/learning_rate
q
&main/learning_rate/Read/ReadVariableOpReadVariableOpmain/learning_rate*
_output_shapes
: *
dtype0
p
main/iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namemain/iteration
i
"main/iteration/Read/ReadVariableOpReadVariableOpmain/iteration*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	�*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:�*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
��*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:�*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	�*
dtype0
y
serving_default_args_0Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0dense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� *-
f(R&
$__inference_signature_wrapper_352526

NoOpNoOp
�"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�"
value�"B�" B�"
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias*
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias*

*	keras_api* 

+	keras_api* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
.
0
1
 2
!3
(4
)5*
.
0
1
 2
!3
(4
)5*
* 
�
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

7trace_0
8trace_1* 

9trace_0
:trace_1* 
* 
O
;
_variables
<_iterations
=_learning_rate
>_update_step_xla*
* 

?serving_default* 

0
1*

0
1*
* 
�
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Etrace_0* 

Ftrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*

 0
!1*
* 
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ltrace_0* 

Mtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

(0
)1*

(0
)1*
* 
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
Sactivity_regularizer_fn
*'&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

Utrace_0* 

Vtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

\trace_0* 

]trace_0* 
* 
5
0
1
2
3
4
5
6*

^0*
* 
* 
* 
* 
* 
* 

<0*
XR
VARIABLE_VALUEmain/iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmain/learning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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

_trace_0* 

`trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
a	variables
b	keras_api
	ctotal
	dcount*
* 
* 

c0
d1*

a	variables*
XR
VARIABLE_VALUE
main/total4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
main/count4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"main/iteration/Read/ReadVariableOp&main/learning_rate/Read/ReadVariableOpmain/total/Read/ReadVariableOpmain/count/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *(
f#R!
__inference__traced_save_352791
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasmain/iterationmain/learning_rate
main/total
main/count*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *+
f&R$
"__inference__traced_restore_352831��
�4
�
C__inference_model_1_layer_call_and_return_conditional_losses_352658

inputs9
&dense_3_matmul_readvariableop_resource:	�6
'dense_3_biasadd_readvariableop_resource:	�:
&dense_4_matmul_readvariableop_resource:
��6
'dense_4_biasadd_readvariableop_resource:	�9
&dense_5_matmul_readvariableop_resource:	�5
'dense_5_biasadd_readvariableop_resource:
identity

identity_1��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0z
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
!dense_5/ActivityRegularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
dense_5/ActivityRegularizer/AbsAbsdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������t
#dense_5/ActivityRegularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/ActivityRegularizer/SumSum#dense_5/ActivityRegularizer/Abs:y:0,dense_5/ActivityRegularizer/Const_1:output:0*
T0*
_output_shapes
: f
!dense_5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_5/ActivityRegularizer/mulMul*dense_5/ActivityRegularizer/mul/x:output:0(dense_5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/ActivityRegularizer/addAddV2*dense_5/ActivityRegularizer/Const:output:0#dense_5/ActivityRegularizer/mul:z:0*
T0*
_output_shapes
: g
"dense_5/ActivityRegularizer/L2LossL2Lossdense_5/BiasAdd:output:0*
T0*
_output_shapes
: h
#dense_5/ActivityRegularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
!dense_5/ActivityRegularizer/mul_1Mul,dense_5/ActivityRegularizer/mul_1/x:output:0+dense_5/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: �
!dense_5/ActivityRegularizer/add_1AddV2#dense_5/ActivityRegularizer/add:z:0%dense_5/ActivityRegularizer/mul_1:z:0*
T0*
_output_shapes
: i
!dense_5/ActivityRegularizer/ShapeShapedense_5/BiasAdd:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_5/ActivityRegularizer/truedivRealDiv%dense_5/ActivityRegularizer/add_1:z:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: [
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
tf.math.multiply/MulMuldense_5/BiasAdd:output:0tf.math.multiply/Mul/y:output:0*
T0*'
_output_shapes
:���������[
tf.math.subtract/Sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
tf.math.subtract/SubSubtf.math.multiply/Mul:z:0tf.math.subtract/Sub/y:output:0*
T0*'
_output_shapes
:���������k
activation_1/SigmoidSigmoidtf.math.subtract/Sub:z:0*
T0*'
_output_shapes
:���������g
IdentityIdentityactivation_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
C__inference_dense_5_layer_call_and_return_conditional_losses_352728

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
C__inference_dense_5_layer_call_and_return_conditional_losses_352363

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_activation_1_layer_call_and_return_conditional_losses_352386

inputs
identityL
SigmoidSigmoidinputs*
T0*'
_output_shapes
:���������S
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_352544

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_352390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_activation_1_layer_call_and_return_conditional_losses_352738

inputs
identityL
SigmoidSigmoidinputs*
T0*'
_output_shapes
:���������S
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_activation_1_layer_call_fn_352733

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_352386`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
C__inference_dense_3_layer_call_and_return_conditional_losses_352330

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_dense_4_layer_call_fn_352687

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_352347p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_dense_3_layer_call_and_return_conditional_losses_352678

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�:
�
!__inference__wrapped_model_352293

args_0A
.model_1_dense_3_matmul_readvariableop_resource:	�>
/model_1_dense_3_biasadd_readvariableop_resource:	�B
.model_1_dense_4_matmul_readvariableop_resource:
��>
/model_1_dense_4_biasadd_readvariableop_resource:	�A
.model_1_dense_5_matmul_readvariableop_resource:	�=
/model_1_dense_5_biasadd_readvariableop_resource:
identity��&model_1/dense_3/BiasAdd/ReadVariableOp�%model_1/dense_3/MatMul/ReadVariableOp�&model_1/dense_4/BiasAdd/ReadVariableOp�%model_1/dense_4/MatMul/ReadVariableOp�&model_1/dense_5/BiasAdd/ReadVariableOp�%model_1/dense_5/MatMul/ReadVariableOp�
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp.model_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_1/dense_3/MatMulMatMulargs_0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
model_1/dense_3/ReluRelu model_1/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/dense_4/MatMulMatMul"model_1/dense_3/Relu:activations:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
model_1/dense_4/ReluRelu model_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_1/dense_5/MatMulMatMul"model_1/dense_4/Relu:activations:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
)model_1/dense_5/ActivityRegularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'model_1/dense_5/ActivityRegularizer/AbsAbs model_1/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������|
+model_1/dense_5/ActivityRegularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
'model_1/dense_5/ActivityRegularizer/SumSum+model_1/dense_5/ActivityRegularizer/Abs:y:04model_1/dense_5/ActivityRegularizer/Const_1:output:0*
T0*
_output_shapes
: n
)model_1/dense_5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
'model_1/dense_5/ActivityRegularizer/mulMul2model_1/dense_5/ActivityRegularizer/mul/x:output:00model_1/dense_5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: �
'model_1/dense_5/ActivityRegularizer/addAddV22model_1/dense_5/ActivityRegularizer/Const:output:0+model_1/dense_5/ActivityRegularizer/mul:z:0*
T0*
_output_shapes
: w
*model_1/dense_5/ActivityRegularizer/L2LossL2Loss model_1/dense_5/BiasAdd:output:0*
T0*
_output_shapes
: p
+model_1/dense_5/ActivityRegularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
)model_1/dense_5/ActivityRegularizer/mul_1Mul4model_1/dense_5/ActivityRegularizer/mul_1/x:output:03model_1/dense_5/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: �
)model_1/dense_5/ActivityRegularizer/add_1AddV2+model_1/dense_5/ActivityRegularizer/add:z:0-model_1/dense_5/ActivityRegularizer/mul_1:z:0*
T0*
_output_shapes
: y
)model_1/dense_5/ActivityRegularizer/ShapeShape model_1/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:�
7model_1/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9model_1/dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9model_1/dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1model_1/dense_5/ActivityRegularizer/strided_sliceStridedSlice2model_1/dense_5/ActivityRegularizer/Shape:output:0@model_1/dense_5/ActivityRegularizer/strided_slice/stack:output:0Bmodel_1/dense_5/ActivityRegularizer/strided_slice/stack_1:output:0Bmodel_1/dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
(model_1/dense_5/ActivityRegularizer/CastCast:model_1/dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
+model_1/dense_5/ActivityRegularizer/truedivRealDiv-model_1/dense_5/ActivityRegularizer/add_1:z:0,model_1/dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: c
model_1/tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
model_1/tf.math.multiply/MulMul model_1/dense_5/BiasAdd:output:0'model_1/tf.math.multiply/Mul/y:output:0*
T0*'
_output_shapes
:���������c
model_1/tf.math.subtract/Sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
model_1/tf.math.subtract/SubSub model_1/tf.math.multiply/Mul:z:0'model_1/tf.math.subtract/Sub/y:output:0*
T0*'
_output_shapes
:���������{
model_1/activation_1/SigmoidSigmoid model_1/tf.math.subtract/Sub:z:0*
T0*'
_output_shapes
:���������o
IdentityIdentity model_1/activation_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameargs_0
�
�
(__inference_model_1_layer_call_fn_352562

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_352489o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
C__inference_dense_4_layer_call_and_return_conditional_losses_352698

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�4
�
C__inference_model_1_layer_call_and_return_conditional_losses_352610

inputs9
&dense_3_matmul_readvariableop_resource:	�6
'dense_3_biasadd_readvariableop_resource:	�:
&dense_4_matmul_readvariableop_resource:
��6
'dense_4_biasadd_readvariableop_resource:	�9
&dense_5_matmul_readvariableop_resource:	�5
'dense_5_biasadd_readvariableop_resource:
identity

identity_1��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0z
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
!dense_5/ActivityRegularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
dense_5/ActivityRegularizer/AbsAbsdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������t
#dense_5/ActivityRegularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/ActivityRegularizer/SumSum#dense_5/ActivityRegularizer/Abs:y:0,dense_5/ActivityRegularizer/Const_1:output:0*
T0*
_output_shapes
: f
!dense_5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_5/ActivityRegularizer/mulMul*dense_5/ActivityRegularizer/mul/x:output:0(dense_5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/ActivityRegularizer/addAddV2*dense_5/ActivityRegularizer/Const:output:0#dense_5/ActivityRegularizer/mul:z:0*
T0*
_output_shapes
: g
"dense_5/ActivityRegularizer/L2LossL2Lossdense_5/BiasAdd:output:0*
T0*
_output_shapes
: h
#dense_5/ActivityRegularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
!dense_5/ActivityRegularizer/mul_1Mul,dense_5/ActivityRegularizer/mul_1/x:output:0+dense_5/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: �
!dense_5/ActivityRegularizer/add_1AddV2#dense_5/ActivityRegularizer/add:z:0%dense_5/ActivityRegularizer/mul_1:z:0*
T0*
_output_shapes
: i
!dense_5/ActivityRegularizer/ShapeShapedense_5/BiasAdd:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_5/ActivityRegularizer/truedivRealDiv%dense_5/ActivityRegularizer/add_1:z:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: [
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
tf.math.multiply/MulMuldense_5/BiasAdd:output:0tf.math.multiply/Mul/y:output:0*
T0*'
_output_shapes
:���������[
tf.math.subtract/Sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
tf.math.subtract/SubSubtf.math.multiply/Mul:z:0tf.math.subtract/Sub/y:output:0*
T0*'
_output_shapes
:���������k
activation_1/SigmoidSigmoidtf.math.subtract/Sub:z:0*
T0*'
_output_shapes
:���������g
IdentityIdentityactivation_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
C__inference_model_1_layer_call_and_return_conditional_losses_352489

inputs!
dense_3_352459:	�
dense_3_352461:	�"
dense_4_352464:
��
dense_4_352466:	�!
dense_5_352469:	�
dense_5_352471:
identity

identity_1��dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_352459dense_3_352461*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_352330�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_352464dense_4_352466*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_352347�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_352469dense_5_352471*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_352363�
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *8
f3R1
/__inference_dense_5_activity_regularizer_352312y
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: [
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
tf.math.multiply/MulMul(dense_5/StatefulPartitionedCall:output:0tf.math.multiply/Mul/y:output:0*
T0*'
_output_shapes
:���������[
tf.math.subtract/Sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
tf.math.subtract/SubSubtf.math.multiply/Mul:z:0tf.math.subtract/Sub/y:output:0*
T0*'
_output_shapes
:����������
activation_1/PartitionedCallPartitionedCalltf.math.subtract/Sub:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_352386t
IdentityIdentity%activation_1/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

F
/__inference_dense_5_activity_regularizer_352312
x
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    0
AbsAbsx*
T0*
_output_shapes
:6
RankRankAbs:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:���������D
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: F
addAddV2Const:output:0mul:z:0*
T0*
_output_shapes
: 4
L2LossL2Lossx*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9P
mul_1Mulmul_1/x:output:0L2Loss:output:0*
T0*
_output_shapes
: C
add_1AddV2add:z:0	mul_1:z:0*
T0*
_output_shapes
: @
IdentityIdentity	add_1:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
� 
�
__inference__traced_save_352791
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_main_iteration_read_readvariableop	1
-savev2_main_learning_rate_read_readvariableop)
%savev2_main_total_read_readvariableop)
%savev2_main_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_main_iteration_read_readvariableop-savev2_main_learning_rate_read_readvariableop%savev2_main_total_read_readvariableop%savev2_main_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*U
_input_shapesD
B: :	�:�:
��:�:	�:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
�
�
G__inference_dense_5_layer_call_and_return_all_conditional_losses_352718

inputs
unknown:	�
	unknown_0:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_352363�
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *8
f3R1
/__inference_dense_5_activity_regularizer_352312o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_dense_4_layer_call_and_return_conditional_losses_352347

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
C__inference_model_1_layer_call_and_return_conditional_losses_352390

inputs!
dense_3_352331:	�
dense_3_352333:	�"
dense_4_352348:
��
dense_4_352350:	�!
dense_5_352364:	�
dense_5_352366:
identity

identity_1��dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_352331dense_3_352333*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_352330�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_352348dense_4_352350*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_352347�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_352364dense_5_352366*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_352363�
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *8
f3R1
/__inference_dense_5_activity_regularizer_352312y
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: �
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: [
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
tf.math.multiply/MulMul(dense_5/StatefulPartitionedCall:output:0tf.math.multiply/Mul/y:output:0*
T0*'
_output_shapes
:���������[
tf.math.subtract/Sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
tf.math.subtract/SubSubtf.math.multiply/Mul:z:0tf.math.subtract/Sub/y:output:0*
T0*'
_output_shapes
:����������
activation_1/PartitionedCallPartitionedCalltf.math.subtract/Sub:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_352386t
IdentityIdentity%activation_1/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_dense_5_layer_call_fn_352707

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_352363o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_352526

args_0
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0,1J 8� **
f%R#
!__inference__wrapped_model_352293o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameargs_0
�
�
(__inference_dense_3_layer_call_fn_352667

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_352330p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�.
�
"__inference__traced_restore_352831
file_prefix2
assignvariableop_dense_3_kernel:	�.
assignvariableop_1_dense_3_bias:	�5
!assignvariableop_2_dense_4_kernel:
��.
assignvariableop_3_dense_4_bias:	�4
!assignvariableop_4_dense_5_kernel:	�-
assignvariableop_5_dense_5_bias:+
!assignvariableop_6_main_iteration:	 /
%assignvariableop_7_main_learning_rate: '
assignvariableop_8_main_total: '
assignvariableop_9_main_count: 
identity_11��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_4_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_4_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_5_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_5_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_main_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp%assignvariableop_7_main_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_main_totalIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_main_countIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
9
args_0/
serving_default_args_0:0���������@
activation_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�u
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias"
_tf_keras_layer
(
*	keras_api"
_tf_keras_layer
(
+	keras_api"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
 2
!3
(4
)5"
trackable_list_wrapper
J
0
1
 2
!3
(4
)5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
7trace_0
8trace_12�
(__inference_model_1_layer_call_fn_352544
(__inference_model_1_layer_call_fn_352562�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z7trace_0z8trace_1
�
9trace_0
:trace_12�
C__inference_model_1_layer_call_and_return_conditional_losses_352610
C__inference_model_1_layer_call_and_return_conditional_losses_352658�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z9trace_0z:trace_1
�B�
!__inference__wrapped_model_352293args_0"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
j
;
_variables
<_iterations
=_learning_rate
>_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
,
?serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Etrace_02�
(__inference_dense_3_layer_call_fn_352667�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zEtrace_0
�
Ftrace_02�
C__inference_dense_3_layer_call_and_return_conditional_losses_352678�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zFtrace_0
!:	�2dense_3/kernel
:�2dense_3/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ltrace_02�
(__inference_dense_4_layer_call_fn_352687�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0
�
Mtrace_02�
C__inference_dense_4_layer_call_and_return_conditional_losses_352698�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zMtrace_0
": 
��2dense_4/kernel
:�2dense_4/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
Sactivity_regularizer_fn
*'&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
Utrace_02�
(__inference_dense_5_layer_call_fn_352707�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zUtrace_0
�
Vtrace_02�
G__inference_dense_5_layer_call_and_return_all_conditional_losses_352718�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zVtrace_0
!:	�2dense_5/kernel
:2dense_5/bias
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
\trace_02�
-__inference_activation_1_layer_call_fn_352733�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0
�
]trace_02�
H__inference_activation_1_layer_call_and_return_conditional_losses_352738�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
'
^0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_model_1_layer_call_fn_352544inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_1_layer_call_fn_352562inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_1_layer_call_and_return_conditional_losses_352610inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_1_layer_call_and_return_conditional_losses_352658inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
<0"
trackable_list_wrapper
:	 2main/iteration
: 2main/learning_rate
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_352526args_0"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
trackable_dict_wrapper
�B�
(__inference_dense_3_layer_call_fn_352667inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_3_layer_call_and_return_conditional_losses_352678inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
trackable_dict_wrapper
�B�
(__inference_dense_4_layer_call_fn_352687inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_4_layer_call_and_return_conditional_losses_352698inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
trackable_dict_wrapper
�
_trace_02�
/__inference_dense_5_activity_regularizer_352312�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�z_trace_0
�
`trace_02�
C__inference_dense_5_layer_call_and_return_conditional_losses_352728�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z`trace_0
�B�
(__inference_dense_5_layer_call_fn_352707inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_5_layer_call_and_return_all_conditional_losses_352718inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
trackable_dict_wrapper
�B�
-__inference_activation_1_layer_call_fn_352733inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_activation_1_layer_call_and_return_conditional_losses_352738inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
a	variables
b	keras_api
	ctotal
	dcount"
_tf_keras_metric
�B�
/__inference_dense_5_activity_regularizer_352312x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
�B�
C__inference_dense_5_layer_call_and_return_conditional_losses_352728inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
c0
d1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
:  (2
main/total
:  (2
main/count�
!__inference__wrapped_model_352293v !()/�,
%�"
 �
args_0���������
� ";�8
6
activation_1&�#
activation_1����������
H__inference_activation_1_layer_call_and_return_conditional_losses_352738_/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
-__inference_activation_1_layer_call_fn_352733T/�,
%�"
 �
inputs���������
� "!�
unknown����������
C__inference_dense_3_layer_call_and_return_conditional_losses_352678d/�,
%�"
 �
inputs���������
� "-�*
#� 
tensor_0����������
� �
(__inference_dense_3_layer_call_fn_352667Y/�,
%�"
 �
inputs���������
� ""�
unknown�����������
C__inference_dense_4_layer_call_and_return_conditional_losses_352698e !0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
(__inference_dense_4_layer_call_fn_352687Z !0�-
&�#
!�
inputs����������
� ""�
unknown����������b
/__inference_dense_5_activity_regularizer_352312/�
�
�	
x
� "�
unknown �
G__inference_dense_5_layer_call_and_return_all_conditional_losses_352718y()0�-
&�#
!�
inputs����������
� "A�>
"�
tensor_0���������
�
�

tensor_1_0 �
C__inference_dense_5_layer_call_and_return_conditional_losses_352728d()0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
(__inference_dense_5_layer_call_fn_352707Y()0�-
&�#
!�
inputs����������
� "!�
unknown����������
C__inference_model_1_layer_call_and_return_conditional_losses_352610� !()7�4
-�*
 �
inputs���������
p 

 
� "A�>
"�
tensor_0���������
�
�

tensor_1_0 �
C__inference_model_1_layer_call_and_return_conditional_losses_352658� !()7�4
-�*
 �
inputs���������
p

 
� "A�>
"�
tensor_0���������
�
�

tensor_1_0 �
(__inference_model_1_layer_call_fn_352544d !()7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
(__inference_model_1_layer_call_fn_352562d !()7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
$__inference_signature_wrapper_352526� !()9�6
� 
/�,
*
args_0 �
args_0���������";�8
6
activation_1&�#
activation_1���������