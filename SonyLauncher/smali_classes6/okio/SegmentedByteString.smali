.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n+ 2 SegmentedByteString.kt\nokio/internal/SegmentedByteStringKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n59#2,12:133\n59#2,12:145\n100#2:157\n101#2,26:159\n130#2,5:185\n137#2:190\n140#2,3:191\n59#2,8:194\n143#2,6:202\n67#2,4:208\n149#2:212\n59#2,12:213\n153#2:225\n81#2,10:226\n154#2,9:236\n91#2,4:245\n163#2,2:249\n172#2,4:251\n81#2,10:255\n176#2,3:265\n91#2,4:268\n179#2:272\n188#2,8:273\n81#2,10:281\n196#2,3:291\n91#2,4:294\n199#2:298\n203#2,4:299\n211#2,6:303\n59#2,8:309\n217#2,7:317\n67#2,4:324\n224#2,2:328\n1#3:158\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n53#1:133,12\n65#1:145,12\n77#1:157\n77#1:159,26\n79#1:185,5\n81#1:190\n83#1:191,3\n83#1:194,8\n83#1:202,6\n83#1:208,4\n83#1:212\n89#1:213,12\n95#1:225\n95#1:226,10\n95#1:236,9\n95#1:245,4\n95#1:249,2\n102#1:251,4\n102#1:255,10\n102#1:265,3\n102#1:268,4\n102#1:272\n109#1:273,8\n109#1:281,10\n109#1:291,3\n109#1:294,4\n109#1:298\n123#1:299,4\n125#1:303,6\n125#1:309,8\n125#1:317,7\n125#1:324,4\n125#1:328,2\n77#1:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0005\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0008\u0000\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0015\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\r\u0010\u0019\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008\u001bJ\u0008\u0010\u001c\u001a\u00020\u001aH\u0016J\u0008\u0010\u001d\u001a\u00020\u0010H\u0016J\u001d\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0001H\u0010\u00a2\u0006\u0002\u0008 J\u0018\u0010!\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J\r\u0010#\u001a\u00020\u0004H\u0010\u00a2\u0006\u0002\u0008$J\u0015\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008(J\u0018\u0010)\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u001aH\u0016J\u0008\u00104\u001a\u00020\u0001H\u0016J\u0008\u00105\u001a\u00020\u0001H\u0016J\u0008\u00106\u001a\u00020\u0004H\u0016J\u0008\u00107\u001a\u00020\u0001H\u0002J\u0008\u00108\u001a\u00020\u0010H\u0016J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J%\u00109\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008?J\u0008\u0010@\u001a\u00020AH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006B"
    }
    d2 = {
        "Lokio/SegmentedByteString;",
        "Lokio/ByteString;",
        "segments",
        "",
        "",
        "directory",
        "",
        "([[B[I)V",
        "getDirectory$external__okio__android_common__okio_lib",
        "()[I",
        "getSegments$external__okio__android_common__okio_lib",
        "()[[B",
        "[[B",
        "asByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "base64",
        "",
        "base64Url",
        "digest",
        "algorithm",
        "digest$external__okio__android_common__okio_lib",
        "equals",
        "",
        "other",
        "",
        "getSize",
        "",
        "getSize$external__okio__android_common__okio_lib",
        "hashCode",
        "hex",
        "hmac",
        "key",
        "hmac$external__okio__android_common__okio_lib",
        "indexOf",
        "fromIndex",
        "internalArray",
        "internalArray$external__okio__android_common__okio_lib",
        "internalGet",
        "",
        "pos",
        "internalGet$external__okio__android_common__okio_lib",
        "lastIndexOf",
        "rangeEquals",
        "offset",
        "otherOffset",
        "byteCount",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "substring",
        "beginIndex",
        "endIndex",
        "toAsciiLowercase",
        "toAsciiUppercase",
        "toByteArray",
        "toByteString",
        "toString",
        "write",
        "",
        "out",
        "Ljava/io/OutputStream;",
        "buffer",
        "Lokio/Buffer;",
        "write$external__okio__android_common__okio_lib",
        "writeReplace",
        "Ljava/lang/Object;",
        "external__okio__android_common__okio-lib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final transient directory:[I

.field private final transient segments:[[B


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1
    .param p1, "segments"    # [[B
    .param p2, "directory"    # [I

    const-string v0, "segments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 37
    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 38
    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    .line 36
    return-void
.end method

.method private final toByteString()Lokio/ByteString;
    .locals 2

    .line 119
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 130
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 85
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "wrap(toByteArray()).asReadOnlyBuffer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;
    .locals 13
    .param p1, "algorithm"    # Ljava/lang/String;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "$this$digest_u24lambda_u2d1":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .line 53
    .local v1, "$i$a$-run-SegmentedByteString$digest$digestBytes$1":I
    move-object v2, p0

    .local v2, "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    const/4 v3, 0x0

    .line 133
    .local v3, "$i$f$forEachSegment":I
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v4, v4

    .line 134
    .local v4, "segmentCount$iv":I
    const/4 v5, 0x0

    .line 135
    .local v5, "s$iv":I
    const/4 v6, 0x0

    .line 136
    .local v6, "pos$iv":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 137
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v7

    add-int v8, v4, v5

    aget v7, v7, v8

    .line 138
    .local v7, "segmentPos$iv":I
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v8

    aget v8, v8, v5

    .line 140
    .local v8, "nextSegmentOffset$iv":I
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v9

    aget-object v9, v9, v5

    .local v9, "data":[B
    sub-int v10, v8, v6

    .local v10, "byteCount":I
    move v11, v7

    .local v11, "offset":I
    const/4 v12, 0x0

    .line 54
    .local v12, "$i$a$-forEachSegment-SegmentedByteString$digest$digestBytes$1$1":I
    invoke-virtual {v0, v9, v11, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 55
    nop

    .line 141
    .end local v9    # "data":[B
    .end local v10    # "byteCount":I
    .end local v11    # "offset":I
    .end local v12    # "$i$a$-forEachSegment-SegmentedByteString$digest$digestBytes$1$1":I
    move v6, v8

    .line 142
    add-int/lit8 v5, v5, 0x1

    .end local v7    # "segmentPos$iv":I
    .end local v8    # "nextSegmentOffset$iv":I
    goto :goto_0

    .line 144
    :cond_0
    nop

    .line 56
    .end local v2    # "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    .end local v3    # "$i$f$forEachSegment":I
    .end local v4    # "segmentCount$iv":I
    .end local v5    # "s$iv":I
    .end local v6    # "pos$iv":I
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 52
    .end local v0    # "$this$digest_u24lambda_u2d1":Ljava/security/MessageDigest;
    .end local v1    # "$i$a$-run-SegmentedByteString$digest$digestBytes$1":I
    nop

    .line 58
    .local v0, "digestBytes":[B
    new-instance v1, Lokio/ByteString;

    const-string v2, "digestBytes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 123
    move-object v0, p0

    .local v0, "$this$commonEquals$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 299
    .local v1, "$i$f$commonEquals":I
    nop

    .line 300
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    instance-of v4, p1, Lokio/ByteString;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v4, p1

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v5

    invoke-virtual {v0, v3, v4, v3, v5}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 302
    :cond_2
    move v2, v3

    .line 299
    :goto_0
    nop

    .line 123
    .end local v0    # "$this$commonEquals$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonEquals":I
    return v2
.end method

.method public final getDirectory$external__okio__android_common__okio_lib()[I
    .locals 1

    .line 38
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    return-object v0
.end method

.method public final getSegments$external__okio__android_common__okio_lib()[[B
    .locals 1

    .line 37
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    return-object v0
.end method

.method public getSize$external__okio__android_common__okio_lib()I
    .locals 4

    .line 81
    move-object v0, p0

    .local v0, "$this$commonGetSize$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 190
    .local v1, "$i$f$commonGetSize":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v2

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v0, v2, v3

    .line 81
    .end local v0    # "$this$commonGetSize$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonGetSize":I
    return v0
.end method

.method public hashCode()I
    .locals 18

    .line 125
    move-object/from16 v0, p0

    .local v0, "$this$commonHashCode$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 303
    .local v1, "$i$f$commonHashCode":I
    const/4 v2, 0x0

    .local v2, "result$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getHashCode$external__okio__android_common__okio_lib()I

    move-result v2

    .line 304
    if-eqz v2, :cond_0

    goto :goto_2

    .line 307
    :cond_0
    const/4 v2, 0x1

    .line 308
    move-object v3, v0

    .local v3, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x0

    .line 309
    .local v4, "$i$f$forEachSegment":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    .line 310
    .local v5, "segmentCount$iv$iv":I
    const/4 v6, 0x0

    .line 311
    .local v6, "s$iv$iv":I
    const/4 v7, 0x0

    .line 312
    .local v7, "pos$iv$iv":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 313
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v8

    add-int v9, v5, v6

    aget v8, v8, v9

    .line 314
    .local v8, "segmentPos$iv$iv":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v9

    aget v9, v9, v6

    .line 316
    .local v9, "nextSegmentOffset$iv$iv":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v10

    aget-object v10, v10, v6

    .local v10, "data$iv":[B
    sub-int v11, v9, v7

    .local v11, "byteCount$iv":I
    move v12, v8

    .local v12, "offset$iv":I
    const/4 v13, 0x0

    .line 317
    .local v13, "$i$a$-forEachSegment-SegmentedByteStringKt$commonHashCode$1$iv":I
    move v14, v12

    .line 318
    .local v14, "i$iv":I
    add-int v15, v12, v11

    .line 319
    .local v15, "limit$iv":I
    :goto_1
    if-ge v14, v15, :cond_1

    .line 320
    mul-int/lit8 v16, v2, 0x1f

    aget-byte v17, v10, v14

    add-int v2, v16, v17

    .line 321
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 323
    :cond_1
    nop

    .line 324
    .end local v10    # "data$iv":[B
    .end local v11    # "byteCount$iv":I
    .end local v12    # "offset$iv":I
    .end local v13    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonHashCode$1$iv":I
    .end local v14    # "i$iv":I
    .end local v15    # "limit$iv":I
    move v7, v9

    .line 325
    add-int/lit8 v6, v6, 0x1

    .end local v8    # "segmentPos$iv$iv":I
    .end local v9    # "nextSegmentOffset$iv$iv":I
    goto :goto_0

    .line 327
    :cond_2
    nop

    .line 328
    .end local v3    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v4    # "$i$f$forEachSegment":I
    .end local v5    # "segmentCount$iv$iv":I
    .end local v6    # "s$iv$iv":I
    .end local v7    # "pos$iv$iv":I
    invoke-virtual {v0, v2}, Lokio/SegmentedByteString;->setHashCode$external__okio__android_common__okio_lib(I)V

    .line 329
    nop

    .line 125
    .end local v0    # "$this$commonHashCode$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonHashCode":I
    .end local v2    # "result$iv":I
    :goto_2
    return v2
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmac$external__okio__android_common__okio_lib(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 12
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    nop

    .line 63
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 64
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 65
    move-object v1, p0

    .local v1, "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    const/4 v2, 0x0

    .line 145
    .local v2, "$i$f$forEachSegment":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    .line 146
    .local v3, "segmentCount$iv":I
    const/4 v4, 0x0

    .line 147
    .local v4, "s$iv":I
    const/4 v5, 0x0

    .line 148
    .local v5, "pos$iv":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 149
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v6

    add-int v7, v3, v4

    aget v6, v6, v7

    .line 150
    .local v6, "segmentPos$iv":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v7

    aget v7, v7, v4

    .line 152
    .local v7, "nextSegmentOffset$iv":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v8

    aget-object v8, v8, v4

    sub-int v9, v7, v5

    .local v8, "data":[B
    .local v9, "byteCount":I
    move v10, v6

    .local v10, "offset":I
    const/4 v11, 0x0

    .line 66
    .local v11, "$i$a$-forEachSegment-SegmentedByteString$hmac$1":I
    invoke-virtual {v0, v8, v10, v9}, Ljavax/crypto/Mac;->update([BII)V

    .line 67
    nop

    .line 153
    .end local v8    # "data":[B
    .end local v9    # "byteCount":I
    .end local v10    # "offset":I
    .end local v11    # "$i$a$-forEachSegment-SegmentedByteString$hmac$1":I
    move v5, v7

    .line 154
    add-int/lit8 v4, v4, 0x1

    .end local v6    # "segmentPos$iv":I
    .end local v7    # "nextSegmentOffset$iv":I
    goto :goto_0

    .line 156
    :cond_0
    nop

    .line 68
    .end local v1    # "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    .end local v2    # "$i$f$forEachSegment":I
    .end local v3    # "segmentCount$iv":I
    .end local v4    # "s$iv":I
    .end local v5    # "pos$iv":I
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    const-string v3, "mac.doFinal()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 69
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public indexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public internalArray$external__okio__android_common__okio_lib()[B
    .locals 1

    .line 121
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public internalGet$external__okio__android_common__okio_lib(I)B
    .locals 9
    .param p1, "pos"    # I

    .line 79
    move-object v0, p0

    .local v0, "$this$commonInternalGet$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 185
    .local v1, "$i$f$commonInternalGet":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v2

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    int-to-long v3, v2

    int-to-long v5, p1

    const-wide/16 v7, 0x1

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 186
    invoke-static {v0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v2

    .line 187
    .local v2, "segment$iv":I
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    .line 188
    .local v3, "segmentOffset$iv":I
    :goto_0
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v4

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    .line 189
    .local v4, "segmentPos$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v5

    aget-object v5, v5, v2

    sub-int v6, p1, v3

    add-int/2addr v6, v4

    aget-byte v0, v5, v6

    .line 79
    .end local v0    # "$this$commonInternalGet$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonInternalGet":I
    .end local v2    # "segment$iv":I
    .end local v3    # "segmentOffset$iv":I
    .end local v4    # "segmentPos$iv":I
    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    .line 114
    nop

    .line 115
    nop

    .line 113
    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    .line 116
    return v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 20
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "other"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    move-object/from16 v2, p0

    .local v2, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    const/4 v3, 0x0

    .line 251
    .local v3, "$i$f$commonRangeEquals":I
    if-ltz v0, :cond_4

    invoke-virtual {v2}, Lokio/SegmentedByteString;->size()I

    move-result v5

    sub-int v5, v5, p4

    if-le v0, v5, :cond_0

    move-object/from16 v17, v2

    goto/16 :goto_2

    .line 253
    :cond_0
    const/4 v5, 0x0

    .local v5, "otherOffset$iv":I
    move/from16 v5, p3

    .line 254
    add-int v6, v0, p4

    .local v6, "endIndex$iv$iv":I
    move-object v7, v2

    .local v7, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v8, 0x0

    .line 255
    .local v8, "$i$f$forEachSegment":I
    invoke-static {v7, v0}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v9

    .line 256
    .local v9, "s$iv$iv":I
    move/from16 v10, p1

    .line 257
    .local v10, "pos$iv$iv":I
    :goto_0
    if-ge v10, v6, :cond_3

    .line 258
    if-nez v9, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v11

    add-int/lit8 v12, v9, -0x1

    aget v11, v11, v12

    .line 259
    .local v11, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v12

    aget v12, v12, v9

    sub-int/2addr v12, v11

    .line 260
    .local v12, "segmentSize$iv$iv":I
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v13

    invoke-virtual {v7}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    array-length v14, v14

    add-int/2addr v14, v9

    aget v13, v13, v14

    .line 262
    .local v13, "segmentPos$iv$iv":I
    add-int v14, v11, v12

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int/2addr v14, v10

    .line 263
    .local v14, "byteCount$iv$iv":I
    sub-int v15, v10, v11

    add-int/2addr v15, v13

    .line 264
    .local v15, "offset$iv$iv":I
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v16

    aget-object v16, v16, v9

    .local v16, "data$iv":[B
    move/from16 v17, v15

    .local v17, "offset$iv":I
    move/from16 v18, v14

    .local v18, "byteCount$iv":I
    move-object/from16 v19, v16

    .end local v16    # "data$iv":[B
    .local v19, "data$iv":[B
    const/16 v16, 0x0

    .line 265
    .local v16, "$i$a$-forEachSegment-SegmentedByteStringKt$commonRangeEquals$1$iv":I
    move/from16 v4, v17

    move/from16 v0, v18

    move-object/from16 v17, v2

    move-object/from16 v2, v19

    .end local v18    # "byteCount$iv":I
    .end local v19    # "data$iv":[B
    .local v0, "byteCount$iv":I
    .local v2, "data$iv":[B
    .local v4, "offset$iv":I
    .local v17, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    invoke-virtual {v1, v5, v2, v4, v0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    .line 266
    :cond_2
    add-int/2addr v5, v0

    .line 267
    nop

    .line 268
    .end local v0    # "byteCount$iv":I
    .end local v2    # "data$iv":[B
    .end local v4    # "offset$iv":I
    .end local v16    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonRangeEquals$1$iv":I
    add-int/2addr v10, v14

    .line 269
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    move-object/from16 v2, v17

    .end local v11    # "segmentOffset$iv$iv":I
    .end local v12    # "segmentSize$iv$iv":I
    .end local v13    # "segmentPos$iv$iv":I
    .end local v14    # "byteCount$iv$iv":I
    .end local v15    # "offset$iv$iv":I
    goto :goto_0

    .line 271
    .end local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .local v2, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :cond_3
    move-object/from16 v17, v2

    .line 272
    .end local v2    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .end local v6    # "endIndex$iv$iv":I
    .end local v7    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v8    # "$i$f$forEachSegment":I
    .end local v9    # "s$iv$iv":I
    .end local v10    # "pos$iv$iv":I
    .restart local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x1

    goto :goto_3

    .line 251
    .end local v5    # "otherOffset$iv":I
    .end local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .restart local v2    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :cond_4
    move-object/from16 v17, v2

    .end local v2    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .restart local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :goto_2
    const/4 v4, 0x0

    .line 102
    .end local v3    # "$i$f$commonRangeEquals":I
    .end local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :goto_3
    return v4
.end method

.method public rangeEquals(I[BII)Z
    .locals 21
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "other"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    move-object/from16 v3, p0

    .local v3, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x0

    .line 273
    .local v4, "$i$f$commonRangeEquals":I
    if-ltz v0, :cond_4

    invoke-virtual {v3}, Lokio/SegmentedByteString;->size()I

    move-result v6

    sub-int v6, v6, p4

    if-gt v0, v6, :cond_4

    .line 274
    if-ltz v2, :cond_4

    array-length v6, v1

    sub-int v6, v6, p4

    if-le v2, v6, :cond_0

    goto :goto_2

    .line 279
    :cond_0
    const/4 v6, 0x0

    .local v6, "otherOffset$iv":I
    move/from16 v6, p3

    .line 280
    add-int v7, v0, p4

    .local v7, "endIndex$iv$iv":I
    move-object v8, v3

    .local v8, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v9, 0x0

    .line 281
    .local v9, "$i$f$forEachSegment":I
    invoke-static {v8, v0}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v10

    .line 282
    .local v10, "s$iv$iv":I
    move/from16 v11, p1

    .line 283
    .local v11, "pos$iv$iv":I
    :goto_0
    if-ge v11, v7, :cond_3

    .line 284
    if-nez v10, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v12

    add-int/lit8 v13, v10, -0x1

    aget v12, v12, v13

    .line 285
    .local v12, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v13

    aget v13, v13, v10

    sub-int/2addr v13, v12

    .line 286
    .local v13, "segmentSize$iv$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v14

    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    array-length v15, v15

    add-int/2addr v15, v10

    aget v14, v14, v15

    .line 288
    .local v14, "segmentPos$iv$iv":I
    add-int v15, v12, v13

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int/2addr v15, v11

    .line 289
    .local v15, "byteCount$iv$iv":I
    sub-int v16, v11, v12

    add-int v16, v14, v16

    .line 290
    .local v16, "offset$iv$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v17

    aget-object v17, v17, v10

    .local v17, "data$iv":[B
    move/from16 v18, v16

    .local v18, "offset$iv":I
    move/from16 v19, v15

    .local v19, "byteCount$iv":I
    move-object/from16 v20, v17

    .end local v17    # "data$iv":[B
    .local v20, "data$iv":[B
    const/16 v17, 0x0

    .line 291
    .local v17, "$i$a$-forEachSegment-SegmentedByteStringKt$commonRangeEquals$2$iv":I
    move/from16 v5, v18

    move/from16 v0, v19

    move-object/from16 v2, v20

    .end local v18    # "offset$iv":I
    .end local v19    # "byteCount$iv":I
    .end local v20    # "data$iv":[B
    .local v0, "byteCount$iv":I
    .local v2, "data$iv":[B
    .local v5, "offset$iv":I
    invoke-static {v2, v5, v1, v6, v0}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    .line 292
    :cond_2
    add-int/2addr v6, v0

    .line 293
    nop

    .line 294
    .end local v0    # "byteCount$iv":I
    .end local v2    # "data$iv":[B
    .end local v5    # "offset$iv":I
    .end local v17    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonRangeEquals$2$iv":I
    add-int/2addr v11, v15

    .line 295
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p1

    move/from16 v2, p3

    .end local v12    # "segmentOffset$iv$iv":I
    .end local v13    # "segmentSize$iv$iv":I
    .end local v14    # "segmentPos$iv$iv":I
    .end local v15    # "byteCount$iv$iv":I
    .end local v16    # "offset$iv$iv":I
    goto :goto_0

    .line 297
    :cond_3
    nop

    .line 298
    .end local v7    # "endIndex$iv$iv":I
    .end local v8    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v9    # "$i$f$forEachSegment":I
    .end local v10    # "s$iv$iv":I
    .end local v11    # "pos$iv$iv":I
    const/4 v5, 0x1

    goto :goto_3

    .line 276
    .end local v6    # "otherOffset$iv":I
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .line 109
    .end local v3    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .end local v4    # "$i$f$commonRangeEquals":I
    :goto_3
    return v5
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 17
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 77
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    .local v2, "$this$commonSubstring$iv":Lokio/SegmentedByteString;
    const/4 v3, 0x0

    .line 157
    .local v3, "$i$f$commonSubstring":I
    const/4 v5, 0x1

    if-ltz v0, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_a

    .line 159
    invoke-virtual {v2}, Lokio/SegmentedByteString;->size()I

    move-result v6

    if-gt v1, v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-string v7, "endIndex="

    if-eqz v6, :cond_9

    .line 161
    sub-int v6, v1, v0

    .line 162
    .local v6, "subLen$iv":I
    if-ltz v6, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_8

    .line 164
    nop

    .line 165
    if-nez v0, :cond_3

    invoke-virtual {v2}, Lokio/SegmentedByteString;->size()I

    move-result v7

    if-ne v1, v7, :cond_3

    move-object v4, v2

    check-cast v4, Lokio/ByteString;

    goto/16 :goto_4

    .line 166
    :cond_3
    if-ne v0, v1, :cond_4

    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_4

    .line 169
    :cond_4
    invoke-static {v2, v0}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v7

    .line 170
    .local v7, "beginSegment$iv":I
    add-int/lit8 v8, v1, -0x1

    invoke-static {v2, v8}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v8

    .line 172
    .local v8, "endSegment$iv":I
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    add-int/lit8 v10, v8, 0x1

    invoke-static {v9, v7, v10}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[B

    .line 173
    .local v9, "newSegments$iv":[[B
    move-object v10, v9

    check-cast v10, [Ljava/lang/Object;

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x2

    new-array v10, v10, [I

    .line 174
    .local v10, "newDirectory$iv":[I
    const/4 v11, 0x0

    .line 175
    .local v11, "index$iv":I
    if-gt v7, v8, :cond_6

    move v12, v7

    :cond_5
    move v13, v12

    .local v13, "s$iv":I
    add-int/2addr v12, v5

    .line 176
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v14

    aget v14, v14, v13

    sub-int/2addr v14, v0

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v10, v11

    .line 177
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "index$iv":I
    .local v14, "index$iv":I
    move-object v15, v9

    check-cast v15, [Ljava/lang/Object;

    array-length v15, v15

    add-int/2addr v11, v15

    invoke-virtual {v2}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v15

    invoke-virtual {v2}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, [Ljava/lang/Object;

    array-length v4, v4

    add-int/2addr v4, v13

    aget v4, v15, v4

    aput v4, v10, v11

    .line 175
    move v11, v14

    if-ne v13, v8, :cond_5

    .line 181
    .end local v13    # "s$iv":I
    .end local v14    # "index$iv":I
    .restart local v11    # "index$iv":I
    :cond_6
    if-nez v7, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v4

    add-int/lit8 v5, v7, -0x1

    aget v4, v4, v5

    .line 182
    .local v4, "segmentOffset$iv":I
    :goto_3
    move-object v5, v9

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    aget v12, v10, v5

    sub-int v13, v0, v4

    add-int/2addr v12, v13

    aput v12, v10, v5

    .line 184
    new-instance v5, Lokio/SegmentedByteString;

    invoke-direct {v5, v9, v10}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v5, Lokio/ByteString;

    move-object v4, v5

    .line 77
    .end local v2    # "$this$commonSubstring$iv":Lokio/SegmentedByteString;
    .end local v3    # "$i$f$commonSubstring":I
    .end local v4    # "segmentOffset$iv":I
    .end local v6    # "subLen$iv":I
    .end local v7    # "beginSegment$iv":I
    .end local v8    # "endSegment$iv":I
    .end local v9    # "newSegments$iv":[[B
    .end local v10    # "newDirectory$iv":[I
    .end local v11    # "index$iv":I
    :goto_4
    return-object v4

    .line 158
    .restart local v2    # "$this$commonSubstring$iv":Lokio/SegmentedByteString;
    .restart local v3    # "$i$f$commonSubstring":I
    .restart local v6    # "subLen$iv":I
    :cond_8
    const/4 v4, 0x0

    .line 162
    .local v4, "$i$a$-require-SegmentedByteStringKt$commonSubstring$3$iv":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " < beginIndex="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$i$a$-require-SegmentedByteStringKt$commonSubstring$3$iv":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 158
    .end local v6    # "subLen$iv":I
    :cond_9
    const/4 v4, 0x0

    .line 159
    .local v4, "$i$a$-require-SegmentedByteStringKt$commonSubstring$2$iv":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lokio/SegmentedByteString;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$i$a$-require-SegmentedByteStringKt$commonSubstring$2$iv":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_a
    const/4 v4, 0x0

    .line 157
    .local v4, "$i$a$-require-SegmentedByteStringKt$commonSubstring$1$iv":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$i$a$-require-SegmentedByteStringKt$commonSubstring$1$iv":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 1

    .line 47
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 1

    .line 49
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 16

    .line 83
    move-object/from16 v0, p0

    .local v0, "$this$commonToByteArray$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 191
    .local v1, "$i$f$commonToByteArray":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 192
    .local v2, "result$iv":[B
    const/4 v3, 0x0

    .line 193
    .local v3, "resultPos$iv":I
    move-object v4, v0

    .local v4, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v5, 0x0

    .line 194
    .local v5, "$i$f$forEachSegment":I
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    .line 195
    .local v6, "segmentCount$iv$iv":I
    const/4 v7, 0x0

    .line 196
    .local v7, "s$iv$iv":I
    const/4 v8, 0x0

    .line 197
    .local v8, "pos$iv$iv":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 198
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v9

    add-int v10, v6, v7

    aget v9, v9, v10

    .line 199
    .local v9, "segmentPos$iv$iv":I
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v10

    aget v10, v10, v7

    .line 201
    .local v10, "nextSegmentOffset$iv$iv":I
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v11

    aget-object v11, v11, v7

    .local v11, "data$iv":[B
    sub-int v12, v10, v8

    .local v12, "byteCount$iv":I
    move v13, v9

    .local v13, "offset$iv":I
    const/4 v14, 0x0

    .line 202
    .local v14, "$i$a$-forEachSegment-SegmentedByteStringKt$commonToByteArray$1$iv":I
    nop

    .line 203
    nop

    .line 204
    add-int v15, v13, v12

    .line 202
    invoke-static {v11, v2, v3, v13, v15}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 206
    add-int/2addr v3, v12

    .line 207
    nop

    .line 208
    .end local v11    # "data$iv":[B
    .end local v12    # "byteCount$iv":I
    .end local v13    # "offset$iv":I
    .end local v14    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonToByteArray$1$iv":I
    move v8, v10

    .line 209
    add-int/lit8 v7, v7, 0x1

    .end local v9    # "segmentPos$iv$iv":I
    .end local v10    # "nextSegmentOffset$iv$iv":I
    goto :goto_0

    .line 211
    :cond_0
    nop

    .line 212
    .end local v4    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v5    # "$i$f$forEachSegment":I
    .end local v6    # "segmentCount$iv$iv":I
    .end local v7    # "s$iv$iv":I
    .end local v8    # "pos$iv$iv":I
    nop

    .line 83
    .end local v0    # "$this$commonToByteArray$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonToByteArray":I
    .end local v2    # "result$iv":[B
    .end local v3    # "resultPos$iv":I
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 127
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    move-object v0, p0

    .local v0, "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 213
    .local v1, "$i$f$forEachSegment":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    .line 214
    .local v2, "segmentCount$iv":I
    const/4 v3, 0x0

    .line 215
    .local v3, "s$iv":I
    const/4 v4, 0x0

    .line 216
    .local v4, "pos$iv":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 217
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v5

    add-int v6, v2, v3

    aget v5, v5, v6

    .line 218
    .local v5, "segmentPos$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v6

    aget v6, v6, v3

    .line 220
    .local v6, "nextSegmentOffset$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v7

    aget-object v7, v7, v3

    .local v7, "data":[B
    sub-int v8, v6, v4

    .local v8, "byteCount":I
    move v9, v5

    .local v9, "offset":I
    const/4 v10, 0x0

    .line 90
    .local v10, "$i$a$-forEachSegment-SegmentedByteString$write$1":I
    invoke-virtual {p1, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    nop

    .line 221
    .end local v7    # "data":[B
    .end local v8    # "byteCount":I
    .end local v9    # "offset":I
    .end local v10    # "$i$a$-forEachSegment-SegmentedByteString$write$1":I
    move v4, v6

    .line 222
    add-int/lit8 v3, v3, 0x1

    .end local v5    # "segmentPos$iv":I
    .end local v6    # "nextSegmentOffset$iv":I
    goto :goto_0

    .line 224
    :cond_0
    nop

    .line 92
    .end local v0    # "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$forEachSegment":I
    .end local v2    # "segmentCount$iv":I
    .end local v3    # "s$iv":I
    .end local v4    # "pos$iv":I
    return-void
.end method

.method public write$external__okio__android_common__okio_lib(Lokio/Buffer;II)V
    .locals 25
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "buffer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    move-object/from16 v3, p0

    .local v3, "$this$commonWrite$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x0

    .line 225
    .local v4, "$i$f$commonWrite":I
    add-int v5, v1, v2

    .local v5, "endIndex$iv$iv":I
    move-object v6, v3

    .local v6, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v7, 0x0

    .line 226
    .local v7, "$i$f$forEachSegment":I
    invoke-static {v6, v1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v8

    .line 227
    .local v8, "s$iv$iv":I
    move/from16 v9, p2

    .line 228
    .local v9, "pos$iv$iv":I
    :goto_0
    if-ge v9, v5, :cond_2

    .line 229
    if-nez v8, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v10

    add-int/lit8 v11, v8, -0x1

    aget v10, v10, v11

    .line 230
    .local v10, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v11

    aget v11, v11, v8

    sub-int/2addr v11, v10

    .line 231
    .local v11, "segmentSize$iv$iv":I
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getDirectory$external__okio__android_common__okio_lib()[I

    move-result-object v12

    invoke-virtual {v6}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    array-length v13, v13

    add-int/2addr v13, v8

    aget v12, v12, v13

    .line 233
    .local v12, "segmentPos$iv$iv":I
    add-int v13, v10, v11

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int/2addr v13, v9

    .line 234
    .local v13, "byteCount$iv$iv":I
    sub-int v14, v9, v10

    add-int/2addr v14, v12

    .line 235
    .local v14, "offset$iv$iv":I
    invoke-virtual {v6}, Lokio/SegmentedByteString;->getSegments$external__okio__android_common__okio_lib()[[B

    move-result-object v15

    aget-object v17, v15, v8

    .local v17, "data$iv":[B
    move v15, v13

    .local v15, "byteCount$iv":I
    move/from16 v22, v14

    .local v22, "offset$iv":I
    const/16 v23, 0x0

    .line 236
    .local v23, "$i$a$-forEachSegment-SegmentedByteStringKt$commonWrite$1$iv":I
    new-instance v24, Lokio/Segment;

    add-int v19, v22, v15

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v24

    move/from16 v18, v22

    invoke-direct/range {v16 .. v21}, Lokio/Segment;-><init>([BIIZZ)V

    .line 237
    .local v16, "segment$iv":Lokio/Segment;
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_1

    .line 238
    move-object/from16 v1, v16

    .end local v16    # "segment$iv":Lokio/Segment;
    .local v1, "segment$iv":Lokio/Segment;
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 239
    move-object/from16 v16, v3

    .end local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .local v16, "$this$commonWrite$iv":Lokio/SegmentedByteString;
    iget-object v3, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 240
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 242
    .end local v1    # "segment$iv":Lokio/Segment;
    .restart local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .local v16, "segment$iv":Lokio/Segment;
    :cond_1
    move-object/from16 v1, v16

    move-object/from16 v16, v3

    .end local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .restart local v1    # "segment$iv":Lokio/Segment;
    .local v16, "$this$commonWrite$iv":Lokio/SegmentedByteString;
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 244
    :goto_2
    nop

    .line 245
    .end local v1    # "segment$iv":Lokio/Segment;
    .end local v15    # "byteCount$iv":I
    .end local v17    # "data$iv":[B
    .end local v22    # "offset$iv":I
    .end local v23    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonWrite$1$iv":I
    add-int/2addr v9, v13

    .line 246
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p2

    move-object/from16 v3, v16

    .end local v10    # "segmentOffset$iv$iv":I
    .end local v11    # "segmentSize$iv$iv":I
    .end local v12    # "segmentPos$iv$iv":I
    .end local v13    # "byteCount$iv$iv":I
    .end local v14    # "offset$iv$iv":I
    goto :goto_0

    .line 248
    .end local v16    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .restart local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    :cond_2
    nop

    .line 249
    .end local v5    # "endIndex$iv$iv":I
    .end local v6    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v7    # "$i$f$forEachSegment":I
    .end local v8    # "s$iv$iv":I
    .end local v9    # "pos$iv$iv":I
    invoke-virtual/range {p1 .. p1}, Lokio/Buffer;->size()J

    move-result-wide v5

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 250
    nop

    .line 95
    .end local v3    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .end local v4    # "$i$f$commonWrite":I
    return-void
.end method
