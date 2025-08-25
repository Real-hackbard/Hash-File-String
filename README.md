# Hash-File-String:

```ruby
Compiler    : Delphi7 (or Higher)
Components  : None
Discription : Generate Hash for String, File and Buffer
Last Update : 08/2025
License     : Freeware
```

</br>

HashLib! is a fast and flexible library for Delphi, where are implemented most of common hash algorithms. It provides easy to use low and high level functions. I decided to write this lib because of lack of such things for Delphi and quite a bad quality of them (this lib contais parts being rewritten in assembler). This library was written in Delphi (tested on Delphi5, Delphi6, Delphi7). Also it works fine in C++ Builder 4 (and it should work on newer verions). Source code is included and could be modified without any limitations.

</br></br>

![Hash](https://github.com/user-attachments/assets/12ed2b90-198c-4ee1-bf86-b42ddb452156)

</br>

### Implemented algorithms
* [MD2 (RFC1319), MD4 (RFC1320), MD5 (RFC1321)](https://de.wikipedia.org/wiki/Message-Digest_Algorithm_5)
* [SHA1(FIPS 180-1), SHA256, SHA384, SHA512 (FIPS PUB 180-2)](https://de.wikipedia.org/wiki/Secure_Hash_Algorithm)
* [Haval128, Haval160, Haval192, Haval224, Haval256](https://en.wikipedia.org/wiki/HAVAL) by Y. Zheng, J. Pieprzyk and J. Seberry
* [Gost (GOST R 34.11-94)](https://en.wikipedia.org/wiki/GOST_(hash_function))
* [Tiger128, Tiger160, Tiger192](https://en.wikipedia.org/wiki/Tiger_(hash_function)) by Ross Anderson and Eli Biham
* [RipeMD128, RipeMD160](https://de.wikipedia.org/wiki/RIPEMD-160) by Hans Dobbertin, Antoon Bosselaers, and Bart Preneel
* [CRC32, CRC32b](https://en.wikipedia.org/wiki/Cyclic_redundancy_check)
* [Adler32](https://en.wikipedia.org/wiki/Adler-32)

</br>

A hash function is any [function](https://en.wikipedia.org/wiki/Function_(mathematics)) that can be used to map [data](https://en.wikipedia.org/wiki/Data_(computer_science)) of arbitrary size to fixed-size values, though there are some hash functions that support variable-length output. The values returned by a hash function are called hash values, hash codes, (hash/message) digests, or simply hashes. The values are usually used to index a fixed-size table called a [hash table](https://en.wikipedia.org/wiki/Hash_table). Use of a hash function to index a hash table is called hashing or scatter-storage addressing.

Hash functions and their associated hash tables are used in data storage and retrieval applications to access data in a small and nearly constant time per retrieval. They require an amount of storage space only fractionally greater than the total space required for the data or records themselves. Hashing is a computationally- and storage-space-efficient form of data access that avoids the non-constant access time of ordered and unordered lists and structured trees, and the often-exponential storage requirements of direct access of state spaces of large or variable-length keys.

Use of hash functions relies on statistical properties of key and function interaction: worst-case behavior is intolerably bad but rare, and average-case behavior can be nearly optimal (minimal collision).


### CryptoAPI:
CryptoAPI unit provides common interface for using the algorithms.
### HashContext:
Before calling the low level functions hash context should be allocated.
You are not allowed modifying the IntData and HashType parts of the context!

```pascal
THashContext = record
    IntData: Pointer;      {Reserved for internal use} 
    HashType: LongWord;    {Hash type}                 
    lParam: LongWord;      {First Param}               
    wParam: LongWord;      {Second Param}
  end;
```

```pascal
{$DEFINE INCLUDE_FUTILS}        //Include file utils (HashFile, HashFilePartial)
{$DEFINE INCLUDE_MD}            //Include MD2, MD4, MD5
{$DEFINE INCLUDE_CRC}           //Include CRC32, CRC32b
{$DEFINE INCLUDE_ADLER}         //Include Adler32
{$DEFINE INCLUDE_GOST}          //Include Gost
{$DEFINE INCLUDE_HAVAL}         //Include Haval(128, 160, 192, 224, 256)
{$DEFINE INCLUDE_SHA}           //Include SHA1, SHA256, SHA384, SHA512
{$DEFINE INCLUDE_TIGER}         //Include Tiger128, Tiger160, Tiger192
{$DEFINE INCLUDE_RMD}           //Include RipeMD128, RipeMD160
```

```pascal
const
  HASH_INITIAL     = $100;              //Initial constant

  {Hash types}
  {$IFDEF INCLUDE_MD}
  HASH_MD2         = HASH_INITIAL + $1;
  HASH_MD4         = HASH_INITIAL + $2;
  HASH_MD5         = HASH_INITIAL + $3;
  {$ENDIF}
  {$IFDEF INCLUDE_CRC}
  HASH_CRC32       = HASH_INITIAL + $4;
  HASH_CRC32B      = HASH_INITIAL + $5;
  {$ENDIF}
  {$IFDEF INCLUDE_ADLER}
  HASH_ADLER32     = HASH_INITIAL + $6;
  {$ENDIF}
  {$IFDEF INCLUDE_GOST}
  HASH_GOST        = HASH_INITIAL + $7;
  {$ENDIF}
  {$IFDEF INCLUDE_HAVAL}
  HASH_HAVAL128     = HASH_INITIAL + $8;
  HASH_HAVAL160     = HASH_INITIAL + $9;
  HASH_HAVAL192     = HASH_INITIAL + $A;
  HASH_HAVAL224     = HASH_INITIAL + $B;
  HASH_HAVAL256     = HASH_INITIAL + $C;
  {$ENDIF}
  {$IFDEF INCLUDE_SHA}
  HASH_SHA1         = HASH_INITIAL + $D;
  HASH_SHA256       = HASH_INITIAL + $E;
  HASH_SHA384       = HASH_INITIAL + $F;
  HASH_SHA512       = HASH_INITIAL + $10;
  {$ENDIF}
  {$IFDEF INCLUDE_TIGER}
  HASH_TIGER128     = HASH_INITIAL + $11;
  HASH_TIGER160     = HASH_INITIAL + $12;
  HASH_TIGER192     = HASH_INITIAL + $13;
  {$ENDIF}
  {$IFDEF INCLUDE_RMD}
  HASH_RIPEMD128    = HASH_INITIAL + $14;
  HASH_RIPEMD160    = HASH_INITIAL + $15;
  {$ENDIF}
```

</br>

### Availble hash types:
* HASH_MD2, HASH_MD4, HASH_MD5,
* HASH_CRC32, HASH_CRC32B,
* HASH_ADLER32,
* HASH_GOST,
* HASH_HAVAL128, HASH_HAVAL160,
* HASH_HAVAL192, HASH_HAVAL224,
* HASH_HAVAL256,
* HASH_SHA1, HASH_SHA256, HASH_SHA384, HASH_SHA512,
* HASH_TIGER128, HASH_TIGER160, HASH_TIGER192,
* HASH_RIPEMD128, HASH_RIPEMD160.

</br>

### Low-level functions:
function HashInit(Context: PHashContext; HashType: LongWord): LongWord;
First of all you have to initialize hash context by calling the HashInit function. If everything is ok, function returns HASH_NOERROR, otherwise you can call the HashErrorToStr function to understand the error. After calling HashInit you can change lParam and wParam: in HASH_HAVAL(128-256) and HASH_TIGER(128-192) you can set lParam to specify number of passes to use (default 3).

function HashUpdate(Context: PHashContext; SrcBuf: Pointer; BufLen: LongWord): LongWord;
Every byte of the data buffer should be passed through HashUpdate function. SrcBuf -- pointer to source buffer (or only the part of it), BufLen is the length of this buffer/part. If everything is ok, function returns HASH_NOERROR.

function HashFinal(Context: PHashContext; var DestHash: String): LongWord;
After calling the HashInit function you MUST call HashFinal function to free used data (Context isn't freed). If everything is ok, then hash of the buffer is stored in the DestHash string and HASH_NOERROR is returned. You shouldn't finalize initialized context more the one time.

So, low level hashing consists of 3 parts: Initializing, Updating and Finalizing.

### Example:
```pascal
  uses
    CryptoAPI;
  <......>
  procedure TestHash;
  var
    buf: array[0..2] of Char;   //Source buffer
    ctx: THashContext;          //Hash context
    ret: LongWord;              //Error status
    S: String;                  //String for hash
  begin
    buf[0] := 'a'; buf[1] := 'b'; buf[2] := 'c'; //store abc in the buffer
    HashInit(@ctx, HASH_SHA1);  //Initialize
    HashUpdate(@ctx, @buf, 3);  //Update the whole buffer
    {
      equivalent to:
      HashUpdate(@ctx, @(buf[0]), 1); //Update first byte ('a')
      HashUpdate(@ctx, @(buf[1]), 1); //Update second byte ('b')
      HashUpdate(@ctx, @(buf[2]), 1); //Update third byte ('c')
      equivalent to:
      HashUpdate(@ctx, @(buf[0]), 1); //Update first byte ('a')
      HashUpdate(@ctx, @(buf[1]), 2); //Update last two byts ('bc')
    }
    HashFinal(@ctx, S);         //Finalize
    Memo1.Lines.Add(S);         //in this case S = a9993e364706816aba3e25717850c26c9cd0d89d, this is a hash of 'abc'
  end;
```

</br>

### High-level functions:
function HashStr(HashType: LongWord; SrcStr: String; var DestHash: String): LongWord;
Get hash of a string, where SrcStr is the source string. DestHash receives hash of this string.

function HashBuf(HashType: LongWord; SrcBuf: Pointer; BufLen: LongWord; var DestHash: String): LongWord;
Get hash of a buffer, where SrcStr is the source buffer and BufLen -- length of this buffer.

function HashFile(HashType: LongWord; FileName: String; var DestHash: String): LongWord;
Get hash of a file, FileName -- path to file ('C:\file.txt').

function HashFilePartial(HashType: LongWord; FileName: String; FlOffsetLow, FlOffsetHigh: LongWord; var DestHash: String): LongWord;
Get hash of a part of the file, where FlOffetLow position of the first byte to hash from and FlOffsetHigh is the end position.

Return values of theese function are the same as in low level.

### Example:
```pascal
  uses
    CryptoAPI;
  <......>
  procedure TestHash2;
  var
    S: String;
    ret: LongWord;
  begin
    ret := HashStr(HASH_SHA1, 'abc', S);
    if ret <> HASH_NOERROR then
      Memo1.Lines.Add(HashErrorToStr(ret))
    else
      Memo1.Lines.Add(S);
  end;
```

</br>

### Functions and Constants:
function HashErrorToStr(Error: LongWord): String;
This function converts decimal Error returned by hash function to it's string representation.

Use HASH_MAX_TYPES constant to get current amount of availbe algorithms.

function EnumHashTypes(StoreToArr: Pointer; MaxItems: LongWord): LongWord;
StoreToArray is a pointer to array of LongWord which receives all avaible HashTypes, maximum number of elements in this array should be passed through the MaxItems param. Number of elements stored in StoreToArr is returned as a result.

### Example:
```pascal
  uses
    CryptoAPI;
  <......>
  procedure DoSomething;
  var
    i, HAv: LongWord;
    EnumArray: array[0..HASH_MAX_TYPES - 1] of LongWord;  
  begin
    HAv := EnumHashTypes(@EnumArray, SizeOf(EnumArray));
    for i := 0 to HAv - 1 do
    begin
      { 
        Do something with each HashType (EnumArray[i])
      }
    end;
  end;
```

</br>

### HashLib! testing
I've made a unit(HashTest.pas) which helps with testing the whole library for proper working.

function HashTestLibrary: LongWord;
This function verifies every hash algorithm and returns HASH_NOERROR if there are no errors, otherwise you can understand happend error by calling HashErrorToStr function with the return value.

function HashTestHash(HashType: LongWord): LongWord;
This function verifies specified algorithm and returns error status as in HashTestLibrary.

It's strongly recommended to test algorithms before using them.

Size & perfomance issues
You can remove {$DEFINE INCLUDE_...$} lines from CryptoAPI unit if you don't use this algorithm, it will strongly reduce filesize, also pay attention on comments in source files: some files contain {$DEFINE USE_ASM} line in the header, it's possible to remove theese lines but it will decrease the overal perfomance of some algorithms.
