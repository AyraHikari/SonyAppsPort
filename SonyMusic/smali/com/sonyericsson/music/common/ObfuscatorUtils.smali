.class public Lcom/sonyericsson/music/common/ObfuscatorUtils;
.super Ljava/lang/Object;
.source "ObfuscatorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deobfuscate([I)Ljava/lang/String;
    .locals 10

    .line 15
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget v0, p0, v0

    mul-int/lit8 v2, v0, 0x2

    .line 16
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v1, v0, :cond_3

    if-lez v1, :cond_0

    .line 18
    rem-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v5, -0x1

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    mul-int/lit8 v8, v8, -0x1

    .line 22
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 23
    rem-int/lit8 v8, v1, 0x4

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v8

    aget v9, p0, v9

    mul-int/lit8 v8, v8, 0x8

    shr-int v8, v9, v8

    and-int/lit16 v8, v8, 0xff

    goto :goto_1

    :cond_1
    sub-int v8, v5, v6

    if-le v7, v8, :cond_2

    .line 24
    rem-int/lit8 v8, v1, 0x4

    add-int/lit8 v9, v5, -0x1

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    aget v9, p0, v9

    mul-int/lit8 v8, v8, 0x8

    rsub-int/lit8 v8, v8, 0x18

    shr-int v8, v9, v8

    and-int/lit16 v8, v8, 0xff

    goto :goto_1

    .line 25
    :cond_2
    rem-int/lit8 v8, v1, 0x4

    add-int/lit8 v9, v5, 0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v8

    aget v9, p0, v9

    mul-int/lit8 v8, v8, 0xe

    rsub-int/lit8 v8, v8, 0x20

    shr-int v8, v9, v8

    and-int/lit16 v8, v8, 0xff

    :goto_1
    int-to-byte v8, v8

    aput-byte v8, v2, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    move v4, v7

    goto :goto_0

    .line 27
    :cond_3
    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v2, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method
