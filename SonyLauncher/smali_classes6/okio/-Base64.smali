.class public final Lokio/-Base64;
.super Ljava/lang/Object;
.source "-Base64.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0000\u001a\u0016\u0010\u0008\u001a\u00020\u0007*\u00020\u00012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0001H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\n"
    }
    d2 = {
        "BASE64",
        "",
        "getBASE64",
        "()[B",
        "BASE64_URL_SAFE",
        "getBASE64_URL_SAFE",
        "decodeBase64ToArray",
        "",
        "encodeBase64",
        "map",
        "external__okio__android_common__okio-lib"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BASE64:[B

.field private static final BASE64_URL_SAFE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64:[B

    .line 29
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-void
.end method

.method public static final decodeBase64ToArray(Ljava/lang/String;)[B
    .locals 17
    .param p0, "$this$decodeBase64ToArray"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 34
    .local v1, "limit":I
    :goto_0
    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-lez v1, :cond_1

    .line 35
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 36
    .local v6, "c":C
    const/16 v7, 0x3d

    if-eq v6, v7, :cond_0

    if-eq v6, v5, :cond_0

    if-eq v6, v4, :cond_0

    if-eq v6, v3, :cond_0

    if-eq v6, v2, :cond_0

    .line 37
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .end local v6    # "c":C
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    int-to-long v6, v1

    const-wide/16 v8, 0x6

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    long-to-int v6, v6

    new-array v6, v6, [B

    .line 44
    .local v6, "out":[B
    const/4 v7, 0x0

    .line 45
    .local v7, "outCount":I
    const/4 v8, 0x0

    .line 47
    .local v8, "inCount":I
    const/4 v9, 0x0

    .line 48
    .local v9, "word":I
    const/4 v11, 0x0

    :cond_2
    :goto_2
    const/4 v12, 0x0

    if-ge v11, v1, :cond_f

    move v13, v11

    .local v13, "pos":I
    add-int/lit8 v11, v11, 0x1

    .line 49
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .local v14, "c":C
    const/4 v15, 0x0

    .line 52
    .local v15, "bits":I
    const/16 v10, 0x41

    const/16 v16, 0x1

    if-gt v10, v14, :cond_3

    const/16 v10, 0x5b

    if-ge v14, v10, :cond_3

    move/from16 v10, v16

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 56
    add-int/lit8 v10, v14, -0x41

    .end local v15    # "bits":I
    .local v10, "bits":I
    goto :goto_9

    .line 57
    .end local v10    # "bits":I
    .restart local v15    # "bits":I
    :cond_4
    const/16 v10, 0x61

    if-gt v10, v14, :cond_5

    const/16 v10, 0x7b

    if-ge v14, v10, :cond_5

    move/from16 v10, v16

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_6

    .line 61
    add-int/lit8 v10, v14, -0x47

    .end local v15    # "bits":I
    .restart local v10    # "bits":I
    goto :goto_9

    .line 62
    .end local v10    # "bits":I
    .restart local v15    # "bits":I
    :cond_6
    const/16 v10, 0x30

    if-gt v10, v14, :cond_7

    const/16 v10, 0x3a

    if-ge v14, v10, :cond_7

    goto :goto_5

    :cond_7
    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_8

    .line 66
    add-int/lit8 v10, v14, 0x4

    .end local v15    # "bits":I
    .restart local v10    # "bits":I
    goto :goto_9

    .line 67
    .end local v10    # "bits":I
    .restart local v15    # "bits":I
    :cond_8
    const/16 v10, 0x2b

    if-eq v14, v10, :cond_e

    const/16 v10, 0x2d

    if-ne v14, v10, :cond_9

    goto :goto_8

    .line 69
    :cond_9
    const/16 v10, 0x2f

    if-eq v14, v10, :cond_d

    const/16 v10, 0x5f

    if-ne v14, v10, :cond_a

    goto :goto_7

    .line 71
    :cond_a
    if-eq v14, v5, :cond_c

    if-eq v14, v4, :cond_c

    if-eq v14, v3, :cond_c

    if-ne v14, v2, :cond_b

    goto :goto_6

    .line 74
    :cond_b
    return-object v12

    .line 72
    :cond_c
    :goto_6
    goto :goto_2

    .line 70
    :cond_d
    :goto_7
    const/16 v10, 0x3f

    .end local v15    # "bits":I
    .restart local v10    # "bits":I
    goto :goto_9

    .line 68
    .end local v10    # "bits":I
    .restart local v15    # "bits":I
    :cond_e
    :goto_8
    const/16 v10, 0x3e

    .line 78
    .end local v15    # "bits":I
    .restart local v10    # "bits":I
    :goto_9
    shl-int/lit8 v12, v9, 0x6

    or-int v9, v12, v10

    .line 81
    add-int/lit8 v8, v8, 0x1

    .line 82
    rem-int/lit8 v12, v8, 0x4

    if-nez v12, :cond_2

    .line 83
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "outCount":I
    .local v12, "outCount":I
    shr-int/lit8 v15, v9, 0x10

    int-to-byte v15, v15

    aput-byte v15, v6, v7

    .line 84
    add-int/lit8 v7, v12, 0x1

    .end local v12    # "outCount":I
    .restart local v7    # "outCount":I
    shr-int/lit8 v15, v9, 0x8

    int-to-byte v15, v15

    aput-byte v15, v6, v12

    .line 85
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "outCount":I
    .restart local v12    # "outCount":I
    int-to-byte v15, v9

    aput-byte v15, v6, v7

    move v7, v12

    .end local v10    # "bits":I
    .end local v14    # "c":C
    goto :goto_2

    .line 89
    .end local v12    # "outCount":I
    .end local v13    # "pos":I
    .restart local v7    # "outCount":I
    :cond_f
    rem-int/lit8 v2, v8, 0x4

    .line 90
    .local v2, "lastWordChars":I
    packed-switch v2, :pswitch_data_0

    goto :goto_a

    .line 102
    :pswitch_0
    shl-int/lit8 v9, v9, 0x6

    .line 103
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "outCount":I
    .local v3, "outCount":I
    shr-int/lit8 v4, v9, 0x10

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    .line 104
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "outCount":I
    .restart local v7    # "outCount":I
    shr-int/lit8 v4, v9, 0x8

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    goto :goto_a

    .line 97
    :pswitch_1
    shl-int/lit8 v9, v9, 0xc

    .line 98
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "outCount":I
    .restart local v3    # "outCount":I
    shr-int/lit8 v4, v9, 0x10

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    move v7, v3

    goto :goto_a

    .line 93
    .end local v3    # "outCount":I
    .restart local v7    # "outCount":I
    :pswitch_2
    return-object v12

    .line 109
    :goto_a
    array-length v3, v6

    if-ne v7, v3, :cond_10

    return-object v6

    .line 112
    :cond_10
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string v4, "copyOf(this, newSize)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .locals 11
    .param p0, "$this$encodeBase64"    # [B
    .param p1, "map"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 117
    .local v0, "length":I
    new-array v1, v0, [B

    .line 118
    .local v1, "out":[B
    const/4 v2, 0x0

    .line 119
    .local v2, "index":I
    array-length v3, p0

    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    .line 120
    .local v3, "end":I
    const/4 v4, 0x0

    .line 121
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 122
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, p0, v4

    .line 123
    .local v4, "b0":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-byte v5, p0, v5

    .line 124
    .local v5, "b1":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-byte v6, p0, v6

    .line 125
    .local v6, "b2":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .local v8, "index":I
    and-int/lit16 v9, v4, 0xff

    shr-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 126
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v9, v4, 0x3

    shl-int/lit8 v9, v9, 0x4

    and-int/lit16 v10, v5, 0xff

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, v1, v8

    .line 127
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .restart local v8    # "index":I
    and-int/lit8 v9, v5, 0xf

    shl-int/lit8 v9, v9, 0x2

    and-int/lit16 v10, v6, 0xff

    shr-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 128
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v9, v6, 0x3f

    aget-byte v9, p1, v9

    aput-byte v9, v1, v8

    move v4, v7

    .end local v4    # "b0":I
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    goto :goto_0

    .line 130
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_0
    array-length v5, p0

    sub-int/2addr v5, v3

    const/16 v6, 0x3d

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 139
    :pswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, p0, v4

    .line 140
    .local v4, "b0":I
    aget-byte v7, p0, v5

    .line 141
    .local v7, "b1":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .restart local v8    # "index":I
    and-int/lit16 v9, v4, 0xff

    shr-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 142
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v9, v4, 0x3

    shl-int/lit8 v9, v9, 0x4

    and-int/lit16 v10, v7, 0xff

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, v1, v8

    .line 143
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .restart local v8    # "index":I
    and-int/lit8 v9, v7, 0xf

    shl-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    aput-byte v9, v1, v2

    .line 144
    aput-byte v6, v1, v8

    move v4, v5

    move v2, v8

    goto :goto_1

    .line 132
    .end local v5    # "i":I
    .end local v7    # "b1":I
    .end local v8    # "index":I
    .restart local v2    # "index":I
    .local v4, "i":I
    :pswitch_1
    aget-byte v5, p0, v4

    .line 133
    .local v5, "b0":I
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .local v7, "index":I
    and-int/lit16 v8, v5, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    aput-byte v8, v1, v2

    .line 134
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "index":I
    .restart local v2    # "index":I
    and-int/lit8 v8, v5, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v8, p1, v8

    aput-byte v8, v1, v7

    .line 135
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .restart local v7    # "index":I
    aput-byte v6, v1, v2

    .line 136
    aput-byte v6, v1, v7

    move v2, v7

    .line 147
    .end local v5    # "b0":I
    .end local v7    # "index":I
    .restart local v2    # "index":I
    :goto_1
    invoke-static {v1}, Lokio/-Platform;->toUtf8String([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 115
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lokio/-Base64;->BASE64:[B

    :cond_0
    invoke-static {p0, p1}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getBASE64()[B
    .locals 1

    .line 26
    sget-object v0, Lokio/-Base64;->BASE64:[B

    return-object v0
.end method

.method public static final getBASE64_URL_SAFE()[B
    .locals 1

    .line 28
    sget-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-object v0
.end method
