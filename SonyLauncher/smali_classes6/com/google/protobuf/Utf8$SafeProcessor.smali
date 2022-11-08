.class final Lcom/google/protobuf/Utf8$SafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 860
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8([BII)I
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 1098
    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    .line 1099
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1102
    :cond_0
    if-lt p1, p2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8NonAscii([BII)I

    move-result v0

    :goto_1
    return v0
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 1112
    :goto_0
    if-lt p1, p2, :cond_0

    .line 1113
    const/4 v0, 0x0

    return v0

    .line 1115
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    aget-byte p1, p0, p1

    move v1, p1

    .local v1, "byte1":I
    if-gez p1, :cond_d

    .line 1117
    const/16 p1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v1, p1, :cond_3

    .line 1120
    if-lt v0, p2, :cond_1

    .line 1122
    return v1

    .line 1127
    :cond_1
    const/16 p1, -0x3e

    if-lt v1, p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_b

    move v0, p1

    .line 1128
    .end local p1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    return v2

    .line 1130
    :cond_3
    const/16 v4, -0x10

    if-ge v1, v4, :cond_8

    .line 1133
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_4

    .line 1134
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    move-result p1

    return p1

    .line 1136
    :cond_4
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    aget-byte v0, p0, v0

    move v5, v0

    .local v5, "byte2":I
    if-gt v0, v3, :cond_7

    const/16 v0, -0x60

    if-ne v1, p1, :cond_5

    if-lt v5, v0, :cond_7

    :cond_5
    const/16 p1, -0x13

    if-ne v1, p1, :cond_6

    if-ge v5, v0, :cond_7

    :cond_6
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v4

    if-le v0, v3, :cond_b

    move v4, p1

    .line 1143
    .end local p1    # "index":I
    .restart local v4    # "index":I
    :cond_7
    return v2

    .line 1148
    .end local v4    # "index":I
    .end local v5    # "byte2":I
    .restart local v0    # "index":I
    :cond_8
    add-int/lit8 p1, p2, -0x2

    if-lt v0, p1, :cond_9

    .line 1149
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    move-result p1

    return p1

    .line 1151
    :cond_9
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v0

    move v4, v0

    .local v4, "byte2":I
    if-gt v0, v3, :cond_a

    shl-int/lit8 v0, v1, 0x1c

    add-int/lit8 v5, v4, 0x70

    add-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_a

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    aget-byte p1, p0, p1

    if-gt p1, v3, :cond_c

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_b

    :cond_a
    goto :goto_1

    .line 1164
    .end local v1    # "byte1":I
    .end local v4    # "byte2":I
    :cond_b
    goto :goto_0

    .line 1151
    .end local p1    # "index":I
    .restart local v0    # "index":I
    .restart local v1    # "byte1":I
    .restart local v4    # "byte2":I
    :cond_c
    move p1, v0

    .line 1161
    .end local v0    # "index":I
    .restart local p1    # "index":I
    :goto_1
    return v2

    .line 1115
    .end local v4    # "byte2":I
    .end local p1    # "index":I
    .restart local v0    # "index":I
    :cond_d
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method decodeUtf8([BII)Ljava/lang/String;
    .locals 15
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 958
    move-object/from16 v0, p1

    move/from16 v1, p3

    or-int v2, p2, v1

    array-length v3, v0

    sub-int v3, v3, p2

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_b

    .line 963
    move/from16 v2, p2

    .line 964
    .local v2, "offset":I
    add-int v5, v2, v1

    .line 968
    .local v5, "limit":I
    new-array v12, v1, [C

    .line 969
    .local v12, "resultArr":[C
    const/4 v6, 0x0

    .line 973
    .local v6, "resultPos":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 974
    aget-byte v7, v0, v2

    .line 975
    .local v7, "b":B
    invoke-static {v7}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v8

    if-nez v8, :cond_0

    .line 976
    goto :goto_1

    .line 978
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 979
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "resultPos":I
    .local v8, "resultPos":I
    invoke-static {v7, v12, v6}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 980
    .end local v7    # "b":B
    move v6, v8

    goto :goto_0

    .line 982
    .end local v8    # "resultPos":I
    .restart local v6    # "resultPos":I
    :cond_1
    :goto_1
    move v11, v6

    .end local v6    # "resultPos":I
    .local v11, "resultPos":I
    :goto_2
    if-ge v2, v5, :cond_a

    .line 983
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    aget-byte v2, v0, v2

    .line 984
    .local v2, "byte1":B
    invoke-static {v2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 985
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "resultPos":I
    .local v7, "resultPos":I
    invoke-static {v2, v12, v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 988
    :goto_3
    if-ge v6, v5, :cond_3

    .line 989
    aget-byte v8, v0, v6

    .line 990
    .local v8, "b":B
    invoke-static {v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v9

    if-nez v9, :cond_2

    .line 991
    goto :goto_4

    .line 993
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 994
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "resultPos":I
    .local v9, "resultPos":I
    invoke-static {v8, v12, v7}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 995
    .end local v8    # "b":B
    move v7, v9

    goto :goto_3

    .line 1025
    .end local v2    # "byte1":B
    .end local v9    # "resultPos":I
    .restart local v7    # "resultPos":I
    :cond_3
    :goto_4
    move v2, v6

    move v11, v7

    goto :goto_5

    .line 996
    .end local v7    # "resultPos":I
    .restart local v2    # "byte1":B
    .restart local v11    # "resultPos":I
    :cond_4
    invoke-static {v2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 997
    if-ge v6, v5, :cond_5

    .line 1000
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    aget-byte v6, v0, v6

    add-int/lit8 v8, v11, 0x1

    .end local v11    # "resultPos":I
    .local v8, "resultPos":I
    invoke-static {v2, v6, v12, v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v2, v7

    move v11, v8

    goto :goto_5

    .line 998
    .end local v7    # "offset":I
    .end local v8    # "resultPos":I
    .restart local v6    # "offset":I
    .restart local v11    # "resultPos":I
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 1001
    :cond_6
    invoke-static {v2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1002
    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_7

    .line 1005
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    aget-byte v6, v0, v6

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    aget-byte v7, v0, v7

    add-int/lit8 v9, v11, 0x1

    .end local v11    # "resultPos":I
    .restart local v9    # "resultPos":I
    invoke-static {v2, v6, v7, v12, v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v2, v8

    move v11, v9

    goto :goto_5

    .line 1003
    .end local v8    # "offset":I
    .end local v9    # "resultPos":I
    .restart local v6    # "offset":I
    .restart local v11    # "resultPos":I
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 1012
    :cond_8
    add-int/lit8 v7, v5, -0x2

    if-ge v6, v7, :cond_9

    .line 1015
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    aget-byte v8, v0, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    aget-byte v9, v0, v7

    add-int/lit8 v13, v6, 0x1

    .end local v6    # "offset":I
    .local v13, "offset":I
    aget-byte v10, v0, v6

    add-int/lit8 v14, v11, 0x1

    .end local v11    # "resultPos":I
    .local v14, "resultPos":I
    move v6, v2

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v12

    invoke-static/range {v6 .. v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    .line 1023
    add-int/2addr v14, v4

    move v2, v13

    move v11, v14

    .line 1025
    .end local v13    # "offset":I
    .end local v14    # "resultPos":I
    .local v2, "offset":I
    .restart local v11    # "resultPos":I
    :goto_5
    goto :goto_2

    .line 1013
    .local v2, "byte1":B
    .restart local v6    # "offset":I
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 1027
    .end local v6    # "offset":I
    .local v2, "offset":I
    :cond_a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12, v3, v11}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 959
    .end local v2    # "offset":I
    .end local v5    # "limit":I
    .end local v11    # "resultPos":I
    .end local v12    # "resultArr":[C
    :cond_b
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, v0

    .line 960
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v5, v4

    const-string v3, "buffer length=%d, index=%d, size=%d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1034
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$SafeProcessor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 10
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1039
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1040
    .local v0, "utf16Length":I
    move v1, p3

    .line 1041
    .local v1, "j":I
    const/4 v2, 0x0

    .line 1042
    .local v2, "i":I
    add-int v3, p3, p4

    .line 1045
    .local v3, "limit":I
    :goto_0
    const/16 v4, 0x80

    if-ge v2, v0, :cond_0

    add-int v5, v2, v1

    if-ge v5, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    if-ge v5, v4, :cond_0

    .line 1046
    add-int v4, v1, v2

    int-to-byte v5, v6

    aput-byte v5, p2, v4

    .line 1045
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1048
    .end local v6    # "c":C
    :cond_0
    if-ne v2, v0, :cond_1

    .line 1049
    add-int v4, v1, v0

    return v4

    .line 1051
    :cond_1
    add-int/2addr v1, v2

    .line 1052
    :goto_1
    if-ge v2, v0, :cond_a

    .line 1053
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1054
    .local v5, "c":C
    if-ge v5, v4, :cond_2

    if-ge v1, v3, :cond_2

    .line 1055
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .local v6, "j":I
    int-to-byte v7, v5

    aput-byte v7, p2, v1

    move v1, v6

    goto/16 :goto_2

    .line 1056
    .end local v6    # "j":I
    .restart local v1    # "j":I
    :cond_2
    const/16 v6, 0x800

    if-ge v5, v6, :cond_3

    add-int/lit8 v6, v3, -0x2

    if-gt v1, v6, :cond_3

    .line 1057
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    ushr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    .line 1058
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .restart local v1    # "j":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    goto :goto_2

    .line 1059
    :cond_3
    const v6, 0xdfff

    const v7, 0xd800

    if-lt v5, v7, :cond_4

    if-ge v6, v5, :cond_5

    :cond_4
    add-int/lit8 v8, v3, -0x3

    if-gt v1, v8, :cond_5

    .line 1061
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    ushr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    .line 1062
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .restart local v1    # "j":I
    ushr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    .line 1063
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    move v1, v6

    goto :goto_2

    .line 1064
    .end local v6    # "j":I
    .restart local v1    # "j":I
    :cond_5
    add-int/lit8 v8, v3, -0x4

    if-gt v1, v8, :cond_7

    .line 1068
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v6, v7, :cond_6

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v6

    .local v7, "low":C
    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1071
    invoke-static {v5, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 1072
    .local v6, "codePoint":I
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "j":I
    .local v8, "j":I
    ushr-int/lit8 v9, v6, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, p2, v1

    .line 1073
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "j":I
    .restart local v1    # "j":I
    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 1074
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "j":I
    .restart local v8    # "j":I
    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v1

    .line 1075
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "j":I
    .restart local v1    # "j":I
    and-int/lit8 v9, v6, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 1076
    .end local v6    # "codePoint":I
    .end local v7    # "low":C
    nop

    .line 1052
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1069
    :cond_6
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v4, v6, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 1079
    :cond_7
    if-gt v7, v5, :cond_9

    if-gt v5, v6, :cond_9

    add-int/lit8 v4, v2, 0x1

    .line 1080
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_8

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1081
    :cond_8
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v4, v2, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 1083
    :cond_9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1086
    .end local v5    # "c":C
    :cond_a
    return v1
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 1092
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$SafeProcessor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 1093
    return-void
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 7
    .param p1, "state"    # I
    .param p2, "bytes"    # [B
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 863
    if-eqz p1, :cond_11

    .line 871
    if-lt p3, p4, :cond_0

    .line 872
    return p1

    .line 874
    :cond_0
    int-to-byte v0, p1

    .line 876
    .local v0, "byte1":I
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_3

    .line 881
    const/16 v1, -0x3e

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "index":I
    .local v1, "index":I
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v1

    goto/16 :goto_4

    .line 884
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_2
    :goto_0
    return v2

    .line 886
    :cond_3
    const/16 v4, -0x10

    if-ge v0, v4, :cond_a

    .line 890
    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    .line 891
    .local v4, "byte2":I
    if-nez v4, :cond_5

    .line 892
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .local v5, "index":I
    aget-byte v4, p2, p3

    .line 893
    if-lt v5, p4, :cond_4

    .line 894
    invoke-static {v0, v4}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 893
    :cond_4
    move p3, v5

    .line 897
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_5
    if-gt v4, v3, :cond_9

    const/16 v5, -0x60

    if-ne v0, v1, :cond_6

    if-lt v4, v5, :cond_9

    :cond_6
    const/16 v1, -0x13

    if-ne v0, v1, :cond_7

    if-ge v4, v5, :cond_9

    :cond_7
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "index":I
    .restart local v1    # "index":I
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_8

    move p3, v1

    goto :goto_1

    .line 906
    .end local v4    # "byte2":I
    :cond_8
    move p3, v1

    goto :goto_4

    .line 904
    .end local v1    # "index":I
    .restart local v4    # "byte2":I
    .restart local p3    # "index":I
    :cond_9
    :goto_1
    return v2

    .line 910
    .end local v4    # "byte2":I
    :cond_a
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    .line 911
    .local v1, "byte2":I
    const/4 v4, 0x0

    .line 912
    .local v4, "byte3":I
    if-nez v1, :cond_c

    .line 913
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    aget-byte v1, p2, p3

    .line 914
    if-lt v5, p4, :cond_b

    .line 915
    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 914
    :cond_b
    move p3, v5

    goto :goto_2

    .line 918
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_c
    shr-int/lit8 v5, p1, 0x10

    int-to-byte v4, v5

    .line 920
    :goto_2
    if-nez v4, :cond_e

    .line 921
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    aget-byte v4, p2, p3

    .line 922
    if-lt v5, p4, :cond_d

    .line 923
    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p3

    return p3

    .line 922
    :cond_d
    move p3, v5

    .line 931
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_e
    if-gt v1, v3, :cond_10

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_10

    if-gt v4, v3, :cond_10

    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_f

    move p3, v5

    goto :goto_3

    :cond_f
    move p3, v5

    goto :goto_4

    .line 941
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_10
    :goto_3
    return v2

    .line 946
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    .end local v4    # "byte3":I
    :cond_11
    :goto_4
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8([BII)I

    move-result v0

    return v0
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .locals 1
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 952
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method
