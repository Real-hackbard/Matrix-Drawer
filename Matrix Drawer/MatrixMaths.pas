unit MatrixMaths;

interface

type
    Mat = array[0..3,0..3] of single;
    Vertex = array[0..2] of single;

const
    Identity: Mat = ((1,0,0,0),
                     (0,1,0,0),
                     (0,0,1,0),
                     (0,0,0,1));

Procedure CopyMat(Const src: Mat; Var Dest: Mat);
Procedure CopyVert(const Src: vertex; var Dest: Vertex);
Function AddVert(const A, B: Vertex): Vertex;
Function MulVert(const A, B: Vertex): Vertex;
Function SubVert(const A, B: Vertex): Vertex;
Function XRot(rx: single): Mat;
Function YRot(ry: single): Mat;
Function ZRot(rz: single): Mat;
function ConcatMatrix(Const Ma, Mb: Mat): Mat;
Procedure ApplyMatrix(Var Vert: Vertex; const M: Mat);
Procedure CConcatMatrix(Const Ma: Mat; Var Mb: Mat);
function MakeVert(X,Y,Z: single): Vertex;


implementation

uses Unit1;

function MakeVert(X,Y,Z: single): Vertex;
begin
  Result[0] := X;
  Result[1] := Y;
  Result[2] := Z;
end;

Procedure CopyMat(Const src: Mat; Var Dest: Mat);
Var R,C: integer;
begin
 for C := 0 to 3 do
  for R := 0 to 3 do
   Dest[C,R] := Src[C,R];
end;

Procedure CopyVert(const Src: vertex; var Dest: Vertex);
begin
  Dest[0] := Src[0];
  Dest[1] := Src[1];
  Dest[2] := Src[2];
end;

Function AddVert(const A, B: Vertex): Vertex;
begin
  result[0] := A[0]+B[0];
  result[1] := A[1]+B[1];
  result[2] := A[2]+B[2];
end;

Function MulVert(const A, B: Vertex): Vertex;
begin
  result[0] := A[0]*B[0];
  result[1] := A[1]*B[1];
  result[2] := A[2]*B[2];
end;

Function SubVert(const A, B: Vertex): Vertex;
begin
  result[0] := A[0]-B[0];
  result[1] := A[1]-B[1];
  result[2] := A[2]-B[2];
end;

//Makes a matrix describing a rotation around the X axis of angle rx.
Function XRot(rx: single): Mat;
begin
 CopyMat(Identity, Result);
 Result[1,1] := cos(rx);
 Result[2,1] := sin(rx);
 Result[1,2] := -sin(rx);
 Result[2,2] := cos(rx);
end;

//Makes a matrix describing a rotation around the Y axis of angle ry.
Function YRot(ry: single): Mat;
begin
 CopyMat(Identity, Result);
 Result[0,0] := cos(ry);
 Result[0,2] := sin(ry);
 Result[2,0] := -sin(ry);
 Result[2,2] := cos(ry);
end;

//Makes a matrix describing a rotation around the Z axis of angle rz.
Function ZRot(rz: single): Mat;
begin
 CopyMat(Identity, Result);
 Result[0,0] := cos(rz);
 Result[1,0] := sin(rz);
 Result[0,1] := -sin(rz);
 Result[1,1] := cos(rz);
end;

//Adds two matrixes together and returns the result.
function ConcatMatrix(Const Ma, Mb: Mat): Mat;
Var R,C: integer;
begin
  for C := 0 to 3 do
   for R := 0 to 3 do
    Result[C,R] := ma[0,r] * mb[c,0] +
                   ma[1,r] * mb[c,1] +
                   ma[2,r] * mb[c,2] +
                   ma[3,r] * mb[c,3];

end;

//Adds one matrix to another, changing it.
Procedure CConcatMatrix(Const Ma: Mat; Var Mb: Mat);
Var R,C: integer;
    T: Mat;
begin
  for C := 0 to 3 do
   for R := 0 to 3 do
    T[C,R] := ma[0,r] * mb[c,0] +
              ma[1,r] * mb[c,1] +
              ma[2,r] * mb[c,2] +
              ma[3,r] * mb[c,3];

  CopyMat(T, Mb);

end;

//Applies a matrix to a vertex.
Procedure ApplyMatrix(Var Vert: Vertex; const M: Mat);
Var N: Vertex;
begin
  N[0] := vert[0] * M[0,0] + Vert[1] * M[1,0] + Vert[2] * M[2,0] + M[3,0];
  N[1] := vert[0] * M[0,1] + Vert[1] * M[1,1] + Vert[2] * M[2,1] + M[3,1];
  N[2] := vert[0] * M[0,2] + Vert[1] * M[1,2] + Vert[2] * M[2,2] + M[3,2];
  CopyVert(N, Vert);
end;

end.
