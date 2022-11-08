.class public final Lokio/internal/BufferKt;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n+ 2 -Util.kt\nokio/-Util\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1689:1\n107#1,20:1712\n107#1,20:1745\n107#1:1765\n109#1,18:1767\n107#1,20:1785\n74#2:1690\n74#2:1691\n74#2:1692\n74#2:1693\n74#2:1694\n74#2:1695\n74#2:1696\n74#2:1697\n74#2:1698\n74#2:1699\n74#2:1700\n74#2:1701\n83#2:1702\n83#2:1703\n77#2:1704\n77#2:1705\n77#2:1706\n77#2:1707\n77#2:1708\n77#2:1709\n77#2:1710\n77#2:1711\n86#2:1732\n89#2:1734\n74#2:1735\n74#2:1736\n74#2:1737\n74#2:1738\n74#2:1739\n74#2:1740\n74#2:1741\n74#2:1742\n74#2:1743\n74#2:1744\n89#2:1766\n86#2:1805\n1#3:1733\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n*L\n410#1:1712,20\n1253#1:1745,20\n1284#1:1765\n1284#1:1767,18\n1318#1:1785,20\n173#1:1690\n197#1:1691\n316#1:1692\n321#1:1693\n344#1:1694\n345#1:1695\n346#1:1696\n347#1:1697\n353#1:1698\n354#1:1699\n355#1:1700\n356#1:1701\n380#1:1702\n381#1:1703\n387#1:1704\n388#1:1705\n389#1:1706\n390#1:1707\n391#1:1708\n392#1:1709\n393#1:1710\n394#1:1711\n422#1:1732\n849#1:1734\n867#1:1735\n869#1:1736\n873#1:1737\n875#1:1738\n879#1:1739\n881#1:1740\n885#1:1741\n887#1:1742\n907#1:1743\n910#1:1744\n1297#1:1766\n1635#1:1805\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a0\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H\u0000\u001a\r\u0010\u0011\u001a\u00020\u0012*\u00020\u0013H\u0080\u0008\u001a\r\u0010\u0014\u001a\u00020\u0012*\u00020\u0015H\u0080\u0008\u001a\r\u0010\u0016\u001a\u00020\u0005*\u00020\u0013H\u0080\u0008\u001a\r\u0010\u0017\u001a\u00020\u0013*\u00020\u0013H\u0080\u0008\u001a%\u0010\u0018\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005H\u0080\u0008\u001a\u0017\u0010\u001c\u001a\u00020\n*\u00020\u00132\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0080\u0008\u001a\u0015\u0010\u001f\u001a\u00020\u0005*\u00020\u00152\u0006\u0010 \u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010!\u001a\u00020\"*\u00020\u00132\u0006\u0010#\u001a\u00020\u0005H\u0080\u0008\u001a\r\u0010$\u001a\u00020\u0008*\u00020\u0013H\u0080\u0008\u001a%\u0010%\u001a\u00020\u0005*\u00020\u00132\u0006\u0010&\u001a\u00020\"2\u0006\u0010\'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0005H\u0080\u0008\u001a\u001d\u0010%\u001a\u00020\u0005*\u00020\u00132\u0006\u0010\u000e\u001a\u00020)2\u0006\u0010\'\u001a\u00020\u0005H\u0080\u0008\u001a\u001d\u0010*\u001a\u00020\u0005*\u00020\u00132\u0006\u0010+\u001a\u00020)2\u0006\u0010\'\u001a\u00020\u0005H\u0080\u0008\u001a\r\u0010,\u001a\u00020\u0008*\u00020\u0015H\u0080\u0008\u001a-\u0010-\u001a\u00020\n*\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020)2\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010.\u001a\u00020\u0008*\u00020\u00132\u0006\u0010/\u001a\u00020\u0001H\u0080\u0008\u001a%\u0010.\u001a\u00020\u0008*\u00020\u00132\u0006\u0010/\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0080\u0008\u001a\u001d\u0010.\u001a\u00020\u0005*\u00020\u00132\u0006\u0010/\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u00100\u001a\u00020\u0005*\u00020\u00132\u0006\u0010/\u001a\u000201H\u0080\u0008\u001a\u0014\u00102\u001a\u00020\u0015*\u00020\u00132\u0006\u00103\u001a\u00020\u0015H\u0000\u001a\r\u00104\u001a\u00020\"*\u00020\u0013H\u0080\u0008\u001a\r\u00105\u001a\u00020\u0001*\u00020\u0013H\u0080\u0008\u001a\u0015\u00105\u001a\u00020\u0001*\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0005H\u0080\u0008\u001a\r\u00106\u001a\u00020)*\u00020\u0013H\u0080\u0008\u001a\u0015\u00106\u001a\u00020)*\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0005H\u0080\u0008\u001a\r\u00107\u001a\u00020\u0005*\u00020\u0013H\u0080\u0008\u001a\u0015\u00108\u001a\u00020\u0012*\u00020\u00132\u0006\u0010/\u001a\u00020\u0001H\u0080\u0008\u001a\u001d\u00108\u001a\u00020\u0012*\u00020\u00132\u0006\u0010/\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0005H\u0080\u0008\u001a\r\u00109\u001a\u00020\u0005*\u00020\u0013H\u0080\u0008\u001a\r\u0010:\u001a\u00020\u0008*\u00020\u0013H\u0080\u0008\u001a\r\u0010;\u001a\u00020\u0005*\u00020\u0013H\u0080\u0008\u001a\r\u0010<\u001a\u00020=*\u00020\u0013H\u0080\u0008\u001a\u0014\u0010>\u001a\u00020\u0015*\u00020\u00132\u0006\u00103\u001a\u00020\u0015H\u0000\u001a\u0015\u0010?\u001a\u00020@*\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0005H\u0080\u0008\u001a\r\u0010A\u001a\u00020\u0008*\u00020\u0013H\u0080\u0008\u001a\u000f\u0010B\u001a\u0004\u0018\u00010@*\u00020\u0013H\u0080\u0008\u001a\u0015\u0010C\u001a\u00020@*\u00020\u00132\u0006\u0010D\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010E\u001a\u00020\u0005*\u00020\u00152\u0006\u0010F\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010G\u001a\u00020\u0008*\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010H\u001a\u00020\u0008*\u00020\u00132\u0006\u0010I\u001a\u00020JH\u0080\u0008\u001a\u0015\u0010K\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0005H\u0080\u0008\u001a\r\u0010L\u001a\u00020)*\u00020\u0013H\u0080\u0008\u001a\u0015\u0010L\u001a\u00020)*\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010M\u001a\u00020\u000c*\u00020\u00132\u0006\u0010N\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010O\u001a\u00020\u0013*\u00020\u00132\u0006\u0010P\u001a\u00020\u0001H\u0080\u0008\u001a%\u0010O\u001a\u00020\u0013*\u00020\u00132\u0006\u0010P\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0080\u0008\u001a\u001d\u0010O\u001a\u00020\u0012*\u00020\u00132\u0006\u0010P\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0005H\u0080\u0008\u001a)\u0010O\u001a\u00020\u0013*\u00020\u00132\u0006\u0010Q\u001a\u00020)2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0008H\u0080\u0008\u001a\u001d\u0010O\u001a\u00020\u0013*\u00020\u00132\u0006\u0010P\u001a\u00020R2\u0006\u0010\u001b\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010S\u001a\u00020\u0005*\u00020\u00132\u0006\u0010P\u001a\u00020RH\u0080\u0008\u001a\u0015\u0010T\u001a\u00020\u0013*\u00020\u00132\u0006\u0010&\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010U\u001a\u00020\u0013*\u00020\u00132\u0006\u0010V\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010W\u001a\u00020\u0013*\u00020\u00132\u0006\u0010V\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010X\u001a\u00020\u0013*\u00020\u00132\u0006\u0010Y\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010Z\u001a\u00020\u0013*\u00020\u00132\u0006\u0010V\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010[\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\\\u001a\u00020\u0008H\u0080\u0008\u001a%\u0010]\u001a\u00020\u0013*\u00020\u00132\u0006\u0010^\u001a\u00020@2\u0006\u0010_\u001a\u00020\u00082\u0006\u0010`\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010a\u001a\u00020\u0013*\u00020\u00132\u0006\u0010b\u001a\u00020\u0008H\u0080\u0008\u001a\u0014\u0010c\u001a\u00020@*\u00020\u00132\u0006\u0010d\u001a\u00020\u0005H\u0000\u001a?\u0010e\u001a\u0002Hf\"\u0004\u0008\u0000\u0010f*\u00020\u00132\u0006\u0010\'\u001a\u00020\u00052\u001a\u0010g\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002Hf0hH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010i\u001a\u001e\u0010j\u001a\u00020\u0008*\u00020\u00132\u0006\u0010I\u001a\u00020J2\u0008\u0008\u0002\u0010k\u001a\u00020\nH\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006l"
    }
    d2 = {
        "HEX_DIGIT_BYTES",
        "",
        "getHEX_DIGIT_BYTES",
        "()[B",
        "OVERFLOW_DIGIT_START",
        "",
        "OVERFLOW_ZONE",
        "SEGMENTING_THRESHOLD",
        "",
        "rangeEquals",
        "",
        "segment",
        "Lokio/Segment;",
        "segmentPos",
        "bytes",
        "bytesOffset",
        "bytesLimit",
        "commonClear",
        "",
        "Lokio/Buffer;",
        "commonClose",
        "Lokio/Buffer$UnsafeCursor;",
        "commonCompleteSegmentByteCount",
        "commonCopy",
        "commonCopyTo",
        "out",
        "offset",
        "byteCount",
        "commonEquals",
        "other",
        "",
        "commonExpandBuffer",
        "minByteCount",
        "commonGet",
        "",
        "pos",
        "commonHashCode",
        "commonIndexOf",
        "b",
        "fromIndex",
        "toIndex",
        "Lokio/ByteString;",
        "commonIndexOfElement",
        "targetBytes",
        "commonNext",
        "commonRangeEquals",
        "commonRead",
        "sink",
        "commonReadAll",
        "Lokio/Sink;",
        "commonReadAndWriteUnsafe",
        "unsafeCursor",
        "commonReadByte",
        "commonReadByteArray",
        "commonReadByteString",
        "commonReadDecimalLong",
        "commonReadFully",
        "commonReadHexadecimalUnsignedLong",
        "commonReadInt",
        "commonReadLong",
        "commonReadShort",
        "",
        "commonReadUnsafe",
        "commonReadUtf8",
        "",
        "commonReadUtf8CodePoint",
        "commonReadUtf8Line",
        "commonReadUtf8LineStrict",
        "limit",
        "commonResizeBuffer",
        "newSize",
        "commonSeek",
        "commonSelect",
        "options",
        "Lokio/Options;",
        "commonSkip",
        "commonSnapshot",
        "commonWritableSegment",
        "minimumCapacity",
        "commonWrite",
        "source",
        "byteString",
        "Lokio/Source;",
        "commonWriteAll",
        "commonWriteByte",
        "commonWriteDecimalLong",
        "v",
        "commonWriteHexadecimalUnsignedLong",
        "commonWriteInt",
        "i",
        "commonWriteLong",
        "commonWriteShort",
        "s",
        "commonWriteUtf8",
        "string",
        "beginIndex",
        "endIndex",
        "commonWriteUtf8CodePoint",
        "codePoint",
        "readUtf8Line",
        "newline",
        "seek",
        "T",
        "lambda",
        "Lkotlin/Function2;",
        "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "selectPrefix",
        "selectTruncated",
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
.field private static final HEX_DIGIT_BYTES:[B

.field public static final OVERFLOW_DIGIT_START:J = -0x7L

.field public static final OVERFLOW_ZONE:J = -0xcccccccccccccccL

.field public static final SEGMENTING_THRESHOLD:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "0123456789abcdef"

    invoke-static {v0}, Lokio/-Platform;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-void
.end method

.method public static final commonClear(Lokio/Buffer;)V
    .locals 3
    .param p0, "$this$commonClear"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 415
    .local v0, "$i$f$commonClear":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public static final commonClose(Lokio/Buffer$UnsafeCursor;)V
    .locals 4
    .param p0, "$this$commonClose"    # Lokio/Buffer$UnsafeCursor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1680
    .local v0, "$i$f$commonClose":I
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1682
    const/4 v1, 0x0

    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1683
    invoke-virtual {p0, v1}, Lokio/Buffer$UnsafeCursor;->setSegment$external__okio__android_common__okio_lib(Lokio/Segment;)V

    .line 1684
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1685
    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1686
    const/4 v1, -0x1

    iput v1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1687
    iput v1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1688
    return-void

    .line 1733
    :cond_1
    const/4 v1, 0x0

    .line 1680
    .local v1, "$i$a$-check-BufferKt$commonClose$1":I
    nop

    .end local v1    # "$i$a$-check-BufferKt$commonClose$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonCompleteSegmentByteCount(Lokio/Buffer;)J
    .locals 6
    .param p0, "$this$commonCompleteSegmentByteCount"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 274
    .local v0, "$i$f$commonCompleteSegmentByteCount":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 275
    .local v1, "result":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-wide v3

    .line 278
    :cond_0
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 279
    .local v3, "tail":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->limit:I

    const/16 v5, 0x2000

    if-ge v4, v5, :cond_1

    iget-boolean v4, v3, Lokio/Segment;->owner:Z

    if-eqz v4, :cond_1

    .line 280
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 283
    :cond_1
    return-wide v1
.end method

.method public static final commonCopy(Lokio/Buffer;)Lokio/Buffer;
    .locals 7
    .param p0, "$this$commonCopy"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1445
    .local v0, "$i$f$commonCopy":I
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1446
    .local v1, "result":Lokio/Buffer;
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-object v1

    .line 1448
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1449
    .local v2, "head":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    .line 1451
    .local v3, "headCopy":Lokio/Segment;
    iput-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1452
    iget-object v4, v1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1453
    iget-object v4, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1455
    iget-object v4, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1456
    .local v4, "s":Lokio/Segment;
    :goto_0
    if-eq v4, v2, :cond_1

    .line 1457
    iget-object v5, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1458
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1461
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1462
    return-object v1
.end method

.method public static final commonCopyTo(Lokio/Buffer;Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 13
    .param p0, "$this$commonCopyTo"    # Lokio/Buffer;
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    move-object v0, p0

    move-object v1, p1

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "out"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 239
    .local v2, "$i$f$commonCopyTo":I
    move-wide v5, p2

    .line 240
    .local v5, "offset":J
    move-wide/from16 v9, p4

    .line 241
    .local v9, "byteCount":J
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 242
    const-wide/16 v3, 0x0

    cmp-long v7, v9, v3

    if-nez v7, :cond_0

    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v7

    add-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 247
    iget-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 248
    .local v7, "s":Lokio/Segment;
    :goto_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v8, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v11

    int-to-long v11, v8

    cmp-long v8, v5, v11

    if-ltz v8, :cond_1

    .line 249
    iget v8, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v11

    int-to-long v11, v8

    sub-long/2addr v5, v11

    .line 250
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 254
    :cond_1
    :goto_1
    cmp-long v8, v9, v3

    if-lez v8, :cond_3

    .line 255
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v8

    .line 256
    .local v8, "copy":Lokio/Segment;
    iget v11, v8, Lokio/Segment;->pos:I

    long-to-int v12, v5

    add-int/2addr v11, v12

    iput v11, v8, Lokio/Segment;->pos:I

    .line 257
    iget v11, v8, Lokio/Segment;->pos:I

    long-to-int v12, v9

    add-int/2addr v11, v12

    iget v12, v8, Lokio/Segment;->limit:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v8, Lokio/Segment;->limit:I

    .line 258
    iget-object v11, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_2

    .line 259
    iput-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    .line 260
    iget-object v11, v8, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v11, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 261
    iget-object v11, v8, Lokio/Segment;->next:Lokio/Segment;

    iput-object v11, v1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 263
    :cond_2
    iget-object v11, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v8}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 265
    :goto_2
    iget v11, v8, Lokio/Segment;->limit:I

    iget v12, v8, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    .line 266
    const-wide/16 v5, 0x0

    .line 267
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .end local v8    # "copy":Lokio/Segment;
    goto :goto_1

    .line 270
    :cond_3
    return-object v0
.end method

.method public static final commonEquals(Lokio/Buffer;Ljava/lang/Object;)Z
    .locals 21
    .param p0, "$this$commonEquals"    # Lokio/Buffer;
    .param p1, "other"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1395
    .local v2, "$i$f$commonEquals":I
    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    return v3

    .line 1396
    :cond_0
    instance-of v4, v1, Lokio/Buffer;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    .line 1397
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object v4, v1

    check-cast v4, Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    return v5

    .line 1398
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    return v3

    .line 1400
    :cond_3
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1401
    .local v4, "sa":Lokio/Segment;
    move-object v6, v1

    check-cast v6, Lokio/Buffer;

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1402
    .local v6, "sb":Lokio/Segment;
    iget v7, v4, Lokio/Segment;->pos:I

    .line 1403
    .local v7, "posA":I
    iget v10, v6, Lokio/Segment;->pos:I

    .line 1405
    .local v10, "posB":I
    const-wide/16 v11, 0x0

    .local v11, "pos":J
    const-wide/16 v13, 0x0

    .line 1407
    .local v13, "count":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v15

    cmp-long v15, v11, v15

    if-gez v15, :cond_8

    .line 1408
    iget v15, v4, Lokio/Segment;->limit:I

    sub-int/2addr v15, v7

    iget v8, v6, Lokio/Segment;->limit:I

    sub-int/2addr v8, v10

    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v13, v8

    .line 1410
    const-wide/16 v8, 0x0

    :goto_1
    cmp-long v15, v8, v13

    if-gez v15, :cond_5

    move-wide/from16 v17, v8

    .local v17, "i":J
    const-wide/16 v19, 0x1

    add-long v8, v8, v19

    .line 1411
    iget-object v15, v4, Lokio/Segment;->data:[B

    add-int/lit8 v19, v7, 0x1

    .end local v7    # "posA":I
    .local v19, "posA":I
    aget-byte v7, v15, v7

    iget-object v15, v6, Lokio/Segment;->data:[B

    add-int/lit8 v20, v10, 0x1

    .end local v10    # "posB":I
    .local v20, "posB":I
    aget-byte v10, v15, v10

    if-eq v7, v10, :cond_4

    return v5

    :cond_4
    move/from16 v7, v19

    move/from16 v10, v20

    goto :goto_1

    .line 1414
    .end local v17    # "i":J
    .end local v19    # "posA":I
    .end local v20    # "posB":I
    .restart local v7    # "posA":I
    .restart local v10    # "posB":I
    :cond_5
    iget v8, v4, Lokio/Segment;->limit:I

    if-ne v7, v8, :cond_6

    .line 1415
    iget-object v8, v4, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v8

    .line 1416
    iget v7, v4, Lokio/Segment;->pos:I

    .line 1419
    :cond_6
    iget v8, v6, Lokio/Segment;->limit:I

    if-ne v10, v8, :cond_7

    .line 1420
    iget-object v8, v6, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v8

    .line 1421
    iget v8, v6, Lokio/Segment;->pos:I

    move v10, v8

    .line 1423
    :cond_7
    add-long/2addr v11, v13

    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1426
    :cond_8
    return v3
.end method

.method public static final commonExpandBuffer(Lokio/Buffer$UnsafeCursor;I)J
    .locals 9
    .param p0, "$this$commonExpandBuffer"    # Lokio/Buffer$UnsafeCursor;
    .param p1, "minByteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1657
    .local v0, "$i$f$commonExpandBuffer":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_5

    .line 1658
    const/16 v3, 0x2000

    if-gt p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 1659
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v1, :cond_3

    .line 1660
    .local v1, "buffer":Lokio/Buffer;
    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_2

    .line 1662
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 1663
    .local v4, "oldSize":J
    invoke-virtual {v1, p1}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v2

    .line 1664
    .local v2, "tail":Lokio/Segment;
    iget v6, v2, Lokio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    .line 1665
    .local v6, "result":I
    iput v3, v2, Lokio/Segment;->limit:I

    .line 1666
    int-to-long v7, v6

    add-long/2addr v7, v4

    invoke-virtual {v1, v7, v8}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1669
    invoke-virtual {p0, v2}, Lokio/Buffer$UnsafeCursor;->setSegment$external__okio__android_common__okio_lib(Lokio/Segment;)V

    .line 1670
    iput-wide v4, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1671
    iget-object v7, v2, Lokio/Segment;->data:[B

    iput-object v7, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1672
    rsub-int v7, v6, 0x2000

    iput v7, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1673
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1675
    int-to-long v7, v6

    return-wide v7

    .line 1733
    .end local v2    # "tail":Lokio/Segment;
    .end local v4    # "oldSize":J
    .end local v6    # "result":I
    :cond_2
    const/4 v2, 0x0

    .line 1660
    .local v2, "$i$a$-check-BufferKt$commonExpandBuffer$3":I
    nop

    .end local v2    # "$i$a$-check-BufferKt$commonExpandBuffer$3":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "expandBuffer() only permitted for read/write buffers"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1733
    .end local v1    # "buffer":Lokio/Buffer;
    :cond_3
    const/4 v1, 0x0

    .line 1659
    .local v1, "$i$a$-checkNotNull-BufferKt$commonExpandBuffer$buffer$1":I
    nop

    .end local v1    # "$i$a$-checkNotNull-BufferKt$commonExpandBuffer$buffer$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1733
    :cond_4
    const/4 v1, 0x0

    .line 1658
    .local v1, "$i$a$-require-BufferKt$commonExpandBuffer$2":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "minByteCount > Segment.SIZE: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonExpandBuffer$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1733
    :cond_5
    const/4 v1, 0x0

    .line 1657
    .local v1, "$i$a$-require-BufferKt$commonExpandBuffer$1":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "minByteCount <= 0: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonExpandBuffer$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonGet(Lokio/Buffer;J)B
    .locals 13
    .param p0, "$this$commonGet"    # Lokio/Buffer;
    .param p1, "pos"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 409
    .local v0, "$i$f$commonGet":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v5, 0x1

    move-wide v3, p1

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 410
    move-object v1, p0

    .local v1, "$this$seek$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1712
    .local v2, "$i$f$seek":I
    iget-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .local v4, "offset":J
    check-cast v3, Lokio/Segment;

    .local v3, "s":Lokio/Segment;
    const/4 v6, 0x0

    .line 411
    .local v6, "$i$a$-seek-BufferKt$commonGet$1":I
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v3, Lokio/Segment;->data:[B

    iget v8, v3, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, p1

    sub-long/2addr v8, v4

    long-to-int v8, v8

    aget-byte v7, v7, v8

    return v7

    .end local v3    # "s":Lokio/Segment;
    .end local v4    # "offset":J
    .end local v6    # "$i$a$-seek-BufferKt$commonGet$1":I
    :cond_0
    nop

    .line 1714
    .local v3, "s$iv":Lokio/Segment;
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    sub-long/2addr v4, p1

    cmp-long v4, v4, p1

    if-gez v4, :cond_2

    .line 1716
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 1717
    .local v4, "offset$iv":J
    :goto_0
    cmp-long v6, v4, p1

    if-lez v6, :cond_1

    .line 1718
    iget-object v6, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v6

    .line 1719
    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    goto :goto_0

    .line 1721
    :cond_1
    move-object v6, v3

    .local v6, "s":Lokio/Segment;
    move-wide v7, v4

    .local v7, "offset":J
    const/4 v9, 0x0

    .line 411
    .local v9, "$i$a$-seek-BufferKt$commonGet$1":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v6, Lokio/Segment;->data:[B

    iget v11, v6, Lokio/Segment;->pos:I

    int-to-long v11, v11

    add-long/2addr v11, p1

    sub-long/2addr v11, v7

    long-to-int v11, v11

    aget-byte v10, v10, v11

    return v10

    .line 1724
    .end local v4    # "offset$iv":J
    .end local v6    # "s":Lokio/Segment;
    .end local v7    # "offset":J
    .end local v9    # "$i$a$-seek-BufferKt$commonGet$1":I
    :cond_2
    const-wide/16 v4, 0x0

    .line 1725
    .restart local v4    # "offset$iv":J
    :goto_1
    nop

    .line 1726
    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v6, v4

    .line 1727
    .local v6, "nextOffset$iv":J
    cmp-long v8, v6, p1

    if-lez v8, :cond_3

    .line 1731
    .end local v6    # "nextOffset$iv":J
    move-object v6, v3

    .local v6, "s":Lokio/Segment;
    move-wide v7, v4

    .restart local v7    # "offset":J
    const/4 v9, 0x0

    .line 411
    .restart local v9    # "$i$a$-seek-BufferKt$commonGet$1":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v6, Lokio/Segment;->data:[B

    iget v11, v6, Lokio/Segment;->pos:I

    int-to-long v11, v11

    add-long/2addr v11, p1

    sub-long/2addr v11, v7

    long-to-int v11, v11

    aget-byte v10, v10, v11

    return v10

    .line 1728
    .end local v7    # "offset":J
    .end local v9    # "$i$a$-seek-BufferKt$commonGet$1":I
    .local v6, "nextOffset$iv":J
    :cond_3
    iget-object v8, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v8

    .line 1729
    move-wide v4, v6

    .end local v6    # "nextOffset$iv":J
    goto :goto_1
.end method

.method public static final commonHashCode(Lokio/Buffer;)I
    .locals 7
    .param p0, "$this$commonHashCode"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1430
    .local v0, "$i$f$commonHashCode":I
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1431
    .local v1, "s":Lokio/Segment;
    :cond_0
    const/4 v2, 0x1

    .line 1433
    .local v2, "result":I
    :cond_1
    iget v3, v1, Lokio/Segment;->pos:I

    .line 1434
    .local v3, "pos":I
    iget v4, v1, Lokio/Segment;->limit:I

    .line 1435
    .local v4, "limit":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1436
    mul-int/lit8 v5, v2, 0x1f

    iget-object v6, v1, Lokio/Segment;->data:[B

    aget-byte v6, v6, v3

    add-int v2, v5, v6

    .line 1437
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1439
    :cond_2
    iget-object v5, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v5

    .line 1440
    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v1, v5, :cond_1

    .line 1441
    .end local v3    # "pos":I
    .end local v4    # "limit":I
    return v2
.end method

.method public static final commonIndexOf(Lokio/Buffer;BJJ)J
    .locals 33
    .param p0, "$this$commonIndexOf"    # Lokio/Buffer;
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    const-string v5, "<this>"

    move-object/from16 v6, p0

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1246
    .local v5, "$i$f$commonIndexOf":I
    nop

    .line 1247
    nop

    .line 1248
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v1

    const/4 v8, 0x0

    if-gtz v7, :cond_0

    cmp-long v7, v1, v3

    if-gtz v7, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v8, :cond_f

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    .end local p4    # "toIndex":J
    .local v7, "toIndex":J
    goto :goto_0

    .end local v7    # "toIndex":J
    .restart local p4    # "toIndex":J
    :cond_1
    move-wide v7, v3

    .line 1251
    .restart local v7    # "toIndex":J
    :goto_0
    cmp-long v9, v1, v7

    const-wide/16 v10, -0x1

    if-nez v9, :cond_2

    return-wide v10

    .line 1253
    :cond_2
    move-wide/from16 v12, p2

    .local v12, "fromIndex$iv":J
    move-object/from16 v9, p0

    .local v9, "$this$seek$iv":Lokio/Buffer;
    const/4 v14, 0x0

    .line 1745
    .local v14, "$i$f$seek":I
    iget-object v15, v9, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v15, :cond_3

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    .local v16, "offset":J
    check-cast v15, Lokio/Segment;

    .local v15, "s":Lokio/Segment;
    const/16 v18, 0x0

    .line 1254
    .local v18, "$i$a$-seek-BufferKt$commonIndexOf$2":I
    return-wide v10

    .end local v15    # "s":Lokio/Segment;
    .end local v16    # "offset":J
    .end local v18    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    :cond_3
    nop

    .line 1747
    .local v15, "s$iv":Lokio/Segment;
    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v16

    sub-long v16, v16, v12

    cmp-long v16, v16, v12

    if-gez v16, :cond_9

    .line 1749
    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v16

    .line 1750
    .local v16, "offset$iv":J
    :goto_1
    cmp-long v18, v16, v12

    if-lez v18, :cond_4

    .line 1751
    iget-object v10, v15, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v10

    .line 1752
    iget v10, v15, Lokio/Segment;->limit:I

    iget v11, v15, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long v16, v16, v10

    const-wide/16 v10, -0x1

    goto :goto_1

    .line 1754
    :cond_4
    move-object v10, v15

    .local v10, "s":Lokio/Segment;
    move-wide/from16 v20, v16

    .local v20, "offset":J
    const/4 v11, 0x0

    .line 1254
    .local v11, "$i$a$-seek-BufferKt$commonIndexOf$2":I
    if-nez v10, :cond_5

    const-wide/16 v18, -0x1

    return-wide v18

    :cond_5
    move-object/from16 v22, v10

    .line 1255
    .local v22, "s":Lokio/Segment;
    move-wide/from16 v23, v20

    move-wide/from16 v26, v1

    move/from16 v25, v5

    move-object/from16 v5, v22

    .line 1258
    .end local v22    # "s":Lokio/Segment;
    .local v5, "s":Lokio/Segment;
    .local v23, "offset":J
    .local v25, "$i$f$commonIndexOf":I
    .local v26, "fromIndex":J
    :goto_2
    cmp-long v22, v23, v7

    if-gez v22, :cond_8

    .line 1259
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 1260
    .local v6, "data":[B
    move-object/from16 v22, v9

    .end local v9    # "$this$seek$iv":Lokio/Buffer;
    .local v22, "$this$seek$iv":Lokio/Buffer;
    iget v9, v5, Lokio/Segment;->limit:I

    move-object/from16 v28, v10

    .end local v10    # "s":Lokio/Segment;
    .local v28, "s":Lokio/Segment;
    int-to-long v9, v9

    move/from16 v29, v11

    .end local v11    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .local v29, "$i$a$-seek-BufferKt$commonIndexOf$2":I
    iget v11, v5, Lokio/Segment;->pos:I

    move/from16 v30, v14

    move-object/from16 v31, v15

    .end local v14    # "$i$f$seek":I
    .end local v15    # "s$iv":Lokio/Segment;
    .local v30, "$i$f$seek":I
    .local v31, "s$iv":Lokio/Segment;
    int-to-long v14, v11

    add-long/2addr v14, v7

    sub-long v14, v14, v23

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    .line 1261
    .local v9, "limit":I
    iget v10, v5, Lokio/Segment;->pos:I

    int-to-long v10, v10

    add-long v10, v10, v26

    sub-long v10, v10, v23

    long-to-int v10, v10

    .line 1262
    .local v10, "pos":I
    :goto_3
    if-ge v10, v9, :cond_7

    .line 1263
    aget-byte v11, v6, v10

    if-ne v11, v0, :cond_6

    .line 1264
    iget v11, v5, Lokio/Segment;->pos:I

    sub-int v11, v10, v11

    int-to-long v14, v11

    add-long v14, v14, v23

    return-wide v14

    .line 1266
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1270
    :cond_7
    iget v11, v5, Lokio/Segment;->limit:I

    iget v14, v5, Lokio/Segment;->pos:I

    sub-int/2addr v11, v14

    int-to-long v14, v11

    add-long v23, v23, v14

    .line 1271
    move-wide/from16 v26, v23

    .line 1272
    iget-object v11, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v11

    move-object/from16 v6, p0

    move-object/from16 v9, v22

    move-object/from16 v10, v28

    move/from16 v11, v29

    move/from16 v14, v30

    move-object/from16 v15, v31

    .end local v6    # "data":[B
    .end local v9    # "limit":I
    .end local v10    # "pos":I
    goto :goto_2

    .line 1275
    .end local v22    # "$this$seek$iv":Lokio/Buffer;
    .end local v28    # "s":Lokio/Segment;
    .end local v29    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .end local v30    # "$i$f$seek":I
    .end local v31    # "s$iv":Lokio/Segment;
    .local v9, "$this$seek$iv":Lokio/Buffer;
    .local v10, "s":Lokio/Segment;
    .restart local v11    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .restart local v14    # "$i$f$seek":I
    .restart local v15    # "s$iv":Lokio/Segment;
    :cond_8
    move-object/from16 v22, v9

    .end local v9    # "$this$seek$iv":Lokio/Buffer;
    .restart local v22    # "$this$seek$iv":Lokio/Buffer;
    const-wide/16 v9, -0x1

    return-wide v9

    .line 1757
    .end local v10    # "s":Lokio/Segment;
    .end local v11    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .end local v16    # "offset$iv":J
    .end local v20    # "offset":J
    .end local v22    # "$this$seek$iv":Lokio/Buffer;
    .end local v23    # "offset":J
    .end local v25    # "$i$f$commonIndexOf":I
    .end local v26    # "fromIndex":J
    .local v5, "$i$f$commonIndexOf":I
    .restart local v9    # "$this$seek$iv":Lokio/Buffer;
    :cond_9
    move/from16 v25, v5

    move-object/from16 v22, v9

    move/from16 v30, v14

    .end local v5    # "$i$f$commonIndexOf":I
    .end local v9    # "$this$seek$iv":Lokio/Buffer;
    .end local v14    # "$i$f$seek":I
    .restart local v22    # "$this$seek$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$commonIndexOf":I
    .restart local v30    # "$i$f$seek":I
    const-wide/16 v5, 0x0

    .line 1758
    .local v5, "offset$iv":J
    :goto_4
    nop

    .line 1759
    iget v9, v15, Lokio/Segment;->limit:I

    iget v10, v15, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v9, v5

    .line 1760
    .local v9, "nextOffset$iv":J
    cmp-long v11, v9, v12

    if-lez v11, :cond_e

    .line 1764
    .end local v9    # "nextOffset$iv":J
    move-object v9, v15

    .local v9, "s":Lokio/Segment;
    move-wide v10, v5

    .local v10, "offset":J
    const/4 v14, 0x0

    .line 1254
    .local v14, "$i$a$-seek-BufferKt$commonIndexOf$2":I
    if-nez v9, :cond_a

    const-wide/16 v16, -0x1

    return-wide v16

    :cond_a
    move-object/from16 v16, v9

    .line 1255
    .local v16, "s":Lokio/Segment;
    move-wide/from16 v20, v10

    move-wide/from16 v23, v5

    move-object/from16 v5, v16

    move-wide/from16 v16, v1

    .line 1258
    .local v5, "s":Lokio/Segment;
    .local v16, "fromIndex":J
    .restart local v20    # "offset":J
    .local v23, "offset$iv":J
    :goto_5
    cmp-long v6, v20, v7

    if-gez v6, :cond_d

    .line 1259
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 1260
    .restart local v6    # "data":[B
    move-object/from16 v26, v9

    .end local v9    # "s":Lokio/Segment;
    .local v26, "s":Lokio/Segment;
    iget v9, v5, Lokio/Segment;->limit:I

    move-wide/from16 v27, v10

    .end local v10    # "offset":J
    .local v27, "offset":J
    int-to-long v9, v9

    iget v11, v5, Lokio/Segment;->pos:I

    move-wide/from16 v31, v12

    .end local v12    # "fromIndex$iv":J
    .local v31, "fromIndex$iv":J
    int-to-long v11, v11

    add-long/2addr v11, v7

    sub-long v11, v11, v20

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    .line 1261
    .local v9, "limit":I
    iget v10, v5, Lokio/Segment;->pos:I

    int-to-long v10, v10

    add-long v10, v10, v16

    sub-long v10, v10, v20

    long-to-int v10, v10

    .line 1262
    .local v10, "pos":I
    :goto_6
    if-ge v10, v9, :cond_c

    .line 1263
    aget-byte v11, v6, v10

    if-ne v11, v0, :cond_b

    .line 1264
    iget v11, v5, Lokio/Segment;->pos:I

    sub-int v11, v10, v11

    int-to-long v11, v11

    add-long v11, v11, v20

    return-wide v11

    .line 1266
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1270
    :cond_c
    iget v11, v5, Lokio/Segment;->limit:I

    iget v12, v5, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    add-long v20, v20, v11

    .line 1271
    move-wide/from16 v16, v20

    .line 1272
    iget-object v11, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v11

    move-object/from16 v9, v26

    move-wide/from16 v10, v27

    move-wide/from16 v12, v31

    .end local v6    # "data":[B
    .end local v9    # "limit":I
    .end local v10    # "pos":I
    goto :goto_5

    .line 1275
    .end local v26    # "s":Lokio/Segment;
    .end local v27    # "offset":J
    .end local v31    # "fromIndex$iv":J
    .local v9, "s":Lokio/Segment;
    .local v10, "offset":J
    .restart local v12    # "fromIndex$iv":J
    :cond_d
    const-wide/16 v11, -0x1

    return-wide v11

    .line 1761
    .end local v10    # "offset":J
    .end local v14    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .end local v16    # "fromIndex":J
    .end local v20    # "offset":J
    .end local v23    # "offset$iv":J
    .local v5, "offset$iv":J
    .local v9, "nextOffset$iv":J
    :cond_e
    move-wide/from16 v23, v5

    move-wide/from16 v31, v12

    const-wide/16 v11, -0x1

    .end local v5    # "offset$iv":J
    .end local v12    # "fromIndex$iv":J
    .restart local v23    # "offset$iv":J
    .restart local v31    # "fromIndex$iv":J
    iget-object v5, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v5

    .line 1762
    move-wide v5, v9

    move-wide/from16 v12, v31

    .end local v9    # "nextOffset$iv":J
    .end local v23    # "offset$iv":J
    .restart local v5    # "offset$iv":J
    goto :goto_4

    .line 1733
    .end local v7    # "toIndex":J
    .end local v15    # "s$iv":Lokio/Segment;
    .end local v22    # "$this$seek$iv":Lokio/Buffer;
    .end local v25    # "$i$f$commonIndexOf":I
    .end local v30    # "$i$f$seek":I
    .end local v31    # "fromIndex$iv":J
    .local v5, "$i$f$commonIndexOf":I
    :cond_f
    move/from16 v25, v5

    .end local v5    # "$i$f$commonIndexOf":I
    .restart local v25    # "$i$f$commonIndexOf":I
    const/4 v5, 0x0

    .line 1248
    .local v5, "$i$a$-require-BufferKt$commonIndexOf$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fromIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " toIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonIndexOf$1":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static final commonIndexOf(Lokio/Buffer;Lokio/ByteString;J)J
    .locals 29
    .param p0, "$this$commonIndexOf"    # Lokio/Buffer;
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1280
    .local v0, "$i$f$commonIndexOf":I
    nop

    .line 1281
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_10

    .line 1282
    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_f

    .line 1284
    move-wide/from16 v6, p2

    .local v6, "fromIndex$iv":J
    move-object/from16 v3, p0

    .local v3, "$this$seek$iv":Lokio/Buffer;
    const/4 v8, 0x0

    .line 1765
    .local v8, "$i$f$seek":I
    iget-object v9, v3, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v10, -0x1

    if-nez v9, :cond_2

    const/4 v4, 0x0

    const-wide/16 v12, -0x1

    .local v12, "offset":J
    check-cast v4, Lokio/Segment;

    .local v4, "s":Lokio/Segment;
    const/4 v5, 0x0

    .line 1285
    .local v5, "$i$a$-seek-BufferKt$commonIndexOf$5":I
    return-wide v10

    .end local v4    # "s":Lokio/Segment;
    .end local v5    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .end local v12    # "offset":J
    :cond_2
    nop

    .line 1767
    .local v9, "s$iv":Lokio/Segment;
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v12

    sub-long/2addr v12, v6

    cmp-long v12, v12, v6

    if-gez v12, :cond_8

    .line 1769
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v15

    .line 1770
    .local v15, "offset$iv":J
    :goto_2
    cmp-long v12, v15, v6

    if-lez v12, :cond_3

    .line 1771
    iget-object v12, v9, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v12

    .line 1772
    iget v12, v9, Lokio/Segment;->limit:I

    iget v5, v9, Lokio/Segment;->pos:I

    sub-int/2addr v12, v5

    int-to-long v13, v12

    sub-long/2addr v15, v13

    goto :goto_2

    .line 1774
    :cond_3
    move-object v5, v9

    .local v5, "s":Lokio/Segment;
    move-wide v12, v15

    .restart local v12    # "offset":J
    const/4 v14, 0x0

    .line 1285
    .local v14, "$i$a$-seek-BufferKt$commonIndexOf$5":I
    if-nez v5, :cond_4

    return-wide v10

    :cond_4
    move-object/from16 v19, v5

    .line 1286
    .local v19, "s":Lokio/Segment;
    move-wide/from16 v20, v12

    .line 1290
    .local v20, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v10

    .line 1291
    .local v10, "targetByteArray":[B
    aget-byte v4, v10, v4

    .line 1292
    .local v4, "b0":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v11

    .line 1293
    .local v11, "bytesSize":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v22

    move/from16 v24, v0

    .end local v0    # "$i$f$commonIndexOf":I
    .local v24, "$i$f$commonIndexOf":I
    int-to-long v0, v11

    sub-long v22, v22, v0

    const-wide/16 v0, 0x1

    add-long v22, v22, v0

    move-wide/from16 v17, p2

    move-object/from16 v0, v19

    .line 1294
    .end local v19    # "s":Lokio/Segment;
    .local v0, "s":Lokio/Segment;
    .local v17, "fromIndex":J
    .local v22, "resultLimit":J
    :goto_3
    cmp-long v1, v20, v22

    if-gez v1, :cond_7

    .line 1296
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1297
    .local v1, "data":[B
    iget v2, v0, Lokio/Segment;->limit:I

    move-object/from16 v19, v3

    .end local v3    # "$this$seek$iv":Lokio/Buffer;
    .local v2, "a$iv":I
    .local v19, "$this$seek$iv":Lokio/Buffer;
    iget v3, v0, Lokio/Segment;->pos:I

    move/from16 v25, v8

    move-object/from16 v26, v9

    .end local v8    # "$i$f$seek":I
    .end local v9    # "s$iv":Lokio/Segment;
    .local v25, "$i$f$seek":I
    .local v26, "s$iv":Lokio/Segment;
    int-to-long v8, v3

    add-long v8, v8, v22

    sub-long v8, v8, v20

    .local v8, "b$iv":J
    const/4 v3, 0x0

    .line 1766
    .local v3, "$i$f$minOf":I
    move-wide/from16 v27, v12

    .end local v12    # "offset":J
    .local v27, "offset":J
    int-to-long v12, v2

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1297
    .end local v2    # "a$iv":I
    .end local v3    # "$i$f$minOf":I
    .end local v8    # "b$iv":J
    long-to-int v2, v12

    .line 1298
    .local v2, "segmentLimit":I
    iget v3, v0, Lokio/Segment;->pos:I

    int-to-long v8, v3

    add-long v8, v8, v17

    sub-long v8, v8, v20

    long-to-int v3, v8

    :cond_5
    if-ge v3, v2, :cond_6

    move v8, v3

    .local v8, "pos":I
    add-int/lit8 v3, v3, 0x1

    .line 1299
    aget-byte v9, v1, v8

    if-ne v9, v4, :cond_5

    add-int/lit8 v9, v8, 0x1

    const/4 v12, 0x1

    invoke-static {v0, v9, v10, v12, v11}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1300
    iget v3, v0, Lokio/Segment;->pos:I

    sub-int v3, v8, v3

    int-to-long v12, v3

    add-long v12, v12, v20

    return-wide v12

    .line 1305
    .end local v8    # "pos":I
    :cond_6
    iget v3, v0, Lokio/Segment;->limit:I

    iget v8, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v8

    int-to-long v8, v3

    add-long v20, v20, v8

    .line 1306
    move-wide/from16 v17, v20

    .line 1307
    iget-object v3, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v3

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v8, v25

    move-object/from16 v9, v26

    move-wide/from16 v12, v27

    .end local v1    # "data":[B
    .end local v2    # "segmentLimit":I
    goto :goto_3

    .line 1310
    .end local v19    # "$this$seek$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .end local v26    # "s$iv":Lokio/Segment;
    .end local v27    # "offset":J
    .local v3, "$this$seek$iv":Lokio/Buffer;
    .local v8, "$i$f$seek":I
    .restart local v9    # "s$iv":Lokio/Segment;
    .restart local v12    # "offset":J
    :cond_7
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1777
    .end local v4    # "b0":B
    .end local v5    # "s":Lokio/Segment;
    .end local v10    # "targetByteArray":[B
    .end local v11    # "bytesSize":I
    .end local v12    # "offset":J
    .end local v14    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .end local v15    # "offset$iv":J
    .end local v17    # "fromIndex":J
    .end local v20    # "offset":J
    .end local v22    # "resultLimit":J
    .end local v24    # "$i$f$commonIndexOf":I
    .local v0, "$i$f$commonIndexOf":I
    :cond_8
    move/from16 v24, v0

    move-object/from16 v19, v3

    move/from16 v25, v8

    .end local v0    # "$i$f$commonIndexOf":I
    .end local v3    # "$this$seek$iv":Lokio/Buffer;
    .end local v8    # "$i$f$seek":I
    .restart local v19    # "$this$seek$iv":Lokio/Buffer;
    .restart local v24    # "$i$f$commonIndexOf":I
    .restart local v25    # "$i$f$seek":I
    const-wide/16 v0, 0x0

    .line 1778
    .local v0, "offset$iv":J
    :goto_4
    nop

    .line 1779
    iget v2, v9, Lokio/Segment;->limit:I

    iget v3, v9, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 1780
    .local v2, "nextOffset$iv":J
    cmp-long v5, v2, v6

    if-lez v5, :cond_e

    .line 1784
    .end local v2    # "nextOffset$iv":J
    move-object v2, v9

    .local v2, "s":Lokio/Segment;
    move-wide v10, v0

    .local v10, "offset":J
    const/4 v3, 0x0

    .line 1285
    .local v3, "$i$a$-seek-BufferKt$commonIndexOf$5":I
    if-nez v2, :cond_9

    const-wide/16 v4, -0x1

    return-wide v4

    :cond_9
    move-object v5, v2

    .line 1286
    .restart local v5    # "s":Lokio/Segment;
    move-wide v12, v10

    .line 1290
    .restart local v12    # "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v8

    .line 1291
    .local v8, "targetByteArray":[B
    aget-byte v4, v8, v4

    .line 1292
    .restart local v4    # "b0":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v14

    .line 1293
    .local v14, "bytesSize":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v15

    move-wide/from16 v20, v0

    .end local v0    # "offset$iv":J
    .local v20, "offset$iv":J
    int-to-long v0, v14

    sub-long/2addr v15, v0

    const-wide/16 v0, 0x1

    add-long/2addr v15, v0

    move-wide/from16 v0, p2

    .line 1294
    .local v0, "fromIndex":J
    .local v15, "resultLimit":J
    :goto_5
    cmp-long v17, v12, v15

    if-gez v17, :cond_d

    .line 1296
    move-object/from16 v17, v2

    .end local v2    # "s":Lokio/Segment;
    .local v17, "s":Lokio/Segment;
    iget-object v2, v5, Lokio/Segment;->data:[B

    .line 1297
    .local v2, "data":[B
    move/from16 v18, v3

    .end local v3    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .local v18, "$i$a$-seek-BufferKt$commonIndexOf$5":I
    iget v3, v5, Lokio/Segment;->limit:I

    move-wide/from16 v22, v6

    .end local v6    # "fromIndex$iv":J
    .local v3, "a$iv":I
    .local v22, "fromIndex$iv":J
    iget v6, v5, Lokio/Segment;->pos:I

    int-to-long v6, v6

    add-long/2addr v6, v15

    sub-long/2addr v6, v12

    .local v6, "b$iv":J
    const/16 v26, 0x0

    .line 1766
    .local v26, "$i$f$minOf":I
    move-wide/from16 v27, v10

    .end local v10    # "offset":J
    .restart local v27    # "offset":J
    int-to-long v10, v3

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1297
    .end local v3    # "a$iv":I
    .end local v6    # "b$iv":J
    .end local v26    # "$i$f$minOf":I
    long-to-int v3, v10

    .line 1298
    .local v3, "segmentLimit":I
    iget v6, v5, Lokio/Segment;->pos:I

    int-to-long v6, v6

    add-long/2addr v6, v0

    sub-long/2addr v6, v12

    long-to-int v6, v6

    :cond_a
    :goto_6
    if-ge v6, v3, :cond_c

    move v7, v6

    .local v7, "pos":I
    add-int/lit8 v6, v6, 0x1

    .line 1299
    aget-byte v10, v2, v7

    if-ne v10, v4, :cond_b

    add-int/lit8 v10, v7, 0x1

    const/4 v11, 0x1

    invoke-static {v5, v10, v8, v11, v14}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1300
    iget v6, v5, Lokio/Segment;->pos:I

    sub-int v6, v7, v6

    int-to-long v10, v6

    add-long/2addr v10, v12

    return-wide v10

    .line 1299
    :cond_b
    const/4 v11, 0x1

    goto :goto_6

    .line 1305
    .end local v7    # "pos":I
    :cond_c
    const/4 v11, 0x1

    iget v6, v5, Lokio/Segment;->limit:I

    iget v7, v5, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v12, v6

    .line 1306
    move-wide v0, v12

    .line 1307
    iget-object v6, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v6

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-wide/from16 v6, v22

    move-wide/from16 v10, v27

    .end local v2    # "data":[B
    .end local v3    # "segmentLimit":I
    goto :goto_5

    .line 1310
    .end local v17    # "s":Lokio/Segment;
    .end local v18    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .end local v22    # "fromIndex$iv":J
    .end local v27    # "offset":J
    .local v2, "s":Lokio/Segment;
    .local v3, "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .local v6, "fromIndex$iv":J
    .restart local v10    # "offset":J
    :cond_d
    move-wide/from16 v22, v6

    .end local v6    # "fromIndex$iv":J
    .restart local v22    # "fromIndex$iv":J
    const-wide/16 v6, -0x1

    return-wide v6

    .line 1781
    .end local v3    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .end local v4    # "b0":B
    .end local v5    # "s":Lokio/Segment;
    .end local v8    # "targetByteArray":[B
    .end local v10    # "offset":J
    .end local v12    # "offset":J
    .end local v14    # "bytesSize":I
    .end local v15    # "resultLimit":J
    .end local v20    # "offset$iv":J
    .end local v22    # "fromIndex$iv":J
    .local v0, "offset$iv":J
    .local v2, "nextOffset$iv":J
    .restart local v6    # "fromIndex$iv":J
    :cond_e
    move-wide/from16 v20, v0

    move-wide/from16 v22, v6

    const-wide/16 v0, 0x1

    const-wide/16 v6, -0x1

    const/4 v11, 0x1

    .end local v0    # "offset$iv":J
    .end local v6    # "fromIndex$iv":J
    .restart local v20    # "offset$iv":J
    .restart local v22    # "fromIndex$iv":J
    iget-object v5, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v5

    .line 1782
    move-wide v0, v2

    move-wide/from16 v6, v22

    .end local v20    # "offset$iv":J
    .local v2, "offset$iv":J
    goto/16 :goto_4

    .line 1733
    .end local v2    # "offset$iv":J
    .end local v9    # "s$iv":Lokio/Segment;
    .end local v19    # "$this$seek$iv":Lokio/Buffer;
    .end local v22    # "fromIndex$iv":J
    .end local v24    # "$i$f$commonIndexOf":I
    .end local v25    # "$i$f$seek":I
    .local v0, "$i$f$commonIndexOf":I
    :cond_f
    move/from16 v24, v0

    .end local v0    # "$i$f$commonIndexOf":I
    .restart local v24    # "$i$f$commonIndexOf":I
    const/4 v0, 0x0

    .line 1282
    .local v0, "$i$a$-require-BufferKt$commonIndexOf$4":I
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fromIndex < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOf$4":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1733
    .end local v24    # "$i$f$commonIndexOf":I
    .local v0, "$i$f$commonIndexOf":I
    :cond_10
    move/from16 v24, v0

    .end local v0    # "$i$f$commonIndexOf":I
    .restart local v24    # "$i$f$commonIndexOf":I
    const/4 v0, 0x0

    .line 1281
    .local v0, "$i$a$-require-BufferKt$commonIndexOf$3":I
    nop

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOf$3":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonIndexOfElement(Lokio/Buffer;Lokio/ByteString;J)J
    .locals 29
    .param p0, "$this$commonIndexOfElement"    # Lokio/Buffer;
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targetBytes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1315
    .local v1, "$i$f$commonIndexOfElement":I
    nop

    .line 1316
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_19

    .line 1318
    move-wide/from16 v6, p2

    .local v6, "fromIndex$iv":J
    move-object/from16 v3, p0

    .local v3, "$this$seek$iv":Lokio/Buffer;
    const/4 v8, 0x0

    .line 1785
    .local v8, "$i$f$seek":I
    iget-object v9, v3, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v10, -0x1

    if-nez v9, :cond_1

    const/4 v4, 0x0

    const-wide/16 v12, -0x1

    .local v12, "offset":J
    check-cast v4, Lokio/Segment;

    .local v4, "s":Lokio/Segment;
    const/4 v5, 0x0

    .line 1319
    .local v5, "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    return-wide v10

    .end local v4    # "s":Lokio/Segment;
    .end local v5    # "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    .end local v12    # "offset":J
    :cond_1
    nop

    .line 1787
    .local v9, "s$iv":Lokio/Segment;
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v12

    sub-long/2addr v12, v6

    cmp-long v12, v12, v6

    const/4 v13, 0x2

    if-gez v12, :cond_d

    .line 1789
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v14

    .line 1790
    .local v14, "offset$iv":J
    :goto_1
    cmp-long v12, v14, v6

    if-lez v12, :cond_2

    .line 1791
    iget-object v12, v9, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v12

    .line 1792
    iget v12, v9, Lokio/Segment;->limit:I

    iget v5, v9, Lokio/Segment;->pos:I

    sub-int/2addr v12, v5

    int-to-long v4, v12

    sub-long/2addr v14, v4

    goto :goto_1

    .line 1794
    :cond_2
    move-object v4, v9

    .restart local v4    # "s":Lokio/Segment;
    move-wide/from16 v18, v14

    .local v18, "offset":J
    const/4 v5, 0x0

    .line 1319
    .restart local v5    # "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    if-nez v4, :cond_3

    return-wide v10

    :cond_3
    move-object v12, v4

    .line 1320
    .local v12, "s":Lokio/Segment;
    move-wide/from16 v20, v18

    .line 1325
    .local v20, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v10

    if-ne v10, v13, :cond_8

    .line 1327
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lokio/ByteString;->getByte(I)B

    move-result v10

    .line 1328
    .local v10, "b0":B
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lokio/ByteString;->getByte(I)B

    move-result v11

    move-wide/from16 v16, p2

    .line 1329
    .local v11, "b1":B
    .local v16, "fromIndex":J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v22

    cmp-long v13, v20, v22

    if-gez v13, :cond_7

    .line 1330
    iget-object v13, v12, Lokio/Segment;->data:[B

    .line 1331
    .local v13, "data":[B
    move/from16 v22, v1

    .end local v1    # "$i$f$commonIndexOfElement":I
    .local v22, "$i$f$commonIndexOfElement":I
    iget v1, v12, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long v1, v1, v16

    sub-long v1, v1, v20

    long-to-int v1, v1

    .line 1332
    .local v1, "pos":I
    iget v2, v12, Lokio/Segment;->limit:I

    .line 1333
    .local v2, "limit":I
    :goto_3
    if-ge v1, v2, :cond_6

    .line 1334
    move/from16 v23, v2

    .end local v2    # "limit":I
    .local v23, "limit":I
    aget-byte v2, v13, v1

    .line 1335
    .local v2, "b":I
    if-eq v2, v10, :cond_5

    if-ne v2, v11, :cond_4

    goto :goto_4

    .line 1338
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v23

    .end local v2    # "b":I
    goto :goto_3

    .line 1336
    .restart local v2    # "b":I
    :cond_5
    :goto_4
    move/from16 v24, v2

    .end local v2    # "b":I
    .local v24, "b":I
    iget v2, v12, Lokio/Segment;->pos:I

    sub-int v2, v1, v2

    move/from16 v25, v1

    .end local v1    # "pos":I
    .local v25, "pos":I
    int-to-long v1, v2

    add-long v1, v1, v20

    return-wide v1

    .line 1342
    .end local v23    # "limit":I
    .end local v24    # "b":I
    .end local v25    # "pos":I
    .restart local v1    # "pos":I
    .local v2, "limit":I
    :cond_6
    move/from16 v25, v1

    move/from16 v23, v2

    .end local v1    # "pos":I
    .end local v2    # "limit":I
    .restart local v23    # "limit":I
    .restart local v25    # "pos":I
    iget v1, v12, Lokio/Segment;->limit:I

    iget v2, v12, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long v20, v20, v1

    .line 1343
    move-wide/from16 v16, v20

    .line 1344
    iget-object v1, v12, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v12, v1

    move-object/from16 v2, p0

    move/from16 v1, v22

    .end local v13    # "data":[B
    .end local v23    # "limit":I
    .end local v25    # "pos":I
    goto :goto_2

    .line 1329
    .end local v22    # "$i$f$commonIndexOfElement":I
    .local v1, "$i$f$commonIndexOfElement":I
    :cond_7
    move/from16 v22, v1

    .end local v1    # "$i$f$commonIndexOfElement":I
    .restart local v22    # "$i$f$commonIndexOfElement":I
    move-object/from16 v23, v3

    move-wide/from16 v10, v16

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 1348
    .end local v10    # "b0":B
    .end local v11    # "b1":B
    .end local v16    # "fromIndex":J
    .end local v22    # "$i$f$commonIndexOfElement":I
    .restart local v1    # "$i$f$commonIndexOfElement":I
    :cond_8
    move/from16 v22, v1

    .end local v1    # "$i$f$commonIndexOfElement":I
    .restart local v22    # "$i$f$commonIndexOfElement":I
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v1

    move-wide/from16 v10, p2

    .line 1349
    .local v1, "targetByteArray":[B
    .local v10, "fromIndex":J
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v23

    cmp-long v2, v20, v23

    if-gez v2, :cond_c

    .line 1350
    iget-object v2, v12, Lokio/Segment;->data:[B

    .line 1351
    .local v2, "data":[B
    iget v13, v12, Lokio/Segment;->pos:I

    move-object/from16 v23, v3

    move-object/from16 v16, v4

    .end local v3    # "$this$seek$iv":Lokio/Buffer;
    .end local v4    # "s":Lokio/Segment;
    .local v16, "s":Lokio/Segment;
    .local v23, "$this$seek$iv":Lokio/Buffer;
    int-to-long v3, v13

    add-long/2addr v3, v10

    sub-long v3, v3, v20

    long-to-int v3, v3

    .line 1352
    .local v3, "pos":I
    iget v4, v12, Lokio/Segment;->limit:I

    .line 1353
    .local v4, "limit":I
    :goto_6
    if-ge v3, v4, :cond_b

    .line 1354
    aget-byte v13, v2, v3

    .line 1355
    .local v13, "b":I
    move-object/from16 v24, v2

    .end local v2    # "data":[B
    .local v24, "data":[B
    array-length v2, v1

    move/from16 v25, v4

    const/4 v4, 0x0

    .end local v4    # "limit":I
    .local v25, "limit":I
    :goto_7
    if-ge v4, v2, :cond_a

    move/from16 v26, v2

    aget-byte v2, v1, v4

    .local v2, "t":B
    add-int/lit8 v4, v4, 0x1

    .line 1356
    if-ne v13, v2, :cond_9

    iget v4, v12, Lokio/Segment;->pos:I

    sub-int v4, v3, v4

    move-object/from16 v27, v1

    move/from16 v28, v2

    .end local v1    # "targetByteArray":[B
    .end local v2    # "t":B
    .local v27, "targetByteArray":[B
    .local v28, "t":B
    int-to-long v1, v4

    add-long v1, v1, v20

    return-wide v1

    .end local v27    # "targetByteArray":[B
    .end local v28    # "t":B
    .restart local v1    # "targetByteArray":[B
    .restart local v2    # "t":B
    :cond_9
    move-object/from16 v27, v1

    move/from16 v28, v2

    .end local v1    # "targetByteArray":[B
    .end local v2    # "t":B
    .restart local v27    # "targetByteArray":[B
    .restart local v28    # "t":B
    move/from16 v2, v26

    goto :goto_7

    .line 1358
    .end local v27    # "targetByteArray":[B
    .end local v28    # "t":B
    .restart local v1    # "targetByteArray":[B
    :cond_a
    move-object/from16 v27, v1

    .end local v1    # "targetByteArray":[B
    .restart local v27    # "targetByteArray":[B
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v24

    move/from16 v4, v25

    .end local v13    # "b":I
    goto :goto_6

    .line 1362
    .end local v24    # "data":[B
    .end local v25    # "limit":I
    .end local v27    # "targetByteArray":[B
    .restart local v1    # "targetByteArray":[B
    .local v2, "data":[B
    .restart local v4    # "limit":I
    :cond_b
    move-object/from16 v27, v1

    move-object/from16 v24, v2

    move/from16 v25, v4

    .end local v1    # "targetByteArray":[B
    .end local v2    # "data":[B
    .end local v4    # "limit":I
    .restart local v24    # "data":[B
    .restart local v25    # "limit":I
    .restart local v27    # "targetByteArray":[B
    iget v1, v12, Lokio/Segment;->limit:I

    iget v2, v12, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long v20, v20, v1

    .line 1363
    move-wide/from16 v10, v20

    .line 1364
    iget-object v1, v12, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v12, v1

    move-object/from16 v4, v16

    move-object/from16 v3, v23

    move-object/from16 v1, v27

    .end local v3    # "pos":I
    .end local v24    # "data":[B
    .end local v25    # "limit":I
    goto :goto_5

    .line 1349
    .end local v16    # "s":Lokio/Segment;
    .end local v23    # "$this$seek$iv":Lokio/Buffer;
    .end local v27    # "targetByteArray":[B
    .restart local v1    # "targetByteArray":[B
    .local v3, "$this$seek$iv":Lokio/Buffer;
    .local v4, "s":Lokio/Segment;
    :cond_c
    move-object/from16 v27, v1

    move-object/from16 v23, v3

    move-object/from16 v16, v4

    .line 1368
    .end local v1    # "targetByteArray":[B
    .end local v3    # "$this$seek$iv":Lokio/Buffer;
    .end local v4    # "s":Lokio/Segment;
    .restart local v16    # "s":Lokio/Segment;
    .restart local v23    # "$this$seek$iv":Lokio/Buffer;
    :goto_8
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1797
    .end local v5    # "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    .end local v10    # "fromIndex":J
    .end local v12    # "s":Lokio/Segment;
    .end local v14    # "offset$iv":J
    .end local v16    # "s":Lokio/Segment;
    .end local v18    # "offset":J
    .end local v20    # "offset":J
    .end local v22    # "$i$f$commonIndexOfElement":I
    .end local v23    # "$this$seek$iv":Lokio/Buffer;
    .local v1, "$i$f$commonIndexOfElement":I
    .restart local v3    # "$this$seek$iv":Lokio/Buffer;
    :cond_d
    move/from16 v22, v1

    move-object/from16 v23, v3

    .end local v1    # "$i$f$commonIndexOfElement":I
    .end local v3    # "$this$seek$iv":Lokio/Buffer;
    .restart local v22    # "$i$f$commonIndexOfElement":I
    .restart local v23    # "$this$seek$iv":Lokio/Buffer;
    const-wide/16 v1, 0x0

    .line 1798
    .local v1, "offset$iv":J
    :goto_9
    nop

    .line 1799
    iget v3, v9, Lokio/Segment;->limit:I

    iget v4, v9, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 1800
    .local v3, "nextOffset$iv":J
    cmp-long v5, v3, v6

    if-lez v5, :cond_18

    .line 1804
    .end local v3    # "nextOffset$iv":J
    move-object v3, v9

    .local v3, "s":Lokio/Segment;
    move-wide v4, v1

    .local v4, "offset":J
    const/4 v10, 0x0

    .line 1319
    .local v10, "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    if-nez v3, :cond_e

    const-wide/16 v11, -0x1

    return-wide v11

    :cond_e
    move-object v11, v3

    .line 1320
    .local v11, "s":Lokio/Segment;
    move-wide v14, v4

    .line 1325
    .local v14, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v12

    if-ne v12, v13, :cond_13

    .line 1327
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lokio/ByteString;->getByte(I)B

    move-result v12

    .line 1328
    .local v12, "b0":B
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lokio/ByteString;->getByte(I)B

    move-result v13

    move-wide/from16 v16, p2

    .line 1329
    .local v13, "b1":B
    .local v16, "fromIndex":J
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v18

    cmp-long v18, v14, v18

    if-gez v18, :cond_12

    .line 1330
    iget-object v0, v11, Lokio/Segment;->data:[B

    .line 1331
    .local v0, "data":[B
    move-wide/from16 v18, v1

    .end local v1    # "offset$iv":J
    .local v18, "offset$iv":J
    iget v1, v11, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long v1, v1, v16

    sub-long/2addr v1, v14

    long-to-int v1, v1

    .line 1332
    .local v1, "pos":I
    iget v2, v11, Lokio/Segment;->limit:I

    .line 1333
    .local v2, "limit":I
    :goto_b
    if-ge v1, v2, :cond_11

    .line 1334
    move/from16 v20, v2

    .end local v2    # "limit":I
    .local v20, "limit":I
    aget-byte v2, v0, v1

    .line 1335
    .local v2, "b":I
    if-eq v2, v12, :cond_10

    if-ne v2, v13, :cond_f

    goto :goto_c

    .line 1338
    :cond_f
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v20

    .end local v2    # "b":I
    goto :goto_b

    .line 1336
    .restart local v2    # "b":I
    :cond_10
    :goto_c
    move-object/from16 v21, v0

    .end local v0    # "data":[B
    .local v21, "data":[B
    iget v0, v11, Lokio/Segment;->pos:I

    sub-int v0, v1, v0

    move/from16 v24, v1

    .end local v1    # "pos":I
    .local v24, "pos":I
    int-to-long v0, v0

    add-long/2addr v0, v14

    return-wide v0

    .line 1342
    .end local v20    # "limit":I
    .end local v21    # "data":[B
    .end local v24    # "pos":I
    .restart local v0    # "data":[B
    .restart local v1    # "pos":I
    .local v2, "limit":I
    :cond_11
    move-object/from16 v21, v0

    move/from16 v24, v1

    move/from16 v20, v2

    .end local v0    # "data":[B
    .end local v1    # "pos":I
    .end local v2    # "limit":I
    .restart local v20    # "limit":I
    .restart local v21    # "data":[B
    .restart local v24    # "pos":I
    iget v0, v11, Lokio/Segment;->limit:I

    iget v1, v11, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v14, v0

    .line 1343
    move-wide/from16 v16, v14

    .line 1344
    iget-object v0, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    .end local v20    # "limit":I
    .end local v21    # "data":[B
    .end local v24    # "pos":I
    goto :goto_a

    .line 1329
    .end local v18    # "offset$iv":J
    .local v1, "offset$iv":J
    :cond_12
    move-wide/from16 v18, v1

    .end local v1    # "offset$iv":J
    .restart local v18    # "offset$iv":J
    move-object/from16 v24, v3

    goto/16 :goto_10

    .line 1348
    .end local v12    # "b0":B
    .end local v13    # "b1":B
    .end local v16    # "fromIndex":J
    .end local v18    # "offset$iv":J
    .restart local v1    # "offset$iv":J
    :cond_13
    move-wide/from16 v18, v1

    const/4 v12, 0x0

    .end local v1    # "offset$iv":J
    .restart local v18    # "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v0

    move-wide/from16 v16, p2

    .line 1349
    .local v0, "targetByteArray":[B
    .restart local v16    # "fromIndex":J
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, v14, v1

    if-gez v1, :cond_17

    .line 1350
    iget-object v1, v11, Lokio/Segment;->data:[B

    .line 1351
    .local v1, "data":[B
    iget v2, v11, Lokio/Segment;->pos:I

    int-to-long v12, v2

    add-long v12, v12, v16

    sub-long/2addr v12, v14

    long-to-int v2, v12

    .line 1352
    .local v2, "pos":I
    iget v12, v11, Lokio/Segment;->limit:I

    .line 1353
    .local v12, "limit":I
    :goto_e
    if-ge v2, v12, :cond_16

    .line 1354
    aget-byte v13, v1, v2

    .line 1355
    .local v13, "b":I
    move-object/from16 v21, v1

    .end local v1    # "data":[B
    .restart local v21    # "data":[B
    array-length v1, v0

    move-object/from16 v24, v3

    const/4 v3, 0x0

    .end local v3    # "s":Lokio/Segment;
    .local v24, "s":Lokio/Segment;
    :goto_f
    if-ge v3, v1, :cond_15

    move/from16 v25, v1

    aget-byte v1, v0, v3

    .local v1, "t":B
    add-int/lit8 v3, v3, 0x1

    .line 1356
    if-ne v13, v1, :cond_14

    iget v3, v11, Lokio/Segment;->pos:I

    sub-int v3, v2, v3

    move-object/from16 v26, v0

    move/from16 v27, v1

    .end local v0    # "targetByteArray":[B
    .end local v1    # "t":B
    .local v26, "targetByteArray":[B
    .local v27, "t":B
    int-to-long v0, v3

    add-long/2addr v0, v14

    return-wide v0

    .end local v26    # "targetByteArray":[B
    .end local v27    # "t":B
    .restart local v0    # "targetByteArray":[B
    .restart local v1    # "t":B
    :cond_14
    move-object/from16 v26, v0

    move/from16 v27, v1

    .end local v0    # "targetByteArray":[B
    .end local v1    # "t":B
    .restart local v26    # "targetByteArray":[B
    .restart local v27    # "t":B
    move/from16 v1, v25

    goto :goto_f

    .line 1358
    .end local v26    # "targetByteArray":[B
    .end local v27    # "t":B
    .restart local v0    # "targetByteArray":[B
    :cond_15
    move-object/from16 v26, v0

    .end local v0    # "targetByteArray":[B
    .restart local v26    # "targetByteArray":[B
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v21

    move-object/from16 v3, v24

    .end local v13    # "b":I
    goto :goto_e

    .line 1362
    .end local v21    # "data":[B
    .end local v24    # "s":Lokio/Segment;
    .end local v26    # "targetByteArray":[B
    .restart local v0    # "targetByteArray":[B
    .local v1, "data":[B
    .restart local v3    # "s":Lokio/Segment;
    :cond_16
    move-object/from16 v26, v0

    move-object/from16 v21, v1

    move-object/from16 v24, v3

    .end local v0    # "targetByteArray":[B
    .end local v1    # "data":[B
    .end local v3    # "s":Lokio/Segment;
    .restart local v21    # "data":[B
    .restart local v24    # "s":Lokio/Segment;
    .restart local v26    # "targetByteArray":[B
    iget v0, v11, Lokio/Segment;->limit:I

    iget v1, v11, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v14, v0

    .line 1363
    move-wide/from16 v16, v14

    .line 1364
    iget-object v0, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v0

    move-object/from16 v0, v26

    const/4 v12, 0x0

    .end local v2    # "pos":I
    .end local v12    # "limit":I
    .end local v21    # "data":[B
    goto :goto_d

    .line 1349
    .end local v24    # "s":Lokio/Segment;
    .end local v26    # "targetByteArray":[B
    .restart local v0    # "targetByteArray":[B
    .restart local v3    # "s":Lokio/Segment;
    :cond_17
    move-object/from16 v26, v0

    move-object/from16 v24, v3

    .line 1368
    .end local v0    # "targetByteArray":[B
    .end local v3    # "s":Lokio/Segment;
    .restart local v24    # "s":Lokio/Segment;
    :goto_10
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1801
    .end local v4    # "offset":J
    .end local v10    # "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    .end local v11    # "s":Lokio/Segment;
    .end local v14    # "offset":J
    .end local v16    # "fromIndex":J
    .end local v18    # "offset$iv":J
    .end local v24    # "s":Lokio/Segment;
    .local v1, "offset$iv":J
    .local v3, "nextOffset$iv":J
    :cond_18
    move-wide/from16 v18, v1

    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    .end local v1    # "offset$iv":J
    .restart local v18    # "offset$iv":J
    iget-object v5, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v5

    .line 1802
    move-object/from16 v0, p1

    move-wide v1, v3

    .end local v18    # "offset$iv":J
    .local v3, "offset$iv":J
    goto/16 :goto_9

    .line 1733
    .end local v3    # "offset$iv":J
    .end local v6    # "fromIndex$iv":J
    .end local v8    # "$i$f$seek":I
    .end local v9    # "s$iv":Lokio/Segment;
    .end local v22    # "$i$f$commonIndexOfElement":I
    .end local v23    # "$this$seek$iv":Lokio/Buffer;
    .local v1, "$i$f$commonIndexOfElement":I
    :cond_19
    move/from16 v22, v1

    .end local v1    # "$i$f$commonIndexOfElement":I
    .restart local v22    # "$i$f$commonIndexOfElement":I
    const/4 v0, 0x0

    .line 1316
    .local v0, "$i$a$-require-BufferKt$commonIndexOfElement$1":I
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fromIndex < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOfElement$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonNext(Lokio/Buffer$UnsafeCursor;)I
    .locals 5
    .param p0, "$this$commonNext"    # Lokio/Buffer$UnsafeCursor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1526
    .local v0, "$i$f$commonNext":I
    iget-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1527
    iget-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v4, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_1
    invoke-virtual {p0, v1, v2}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v1

    return v1

    .line 1733
    :cond_2
    const/4 v1, 0x0

    .line 1526
    .local v1, "$i$a$-check-BufferKt$commonNext$1":I
    nop

    .end local v1    # "$i$a$-check-BufferKt$commonNext$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no more bytes"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonRangeEquals(Lokio/Buffer;JLokio/ByteString;II)Z
    .locals 7
    .param p0, "$this$commonRangeEquals"    # Lokio/Buffer;
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1378
    .local v0, "$i$f$commonRangeEquals":I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 1379
    if-ltz p4, :cond_3

    .line 1380
    if-ltz p5, :cond_3

    .line 1381
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, p1

    int-to-long v5, p5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    .line 1382
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    move v1, v2

    :cond_1
    if-ge v1, p5, :cond_2

    move v3, v1

    .local v3, "i":I
    add-int/lit8 v1, v1, 0x1

    .line 1387
    int-to-long v4, v3

    add-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v4

    add-int v5, p4, v3

    invoke-virtual {p3, v5}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1388
    return v2

    .line 1391
    .end local v3    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1384
    :cond_3
    :goto_0
    return v2
.end method

.method public static final commonRead(Lokio/Buffer;[B)I
    .locals 3
    .param p0, "$this$commonRead"    # Lokio/Buffer;
    .param p1, "sink"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 611
    .local v0, "$i$f$commonRead":I
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    return v1
.end method

.method public static final commonRead(Lokio/Buffer;[BII)I
    .locals 8
    .param p0, "$this$commonRead"    # Lokio/Buffer;
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 623
    .local v0, "$i$f$commonRead":I
    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 625
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 626
    .local v1, "s":Lokio/Segment;
    :cond_0
    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 627
    .local v2, "toCopy":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    .line 628
    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->pos:I

    add-int/2addr v5, v2

    .line 627
    invoke-static {v3, p1, p2, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 631
    iget v3, v1, Lokio/Segment;->pos:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/Segment;->pos:I

    .line 632
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 634
    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_1

    .line 635
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 636
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 639
    :cond_1
    return v2
.end method

.method public static final commonRead(Lokio/Buffer;Lokio/Buffer;J)J
    .locals 5
    .param p0, "$this$commonRead"    # Lokio/Buffer;
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1237
    .local v0, "$i$f$commonRead":I
    nop

    .line 1238
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 1239
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    const-wide/16 v1, -0x1

    return-wide v1

    .line 1240
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .end local p2    # "byteCount":J
    .local v1, "byteCount":J
    goto :goto_1

    .end local v1    # "byteCount":J
    .restart local p2    # "byteCount":J
    :cond_2
    move-wide v1, p2

    .line 1241
    .restart local v1    # "byteCount":J
    :goto_1
    invoke-virtual {p1, p0, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1242
    return-wide v1

    .line 1733
    .end local v1    # "byteCount":J
    :cond_3
    const/4 v1, 0x0

    .line 1238
    .local v1, "$i$a$-require-BufferKt$commonRead$1":I
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "byteCount < 0: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonRead$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonReadAll(Lokio/Buffer;Lokio/Sink;)J
    .locals 5
    .param p0, "$this$commonReadAll"    # Lokio/Buffer;
    .param p1, "sink"    # Lokio/Sink;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 796
    .local v0, "$i$f$commonReadAll":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 797
    .local v1, "byteCount":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 798
    invoke-interface {p1, p0, v1, v2}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 800
    :cond_0
    return-wide v1
.end method

.method public static final commonReadAndWriteUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p0, "$this$commonReadAndWriteUnsafe"    # Lokio/Buffer;
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1518
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1520
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1521
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1522
    return-object p1

    .line 1733
    :cond_1
    const/4 v0, 0x0

    .line 1518
    .local v0, "$i$a$-check-BufferKt$commonReadAndWriteUnsafe$1":I
    nop

    .end local v0    # "$i$a$-check-BufferKt$commonReadAndWriteUnsafe$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonReadByte(Lokio/Buffer;)B
    .locals 10
    .param p0, "$this$commonReadByte"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 287
    .local v0, "$i$f$commonReadByte":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 290
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 291
    .local v2, "pos":I
    iget v3, v1, Lokio/Segment;->limit:I

    .line 293
    .local v3, "limit":I
    iget-object v4, v1, Lokio/Segment;->data:[B

    .line 294
    .local v4, "data":[B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "pos":I
    .local v5, "pos":I
    aget-byte v2, v4, v2

    .line 295
    .local v2, "b":B
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 297
    if-ne v5, v3, :cond_0

    .line 298
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 299
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 301
    :cond_0
    iput v5, v1, Lokio/Segment;->pos:I

    .line 304
    :goto_0
    return v2

    .line 287
    .end local v1    # "segment":Lokio/Segment;
    .end local v2    # "b":B
    .end local v3    # "limit":I
    .end local v4    # "data":[B
    .end local v5    # "pos":I
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadByteArray(Lokio/Buffer;)[B
    .locals 3
    .param p0, "$this$commonReadByteArray"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 600
    .local v0, "$i$f$commonReadByteArray":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadByteArray(Lokio/Buffer;J)[B
    .locals 4
    .param p0, "$this$commonReadByteArray"    # Lokio/Buffer;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 603
    .local v0, "$i$f$commonReadByteArray":I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_1

    .line 606
    long-to-int v1, p1

    new-array v1, v1, [B

    .line 607
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Lokio/Buffer;->readFully([B)V

    .line 608
    return-object v1

    .line 604
    .end local v1    # "result":[B
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 1733
    :cond_2
    const/4 v1, 0x0

    .line 603
    .local v1, "$i$a$-require-BufferKt$commonReadByteArray$1":I
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "byteCount: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonReadByteArray$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonReadByteString(Lokio/Buffer;)Lokio/ByteString;
    .locals 3
    .param p0, "$this$commonReadByteString"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 764
    .local v0, "$i$f$commonReadByteString":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadByteString(Lokio/Buffer;J)Lokio/ByteString;
    .locals 4
    .param p0, "$this$commonReadByteString"    # Lokio/Buffer;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 767
    .local v0, "$i$f$commonReadByteString":I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 768
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_2

    .line 770
    const-wide/16 v1, 0x1000

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 771
    long-to-int v1, p1

    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v1

    move-object v2, v1

    .line 1733
    .local v2, "it":Lokio/ByteString;
    const/4 v3, 0x0

    .line 771
    .local v3, "$i$a$-also-BufferKt$commonReadByteString$2":I
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->skip(J)V

    .end local v2    # "it":Lokio/ByteString;
    .end local v3    # "$i$a$-also-BufferKt$commonReadByteString$2":I
    return-object v1

    .line 773
    :cond_1
    new-instance v1, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1

    .line 768
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 1733
    :cond_3
    const/4 v1, 0x0

    .line 767
    .local v1, "$i$a$-require-BufferKt$commonReadByteString$1":I
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "byteCount: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonReadByteString$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonReadDecimalLong(Lokio/Buffer;)J
    .locals 18
    .param p0, "$this$commonReadDecimalLong"    # Lokio/Buffer;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 646
    .local v1, "$i$f$commonReadDecimalLong":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 649
    const-wide/16 v2, 0x0

    .line 650
    .local v2, "value":J
    const/4 v4, 0x0

    .line 651
    .local v4, "seen":I
    const/4 v5, 0x0

    .line 652
    .local v5, "negative":Z
    const/4 v6, 0x0

    .line 654
    .local v6, "done":Z
    const-wide/16 v7, -0x7

    .line 657
    .local v7, "overflowDigit":J
    :goto_0
    iget-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 659
    .local v9, "segment":Lokio/Segment;
    iget-object v10, v9, Lokio/Segment;->data:[B

    .line 660
    .local v10, "data":[B
    iget v11, v9, Lokio/Segment;->pos:I

    .line 661
    .local v11, "pos":I
    iget v12, v9, Lokio/Segment;->limit:I

    .line 663
    .local v12, "limit":I
    :goto_1
    if-ge v11, v12, :cond_7

    .line 664
    aget-byte v13, v10, v11

    .line 665
    .local v13, "b":B
    const/16 v14, 0x30

    if-lt v13, v14, :cond_4

    const/16 v14, 0x39

    if-gt v13, v14, :cond_4

    .line 666
    rsub-int/lit8 v14, v13, 0x30

    .line 669
    .local v14, "digit":I
    const-wide v15, -0xcccccccccccccccL

    cmp-long v17, v2, v15

    if-ltz v17, :cond_2

    cmp-long v15, v2, v15

    if-nez v15, :cond_0

    move v15, v1

    .end local v1    # "$i$f$commonReadDecimalLong":I
    .local v15, "$i$f$commonReadDecimalLong":I
    int-to-long v0, v14

    cmp-long v0, v0, v7

    if-gez v0, :cond_1

    goto :goto_2

    .end local v15    # "$i$f$commonReadDecimalLong":I
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    :cond_0
    move v15, v1

    .line 674
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    :cond_1
    const-wide/16 v0, 0xa

    mul-long/2addr v2, v0

    .line 675
    int-to-long v0, v14

    add-long/2addr v2, v0

    move/from16 v16, v6

    .end local v14    # "digit":I
    goto :goto_3

    .line 669
    .end local v15    # "$i$f$commonReadDecimalLong":I
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v14    # "digit":I
    :cond_2
    move v15, v1

    .line 670
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    :goto_2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 671
    .local v0, "buffer":Lokio/Buffer;
    if-nez v5, :cond_3

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 672
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    move/from16 v16, v6

    .end local v6    # "done":Z
    .local v16, "done":Z
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v0

    .end local v0    # "buffer":Lokio/Buffer;
    .local v17, "buffer":Lokio/Buffer;
    const-string v0, "Number too large: "

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    .end local v14    # "digit":I
    .end local v15    # "$i$f$commonReadDecimalLong":I
    .end local v16    # "done":Z
    .end local v17    # "buffer":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v6    # "done":Z
    :cond_4
    move v15, v1

    move/from16 v16, v6

    .line 676
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v6    # "done":Z
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    .restart local v16    # "done":Z
    const/16 v0, 0x2d

    if-ne v13, v0, :cond_5

    if-nez v4, :cond_5

    .line 677
    const/4 v5, 0x1

    .line 678
    const-wide/16 v0, 0x1

    sub-long/2addr v7, v0

    .line 689
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 690
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v6, v16

    .end local v13    # "b":B
    goto :goto_1

    .line 680
    .restart local v13    # "b":B
    :cond_5
    if-eqz v4, :cond_6

    .line 686
    const/4 v0, 0x1

    .line 687
    .end local v16    # "done":Z
    .local v0, "done":Z
    move v6, v0

    goto :goto_4

    .line 681
    .end local v0    # "done":Z
    .restart local v16    # "done":Z
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 682
    invoke-static {v13}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    .end local v13    # "b":B
    .end local v15    # "$i$f$commonReadDecimalLong":I
    .end local v16    # "done":Z
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v6    # "done":Z
    :cond_7
    move v15, v1

    move/from16 v16, v6

    .line 693
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    :goto_4
    if-ne v11, v12, :cond_8

    .line 694
    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 695
    invoke-static {v9}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5

    .line 697
    :cond_8
    move-object/from16 v1, p0

    iput v11, v9, Lokio/Segment;->pos:I

    .line 699
    :goto_5
    if-nez v6, :cond_a

    iget-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    move-object v0, v1

    move v1, v15

    goto/16 :goto_0

    .line 701
    .end local v9    # "segment":Lokio/Segment;
    .end local v10    # "data":[B
    .end local v11    # "pos":I
    .end local v12    # "limit":I
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    int-to-long v11, v4

    sub-long/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 702
    if-eqz v5, :cond_b

    move-wide v9, v2

    goto :goto_7

    :cond_b
    neg-long v9, v2

    :goto_7
    return-wide v9

    .line 646
    .end local v2    # "value":J
    .end local v4    # "seen":I
    .end local v5    # "negative":Z
    .end local v6    # "done":Z
    .end local v7    # "overflowDigit":J
    .end local v15    # "$i$f$commonReadDecimalLong":I
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    :cond_c
    move v15, v1

    move-object v1, v0

    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static final commonReadFully(Lokio/Buffer;Lokio/Buffer;J)V
    .locals 3
    .param p0, "$this$commonReadFully"    # Lokio/Buffer;
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 788
    .local v0, "$i$f$commonReadFully":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-ltz v1, :cond_0

    .line 792
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 793
    return-void

    .line 789
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p1, p0, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 790
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadFully(Lokio/Buffer;[B)V
    .locals 4
    .param p0, "$this$commonReadFully"    # Lokio/Buffer;
    .param p1, "sink"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 614
    .local v0, "$i$f$commonReadFully":I
    const/4 v1, 0x0

    .line 615
    .local v1, "offset":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 616
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Lokio/Buffer;->read([BII)I

    move-result v2

    .line 617
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 618
    add-int/2addr v1, v2

    .end local v2    # "read":I
    goto :goto_0

    .line 617
    .restart local v2    # "read":I
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 620
    .end local v2    # "read":I
    :cond_1
    return-void
.end method

.method public static final commonReadHexadecimalUnsignedLong(Lokio/Buffer;)J
    .locals 15
    .param p0, "$this$commonReadHexadecimalUnsignedLong"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 706
    .local v0, "$i$f$commonReadHexadecimalUnsignedLong":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 708
    const-wide/16 v1, 0x0

    .line 709
    .local v1, "value":J
    const/4 v5, 0x0

    .line 710
    .local v5, "seen":I
    const/4 v6, 0x0

    .line 713
    .local v6, "done":Z
    :cond_0
    iget-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 715
    .local v7, "segment":Lokio/Segment;
    iget-object v8, v7, Lokio/Segment;->data:[B

    .line 716
    .local v8, "data":[B
    iget v9, v7, Lokio/Segment;->pos:I

    .line 717
    .local v9, "pos":I
    iget v10, v7, Lokio/Segment;->limit:I

    .line 719
    .local v10, "limit":I
    :goto_0
    if-ge v9, v10, :cond_6

    const/4 v11, 0x0

    .line 722
    .local v11, "digit":I
    aget-byte v12, v8, v9

    .line 723
    .local v12, "b":B
    const/16 v13, 0x30

    if-lt v12, v13, :cond_1

    const/16 v13, 0x39

    if-gt v12, v13, :cond_1

    .line 724
    add-int/lit8 v11, v12, -0x30

    goto :goto_1

    .line 725
    :cond_1
    const/16 v13, 0x61

    if-lt v12, v13, :cond_2

    const/16 v13, 0x66

    if-gt v12, v13, :cond_2

    .line 726
    add-int/lit8 v13, v12, -0x61

    add-int/lit8 v11, v13, 0xa

    goto :goto_1

    .line 727
    :cond_2
    const/16 v13, 0x41

    if-lt v12, v13, :cond_4

    const/16 v13, 0x46

    if-gt v12, v13, :cond_4

    .line 728
    add-int/lit8 v13, v12, -0x41

    add-int/lit8 v11, v13, 0xa

    .line 741
    :goto_1
    const-wide/high16 v13, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v13, v1

    cmp-long v13, v13, v3

    if-nez v13, :cond_3

    .line 746
    const/4 v13, 0x4

    shl-long/2addr v1, v13

    .line 747
    int-to-long v13, v11

    or-long/2addr v1, v13

    .line 748
    add-int/lit8 v9, v9, 0x1

    .line 749
    add-int/lit8 v5, v5, 0x1

    .end local v11    # "digit":I
    .end local v12    # "b":B
    goto :goto_0

    .line 742
    .restart local v11    # "digit":I
    .restart local v12    # "b":B
    :cond_3
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v3

    .line 743
    .local v3, "buffer":Lokio/Buffer;
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Number too large: "

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    .end local v3    # "buffer":Lokio/Buffer;
    :cond_4
    if-eqz v5, :cond_5

    .line 736
    const/4 v6, 0x1

    .line 737
    goto :goto_2

    .line 731
    :cond_5
    new-instance v3, Ljava/lang/NumberFormatException;

    .line 732
    invoke-static {v12}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    const-string v13, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 731
    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 752
    .end local v11    # "digit":I
    .end local v12    # "b":B
    :cond_6
    :goto_2
    if-ne v9, v10, :cond_7

    .line 753
    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    iput-object v11, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 754
    invoke-static {v7}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_3

    .line 756
    :cond_7
    iput v9, v7, Lokio/Segment;->pos:I

    .line 758
    :goto_3
    if-nez v6, :cond_8

    iget-object v11, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_0

    .line 760
    .end local v7    # "segment":Lokio/Segment;
    .end local v8    # "data":[B
    .end local v9    # "pos":I
    .end local v10    # "limit":I
    :cond_8
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v7, v5

    sub-long/2addr v3, v7

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 761
    return-wide v1

    .line 706
    .end local v1    # "value":J
    .end local v5    # "seen":I
    .end local v6    # "done":Z
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadInt(Lokio/Buffer;)I
    .locals 11
    .param p0, "$this$commonReadInt"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 335
    .local v0, "$i$f$commonReadInt":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 337
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 338
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 339
    .local v2, "pos":I
    iget v5, v1, Lokio/Segment;->limit:I

    .line 342
    .local v5, "limit":I
    sub-int v6, v5, v2

    int-to-long v6, v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_0

    .line 344
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    .local v3, "$this$and$iv":B
    const/16 v4, 0xff

    .local v4, "other$iv":I
    const/4 v6, 0x0

    .line 1694
    .local v6, "$i$f$and":I
    and-int/2addr v3, v4

    .line 344
    .end local v3    # "$this$and$iv":B
    .end local v4    # "other$iv":I
    .end local v6    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x18

    .line 345
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv":B
    const/16 v6, 0xff

    .local v6, "other$iv":I
    const/4 v7, 0x0

    .line 1695
    .local v7, "$i$f$and":I
    and-int/2addr v4, v6

    .line 345
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x10

    .line 344
    or-int/2addr v3, v4

    .line 346
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .restart local v4    # "$this$and$iv":B
    const/16 v6, 0xff

    .restart local v6    # "other$iv":I
    const/4 v7, 0x0

    .line 1696
    .restart local v7    # "$i$f$and":I
    and-int/2addr v4, v6

    .line 346
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x8

    .line 344
    or-int/2addr v3, v4

    .line 347
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .restart local v4    # "$this$and$iv":B
    const/16 v6, 0xff

    .restart local v6    # "other$iv":I
    const/4 v7, 0x0

    .line 1697
    .restart local v7    # "$i$f$and":I
    and-int/2addr v4, v6

    .line 344
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    or-int/2addr v3, v4

    .line 343
    return v3

    .line 351
    :cond_0
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 353
    .local v6, "data":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "pos":I
    .local v7, "pos":I
    aget-byte v2, v6, v2

    .local v2, "$this$and$iv":B
    const/16 v8, 0xff

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 1698
    .local v9, "$i$f$and":I
    and-int/2addr v2, v8

    .line 353
    .end local v2    # "$this$and$iv":B
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$and":I
    shl-int/lit8 v2, v2, 0x18

    .line 354
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv":I
    const/4 v10, 0x0

    .line 1699
    .local v10, "$i$f$and":I
    and-int/2addr v7, v9

    .line 354
    .end local v7    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v7, v7, 0x10

    .line 353
    or-int/2addr v2, v7

    .line 355
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .local v7, "pos":I
    aget-byte v8, v6, v8

    .local v8, "$this$and$iv":B
    const/16 v9, 0xff

    .restart local v9    # "other$iv":I
    const/4 v10, 0x0

    .line 1700
    .restart local v10    # "$i$f$and":I
    and-int/2addr v8, v9

    .line 355
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v8, v8, 0x8

    .line 353
    or-int/2addr v2, v8

    .line 356
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v9, 0xff

    .restart local v9    # "other$iv":I
    const/4 v10, 0x0

    .line 1701
    .restart local v10    # "$i$f$and":I
    and-int/2addr v7, v9

    .line 353
    .end local v7    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    or-int/2addr v2, v7

    .line 352
    nop

    .line 358
    .local v2, "i":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 360
    if-ne v8, v5, :cond_1

    .line 361
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 362
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 364
    :cond_1
    iput v8, v1, Lokio/Segment;->pos:I

    .line 367
    :goto_0
    return v2

    .line 335
    .end local v1    # "segment":Lokio/Segment;
    .end local v2    # "i":I
    .end local v5    # "limit":I
    .end local v6    # "data":[B
    .end local v8    # "pos":I
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadLong(Lokio/Buffer;)J
    .locals 15
    .param p0, "$this$commonReadLong"    # Lokio/Buffer;

    move-object v0, p0

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 371
    .local v1, "$i$f$commonReadLong":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 373
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 374
    .local v2, "segment":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 375
    .local v3, "pos":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 378
    .local v6, "limit":I
    sub-int v7, v6, v3

    int-to-long v7, v7

    cmp-long v7, v7, v4

    const/16 v8, 0x20

    if-gez v7, :cond_0

    .line 380
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v4

    .local v4, "$this$and$iv":I
    const-wide v9, 0xffffffffL

    .local v9, "other$iv":J
    const/4 v5, 0x0

    .line 1702
    .local v5, "$i$f$and":I
    int-to-long v11, v4

    and-long v4, v11, v9

    .line 380
    .end local v4    # "$this$and$iv":I
    .end local v5    # "$i$f$and":I
    .end local v9    # "other$iv":J
    shl-long/2addr v4, v8

    .line 381
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v7

    .local v7, "$this$and$iv":I
    const-wide v8, 0xffffffffL

    .local v8, "other$iv":J
    const/4 v10, 0x0

    .line 1703
    .local v10, "$i$f$and":I
    int-to-long v11, v7

    and-long v7, v11, v8

    .line 380
    .end local v7    # "$this$and$iv":I
    .end local v8    # "other$iv":J
    .end local v10    # "$i$f$and":I
    or-long/2addr v4, v7

    .line 379
    return-wide v4

    .line 385
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 387
    .local v7, "data":[B
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "pos":I
    .local v9, "pos":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv":B
    const-wide/16 v10, 0xff

    .local v10, "other$iv":J
    const/4 v12, 0x0

    .line 1704
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 387
    .end local v3    # "$this$and$iv":B
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x38

    shl-long/2addr v10, v3

    .line 388
    add-int/lit8 v3, v9, 0x1

    .end local v9    # "pos":I
    .local v3, "pos":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv":B
    const-wide/16 v12, 0xff

    .local v12, "other$iv":J
    const/4 v14, 0x0

    .line 1705
    .local v14, "$i$f$and":I
    int-to-long v4, v9

    and-long/2addr v4, v12

    .line 388
    .end local v9    # "$this$and$iv":B
    .end local v12    # "other$iv":J
    .end local v14    # "$i$f$and":I
    const/16 v9, 0x30

    shl-long/2addr v4, v9

    .line 387
    or-long/2addr v4, v10

    .line 389
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "pos":I
    .local v9, "pos":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv":J
    const/4 v12, 0x0

    .line 1706
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 389
    .end local v3    # "$this$and$iv":B
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x28

    shl-long/2addr v10, v3

    .line 387
    or-long v3, v4, v10

    .line 390
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "pos":I
    .local v5, "pos":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv":J
    const/4 v12, 0x0

    .line 1707
    .restart local v12    # "$i$f$and":I
    int-to-long v13, v9

    and-long v9, v13, v10

    .line 390
    .end local v9    # "$this$and$iv":B
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$and":I
    shl-long v8, v9, v8

    .line 387
    or-long/2addr v3, v8

    .line 391
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    aget-byte v5, v7, v5

    .local v5, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .local v9, "other$iv":J
    const/4 v11, 0x0

    .line 1708
    .local v11, "$i$f$and":I
    int-to-long v12, v5

    and-long/2addr v9, v12

    .line 391
    .end local v5    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v5, 0x18

    shl-long/2addr v9, v5

    .line 387
    or-long/2addr v3, v9

    .line 392
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "pos":I
    .local v5, "pos":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv":J
    const/4 v11, 0x0

    .line 1709
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long v8, v12, v9

    .line 392
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v10, 0x10

    shl-long/2addr v8, v10

    .line 387
    or-long/2addr v3, v8

    .line 393
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    aget-byte v5, v7, v5

    .local v5, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv":J
    const/4 v11, 0x0

    .line 1710
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v5

    and-long/2addr v9, v12

    .line 393
    .end local v5    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v5, 0x8

    shl-long/2addr v9, v5

    .line 387
    or-long/2addr v3, v9

    .line 394
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "pos":I
    .local v5, "pos":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv":J
    const/4 v11, 0x0

    .line 1711
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long v8, v12, v9

    .line 387
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    or-long/2addr v3, v8

    .line 386
    nop

    .line 396
    .local v3, "v":J
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 398
    if-ne v5, v6, :cond_1

    .line 399
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 400
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 402
    :cond_1
    iput v5, v2, Lokio/Segment;->pos:I

    .line 405
    :goto_0
    return-wide v3

    .line 371
    .end local v2    # "segment":Lokio/Segment;
    .end local v3    # "v":J
    .end local v5    # "pos":I
    .end local v6    # "limit":I
    .end local v7    # "data":[B
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static final commonReadShort(Lokio/Buffer;)S
    .locals 11
    .param p0, "$this$commonReadShort"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 308
    .local v0, "$i$f$commonReadShort":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 310
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 311
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 312
    .local v2, "pos":I
    iget v5, v1, Lokio/Segment;->limit:I

    .line 315
    .local v5, "limit":I
    sub-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 316
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    .local v3, "$this$and$iv":B
    const/16 v4, 0xff

    .local v4, "other$iv":I
    const/4 v6, 0x0

    .line 1692
    .local v6, "$i$f$and":I
    and-int/2addr v3, v4

    .line 316
    .end local v3    # "$this$and$iv":B
    .end local v4    # "other$iv":I
    .end local v6    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv":B
    const/16 v6, 0xff

    .local v6, "other$iv":I
    const/4 v7, 0x0

    .line 1692
    .local v7, "$i$f$and":I
    and-int/2addr v4, v6

    .line 316
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    or-int/2addr v3, v4

    .line 317
    .local v3, "s":I
    int-to-short v4, v3

    return v4

    .line 320
    .end local v3    # "s":I
    :cond_0
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 321
    .local v6, "data":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "pos":I
    .local v7, "pos":I
    aget-byte v2, v6, v2

    .local v2, "$this$and$iv":B
    const/16 v8, 0xff

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 1693
    .local v9, "$i$f$and":I
    and-int/2addr v2, v8

    .line 321
    .end local v2    # "$this$and$iv":B
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$and":I
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv":I
    const/4 v10, 0x0

    .line 1693
    .local v10, "$i$f$and":I
    and-int/2addr v7, v9

    .line 321
    .end local v7    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    or-int/2addr v2, v7

    .line 322
    .local v2, "s":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 324
    if-ne v8, v5, :cond_1

    .line 325
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 326
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 328
    :cond_1
    iput v8, v1, Lokio/Segment;->pos:I

    .line 331
    :goto_0
    int-to-short v3, v2

    return v3

    .line 308
    .end local v1    # "segment":Lokio/Segment;
    .end local v2    # "s":I
    .end local v5    # "limit":I
    .end local v6    # "data":[B
    .end local v8    # "pos":I
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p0, "$this$commonReadUnsafe"    # Lokio/Buffer;
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1510
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1512
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1513
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1514
    return-object p1

    .line 1733
    :cond_1
    const/4 v0, 0x0

    .line 1510
    .local v0, "$i$a$-check-BufferKt$commonReadUnsafe$1":I
    nop

    .end local v0    # "$i$a$-check-BufferKt$commonReadUnsafe$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonReadUtf8(Lokio/Buffer;J)Ljava/lang/String;
    .locals 7
    .param p0, "$this$commonReadUtf8"    # Lokio/Buffer;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 804
    .local v0, "$i$f$commonReadUtf8":I
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, p1, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_5

    .line 805
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-ltz v3, :cond_4

    .line 806
    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    const-string v1, ""

    return-object v1

    .line 808
    :cond_1
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 809
    .local v1, "s":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget v5, v1, Lokio/Segment;->limit:I

    int-to-long v5, v5

    cmp-long v2, v2, v5

    if-lez v2, :cond_2

    .line 812
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v2

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v2, v4, v4, v3, v5}, Lokio/internal/_Utf8Kt;->commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 815
    :cond_2
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->pos:I

    long-to-int v5, p1

    add-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "result":Ljava/lang/String;
    iget v3, v1, Lokio/Segment;->pos:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, v1, Lokio/Segment;->pos:I

    .line 817
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 819
    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_3

    .line 820
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 821
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 824
    :cond_3
    return-object v2

    .line 805
    .end local v1    # "s":Lokio/Segment;
    .end local v2    # "result":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 1733
    :cond_5
    const/4 v1, 0x0

    .line 804
    .local v1, "$i$a$-require-BufferKt$commonReadUtf8$1":I
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "byteCount: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonReadUtf8$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonReadUtf8CodePoint(Lokio/Buffer;)I
    .locals 13
    .param p0, "$this$commonReadUtf8CodePoint"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 859
    .local v0, "$i$f$commonReadUtf8CodePoint":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    .line 861
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .local v1, "b0":B
    const/4 v2, 0x0

    .local v2, "codePoint":I
    const/4 v3, 0x0

    .local v3, "byteCount":I
    const/4 v4, 0x0

    .line 866
    .local v4, "min":I
    nop

    .line 867
    const/16 v5, 0x80

    .local v5, "other$iv":I
    move v6, v1

    .local v6, "$this$and$iv":B
    const/4 v7, 0x0

    .line 1735
    .local v7, "$i$f$and":I
    and-int/2addr v5, v6

    .line 867
    .end local v5    # "other$iv":I
    .end local v6    # "$this$and$iv":B
    .end local v7    # "$i$f$and":I
    const v6, 0xfffd

    if-nez v5, :cond_0

    .line 869
    const/16 v5, 0x7f

    .restart local v5    # "other$iv":I
    move v7, v1

    .local v7, "$this$and$iv":B
    const/4 v8, 0x0

    .line 1736
    .local v8, "$i$f$and":I
    and-int/2addr v5, v7

    .line 869
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    move v2, v5

    .line 870
    const/4 v3, 0x1

    .line 871
    const/4 v4, 0x0

    goto :goto_0

    .line 873
    :cond_0
    const/16 v5, 0xe0

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1737
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 873
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/16 v7, 0xc0

    if-ne v5, v7, :cond_1

    .line 875
    const/16 v5, 0x1f

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1738
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 875
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    move v2, v5

    .line 876
    const/4 v3, 0x2

    .line 877
    const/16 v4, 0x80

    goto :goto_0

    .line 879
    :cond_1
    const/16 v5, 0xf0

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1739
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 879
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/16 v7, 0xe0

    if-ne v5, v7, :cond_2

    .line 881
    const/16 v5, 0xf

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1740
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 881
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    move v2, v5

    .line 882
    const/4 v3, 0x3

    .line 883
    const/16 v4, 0x800

    goto :goto_0

    .line 885
    :cond_2
    const/16 v5, 0xf8

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1741
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 885
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/16 v7, 0xf0

    if-ne v5, v7, :cond_a

    .line 887
    const/4 v5, 0x7

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1742
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 887
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    move v2, v5

    .line 888
    const/4 v3, 0x4

    .line 889
    const/high16 v4, 0x10000

    .line 898
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    int-to-long v9, v3

    cmp-long v5, v7, v9

    if-ltz v5, :cond_9

    .line 905
    const/4 v5, 0x1

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_4

    move v8, v7

    .local v8, "i":I
    add-int/lit8 v7, v7, 0x1

    .line 906
    int-to-long v9, v8

    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v9

    .line 907
    .local v9, "b":B
    const/16 v10, 0xc0

    .local v10, "other$iv":I
    move v11, v9

    .local v11, "$this$and$iv":B
    const/4 v12, 0x0

    .line 1743
    .local v12, "$i$f$and":I
    and-int/2addr v10, v11

    .line 907
    .end local v10    # "other$iv":I
    .end local v11    # "$this$and$iv":B
    .end local v12    # "$i$f$and":I
    const/16 v11, 0x80

    if-ne v10, v11, :cond_3

    .line 909
    shl-int/lit8 v2, v2, 0x6

    .line 910
    const/16 v10, 0x3f

    .restart local v10    # "other$iv":I
    move v11, v9

    .restart local v11    # "$this$and$iv":B
    const/4 v12, 0x0

    .line 1744
    .restart local v12    # "$i$f$and":I
    and-int/2addr v10, v11

    .line 910
    .end local v10    # "other$iv":I
    .end local v11    # "$this$and$iv":B
    .end local v12    # "$i$f$and":I
    or-int/2addr v2, v10

    goto :goto_1

    .line 912
    :cond_3
    int-to-long v10, v8

    invoke-virtual {p0, v10, v11}, Lokio/Buffer;->skip(J)V

    .line 913
    return v6

    .line 917
    .end local v8    # "i":I
    .end local v9    # "b":B
    :cond_4
    int-to-long v7, v3

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 919
    nop

    .line 920
    const v7, 0x10ffff

    if-le v2, v7, :cond_5

    .line 921
    goto :goto_3

    .line 923
    :cond_5
    const v7, 0xd800

    const/4 v8, 0x0

    if-gt v7, v2, :cond_6

    const v7, 0xe000

    if-ge v2, v7, :cond_6

    goto :goto_2

    :cond_6
    move v5, v8

    :goto_2
    if-eqz v5, :cond_7

    .line 924
    goto :goto_3

    .line 926
    :cond_7
    if-ge v2, v4, :cond_8

    .line 927
    goto :goto_3

    .line 929
    :cond_8
    move v6, v2

    .line 919
    :goto_3
    return v6

    .line 899
    :cond_9
    new-instance v5, Ljava/io/EOFException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (to read code point prefixed 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 893
    :cond_a
    const-wide/16 v7, 0x1

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 894
    return v6

    .line 859
    .end local v1    # "b0":B
    .end local v2    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadUtf8Line(Lokio/Buffer;)Ljava/lang/String;
    .locals 7
    .param p0, "$this$commonReadUtf8Line"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 828
    .local v0, "$i$f$commonReadUtf8Line":I
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v1

    .line 830
    .local v1, "newline":J
    nop

    .line 831
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {p0, v1, v2}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 832
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 833
    :cond_1
    const/4 v3, 0x0

    .line 830
    :goto_0
    return-object v3
.end method

.method public static final commonReadUtf8LineStrict(Lokio/Buffer;J)Ljava/lang/String;
    .locals 18
    .param p0, "$this$commonReadUtf8LineStrict"    # Lokio/Buffer;
    .param p1, "limit"    # J

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const-string v0, "<this>"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 838
    .local v9, "$i$f$commonReadUtf8LineStrict":I
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 839
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, v7, v0

    const-wide/16 v10, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-long v0, v7, v10

    :goto_1
    move-wide v12, v0

    .line 840
    .local v12, "scanLength":J
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v14

    .line 841
    .local v14, "newline":J
    const-wide/16 v0, -0x1

    cmp-long v0, v14, v0

    if-eqz v0, :cond_2

    invoke-static {v6, v14, v15}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 842
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v12, v0

    if-gez v0, :cond_3

    .line 843
    sub-long v0, v12, v10

    invoke-virtual {v6, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 844
    invoke-virtual {v6, v12, v13}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 846
    invoke-static {v6, v12, v13}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 848
    :cond_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 849
    .local v1, "data":Lokio/Buffer;
    const/16 v0, 0x20

    .local v0, "a$iv":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    .local v4, "b$iv":J
    const/4 v10, 0x0

    .line 1734
    .local v10, "$i$f$minOf":I
    int-to-long v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 849
    .end local v0    # "a$iv":I
    .end local v4    # "b$iv":J
    .end local v10    # "$i$f$minOf":I
    move-object/from16 v0, p0

    const-wide/16 v2, 0x0

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 850
    new-instance v0, Ljava/io/EOFException;

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 852
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 851
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 854
    nop

    .line 851
    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 854
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    .line 851
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2026

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 850
    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1733
    .end local v1    # "data":Lokio/Buffer;
    .end local v12    # "scanLength":J
    .end local v14    # "newline":J
    :cond_4
    const/4 v0, 0x0

    .line 838
    .local v0, "$i$a$-require-BufferKt$commonReadUtf8LineStrict$1":I
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "limit < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonReadUtf8LineStrict$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonResizeBuffer(Lokio/Buffer$UnsafeCursor;J)J
    .locals 16
    .param p0, "$this$commonResizeBuffer"    # Lokio/Buffer$UnsafeCursor;
    .param p1, "newSize"    # J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1603
    .local v3, "$i$f$commonResizeBuffer":I
    iget-object v4, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v4, :cond_8

    .line 1604
    .local v4, "buffer":Lokio/Buffer;
    iget-boolean v5, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v5, :cond_7

    .line 1606
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v5

    .line 1607
    .local v5, "oldSize":J
    cmp-long v7, v1, v5

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    if-gtz v7, :cond_4

    .line 1608
    cmp-long v7, v1, v9

    if-ltz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_3

    .line 1610
    sub-long v7, v5, v1

    .line 1611
    .local v7, "bytesToSubtract":J
    :goto_1
    cmp-long v11, v7, v9

    if-lez v11, :cond_2

    .line 1612
    iget-object v11, v4, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v11, Lokio/Segment;->prev:Lokio/Segment;

    .line 1613
    .local v11, "tail":Lokio/Segment;
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v12, v11, Lokio/Segment;->limit:I

    iget v13, v11, Lokio/Segment;->pos:I

    sub-int/2addr v12, v13

    .line 1614
    .local v12, "tailSize":I
    int-to-long v13, v12

    cmp-long v13, v13, v7

    if-gtz v13, :cond_1

    .line 1615
    invoke-virtual {v11}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v13

    iput-object v13, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 1616
    invoke-static {v11}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1617
    int-to-long v13, v12

    sub-long/2addr v7, v13

    goto :goto_1

    .line 1619
    :cond_1
    iget v9, v11, Lokio/Segment;->limit:I

    long-to-int v10, v7

    sub-int/2addr v9, v10

    iput v9, v11, Lokio/Segment;->limit:I

    .line 1624
    .end local v11    # "tail":Lokio/Segment;
    .end local v12    # "tailSize":I
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lokio/Buffer$UnsafeCursor;->setSegment$external__okio__android_common__okio_lib(Lokio/Segment;)V

    .line 1625
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1626
    iput-object v9, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1627
    const/4 v9, -0x1

    iput v9, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1628
    iput v9, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .end local v7    # "bytesToSubtract":J
    goto :goto_3

    .line 1733
    :cond_3
    const/4 v7, 0x0

    .line 1608
    .local v7, "$i$a$-require-BufferKt$commonResizeBuffer$2":I
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "newSize < 0: "

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .end local v7    # "$i$a$-require-BufferKt$commonResizeBuffer$2":I
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1629
    :cond_4
    cmp-long v7, v1, v5

    if-lez v7, :cond_6

    .line 1631
    const/4 v7, 0x1

    .line 1632
    .local v7, "needsToSeek":Z
    sub-long v11, v1, v5

    .line 1633
    .local v11, "bytesToAdd":J
    :goto_2
    cmp-long v13, v11, v9

    if-lez v13, :cond_6

    .line 1634
    invoke-virtual {v4, v8}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v13

    .line 1635
    .local v13, "tail":Lokio/Segment;
    iget v14, v13, Lokio/Segment;->limit:I

    rsub-int v14, v14, 0x2000

    .local v14, "b$iv":I
    const/4 v15, 0x0

    .line 1805
    .local v15, "$i$f$minOf":I
    int-to-long v8, v14

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1635
    .end local v14    # "b$iv":I
    .end local v15    # "$i$f$minOf":I
    long-to-int v8, v8

    .line 1636
    .local v8, "segmentBytesToAdd":I
    iget v9, v13, Lokio/Segment;->limit:I

    add-int/2addr v9, v8

    iput v9, v13, Lokio/Segment;->limit:I

    .line 1637
    int-to-long v9, v8

    sub-long/2addr v11, v9

    .line 1640
    if-eqz v7, :cond_5

    .line 1641
    invoke-virtual {v0, v13}, Lokio/Buffer$UnsafeCursor;->setSegment$external__okio__android_common__okio_lib(Lokio/Segment;)V

    .line 1642
    iput-wide v5, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1643
    iget-object v9, v13, Lokio/Segment;->data:[B

    iput-object v9, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1644
    iget v9, v13, Lokio/Segment;->limit:I

    sub-int/2addr v9, v8

    iput v9, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1645
    iget v9, v13, Lokio/Segment;->limit:I

    iput v9, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1646
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    .end local v8    # "segmentBytesToAdd":I
    .end local v13    # "tail":Lokio/Segment;
    goto :goto_2

    .line 1640
    .restart local v8    # "segmentBytesToAdd":I
    .restart local v13    # "tail":Lokio/Segment;
    :cond_5
    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    goto :goto_2

    .line 1651
    .end local v7    # "needsToSeek":Z
    .end local v8    # "segmentBytesToAdd":I
    .end local v11    # "bytesToAdd":J
    .end local v13    # "tail":Lokio/Segment;
    :cond_6
    :goto_3
    invoke-virtual {v4, v1, v2}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1653
    return-wide v5

    .line 1733
    .end local v5    # "oldSize":J
    :cond_7
    const/4 v5, 0x0

    .line 1604
    .local v5, "$i$a$-check-BufferKt$commonResizeBuffer$1":I
    nop

    .end local v5    # "$i$a$-check-BufferKt$commonResizeBuffer$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1733
    .end local v4    # "buffer":Lokio/Buffer;
    :cond_8
    const/4 v4, 0x0

    .line 1603
    .local v4, "$i$a$-checkNotNull-BufferKt$commonResizeBuffer$buffer$1":I
    nop

    .end local v4    # "$i$a$-checkNotNull-BufferKt$commonResizeBuffer$buffer$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "not attached to a buffer"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static final commonSeek(Lokio/Buffer$UnsafeCursor;J)I
    .locals 18
    .param p0, "$this$commonSeek"    # Lokio/Buffer$UnsafeCursor;
    .param p1, "offset"    # J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1531
    .local v3, "$i$f$commonSeek":I
    iget-object v4, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v4, :cond_9

    .line 1532
    .local v4, "buffer":Lokio/Buffer;
    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-ltz v7, :cond_8

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v7, v1, v7

    if-gtz v7, :cond_8

    .line 1536
    cmp-long v5, v1, v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 1546
    :cond_0
    const-wide/16 v5, 0x0

    .line 1547
    .local v5, "min":J
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v7

    .line 1548
    .local v7, "max":J
    iget-object v9, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 1549
    .local v9, "head":Lokio/Segment;
    iget-object v10, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 1550
    .local v10, "tail":Lokio/Segment;
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$UnsafeCursor;->getSegment$external__okio__android_common__okio_lib()Lokio/Segment;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1551
    iget-wide v11, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v13, v0, Lokio/Buffer$UnsafeCursor;->start:I

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$UnsafeCursor;->getSegment$external__okio__android_common__okio_lib()Lokio/Segment;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v14, v14, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    int-to-long v13, v13

    sub-long/2addr v11, v13

    .line 1552
    .local v11, "segmentOffset":J
    cmp-long v13, v11, v1

    if-lez v13, :cond_1

    .line 1554
    move-wide v7, v11

    .line 1555
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$UnsafeCursor;->getSegment$external__okio__android_common__okio_lib()Lokio/Segment;

    move-result-object v10

    goto :goto_0

    .line 1558
    :cond_1
    move-wide v5, v11

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$UnsafeCursor;->getSegment$external__okio__android_common__okio_lib()Lokio/Segment;

    move-result-object v9

    .end local v11    # "segmentOffset":J
    :cond_2
    :goto_0
    const/4 v11, 0x0

    .local v11, "next":Lokio/Segment;
    const-wide/16 v12, 0x0

    .line 1565
    .local v12, "nextOffset":J
    sub-long v14, v7, v1

    sub-long v16, v1, v5

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 1567
    move-object v11, v9

    .line 1568
    move-wide v12, v5

    .line 1569
    :goto_1
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v14, v11, Lokio/Segment;->limit:I

    iget v15, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v14, v12

    cmp-long v14, v1, v14

    if-ltz v14, :cond_4

    .line 1570
    iget v14, v11, Lokio/Segment;->limit:I

    iget v15, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v12, v14

    .line 1571
    iget-object v11, v11, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 1575
    :cond_3
    move-object v11, v10

    .line 1576
    move-wide v12, v7

    .line 1577
    :goto_2
    cmp-long v14, v12, v1

    if-lez v14, :cond_4

    .line 1578
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v11, Lokio/Segment;->prev:Lokio/Segment;

    .line 1579
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v14, v11, Lokio/Segment;->limit:I

    iget v15, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    sub-long/2addr v12, v14

    goto :goto_2

    .line 1584
    :cond_4
    iget-boolean v14, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v14, :cond_6

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v14, v11, Lokio/Segment;->shared:Z

    if-eqz v14, :cond_6

    .line 1585
    invoke-virtual {v11}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v14

    .line 1586
    .local v14, "unsharedNext":Lokio/Segment;
    iget-object v15, v4, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v15, v11, :cond_5

    .line 1587
    iput-object v14, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 1589
    :cond_5
    invoke-virtual {v11, v14}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v11

    .line 1590
    iget-object v15, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15}, Lokio/Segment;->pop()Lokio/Segment;

    .line 1594
    .end local v14    # "unsharedNext":Lokio/Segment;
    :cond_6
    invoke-virtual {v0, v11}, Lokio/Buffer$UnsafeCursor;->setSegment$external__okio__android_common__okio_lib(Lokio/Segment;)V

    .line 1595
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1596
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v14, v11, Lokio/Segment;->data:[B

    iput-object v14, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1597
    iget v14, v11, Lokio/Segment;->pos:I

    move-wide v15, v5

    .end local v5    # "min":J
    .local v15, "min":J
    sub-long v5, v1, v12

    long-to-int v5, v5

    add-int/2addr v14, v5

    iput v14, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1598
    iget v5, v11, Lokio/Segment;->limit:I

    iput v5, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1599
    iget v5, v0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v6, v0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v5, v6

    return v5

    .line 1537
    .end local v7    # "max":J
    .end local v9    # "head":Lokio/Segment;
    .end local v10    # "tail":Lokio/Segment;
    .end local v11    # "next":Lokio/Segment;
    .end local v12    # "nextOffset":J
    .end local v15    # "min":J
    :cond_7
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lokio/Buffer$UnsafeCursor;->setSegment$external__okio__android_common__okio_lib(Lokio/Segment;)V

    .line 1538
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1539
    iput-object v5, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1540
    const/4 v5, -0x1

    iput v5, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1541
    iput v5, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1542
    return v5

    .line 1533
    :cond_8
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1733
    .end local v4    # "buffer":Lokio/Buffer;
    :cond_9
    const/4 v4, 0x0

    .line 1531
    .local v4, "$i$a$-checkNotNull-BufferKt$commonSeek$buffer$1":I
    nop

    .end local v4    # "$i$a$-checkNotNull-BufferKt$commonSeek$buffer$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "not attached to a buffer"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static final commonSelect(Lokio/Buffer;Lokio/Options;)I
    .locals 5
    .param p0, "$this$commonSelect"    # Lokio/Buffer;
    .param p1, "options"    # Lokio/Options;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 778
    .local v0, "$i$f$commonSelect":I
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v2, v3}, Lokio/internal/BufferKt;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v1

    .line 779
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    .line 782
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$external__okio__android_common__okio_lib()[Lokio/ByteString;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    .line 783
    .local v2, "selectedSize":I
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 784
    return v1
.end method

.method public static final commonSkip(Lokio/Buffer;J)V
    .locals 9
    .param p0, "$this$commonSkip"    # Lokio/Buffer;
    .param p1, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 418
    .local v0, "$i$f$commonSkip":I
    move-wide v1, p1

    .line 419
    .local v1, "byteCount":J
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 420
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v3, :cond_1

    .line 422
    .local v3, "head":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    .local v4, "b$iv":I
    const/4 v5, 0x0

    .line 1732
    .local v5, "$i$f$minOf":I
    int-to-long v6, v4

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 422
    .end local v4    # "b$iv":I
    .end local v5    # "$i$f$minOf":I
    long-to-int v4, v6

    .line 423
    .local v4, "toSkip":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    int-to-long v7, v4

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 424
    int-to-long v5, v4

    sub-long/2addr v1, v5

    .line 425
    iget v5, v3, Lokio/Segment;->pos:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->pos:I

    .line 427
    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_0

    .line 428
    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 429
    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .end local v3    # "head":Lokio/Segment;
    .end local v4    # "toSkip":I
    goto :goto_0

    .line 420
    :cond_1
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 432
    :cond_2
    return-void
.end method

.method public static final commonSnapshot(Lokio/Buffer;)Lokio/ByteString;
    .locals 5
    .param p0, "$this$commonSnapshot"    # Lokio/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1467
    .local v0, "$i$f$commonSnapshot":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1468
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v1

    return-object v1

    .line 1733
    :cond_1
    const/4 v1, 0x0

    .line 1467
    .local v1, "$i$a$-check-BufferKt$commonSnapshot$1":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "size > Int.MAX_VALUE: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-check-BufferKt$commonSnapshot$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonSnapshot(Lokio/Buffer;I)Lokio/ByteString;
    .locals 8
    .param p0, "$this$commonSnapshot"    # Lokio/Buffer;
    .param p1, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1473
    .local v0, "$i$f$commonSnapshot":I
    if-nez p1, :cond_0

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object v1

    .line 1474
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    int-to-long v6, p1

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1477
    const/4 v1, 0x0

    .line 1478
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 1479
    .local v2, "segmentCount":I
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1480
    .local v3, "s":Lokio/Segment;
    :goto_0
    if-ge v1, p1, :cond_2

    .line 1481
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    if-eq v4, v5, :cond_1

    .line 1484
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 1485
    add-int/lit8 v2, v2, 0x1

    .line 1486
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1482
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "s.limit == s.pos"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1490
    :cond_2
    new-array v4, v2, [[B

    .line 1491
    .local v4, "segments":[[B
    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [I

    .line 1492
    .local v5, "directory":[I
    const/4 v1, 0x0

    .line 1493
    const/4 v2, 0x0

    .line 1494
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1495
    :goto_1
    if-ge v1, p1, :cond_3

    .line 1496
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v3, Lokio/Segment;->data:[B

    aput-object v6, v4, v2

    .line 1497
    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 1499
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v5, v2

    .line 1500
    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    add-int/2addr v6, v2

    iget v7, v3, Lokio/Segment;->pos:I

    aput v7, v5, v6

    .line 1501
    const/4 v6, 0x1

    iput-boolean v6, v3, Lokio/Segment;->shared:Z

    .line 1502
    add-int/lit8 v2, v2, 0x1

    .line 1503
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 1506
    :cond_3
    new-instance v6, Lokio/SegmentedByteString;

    move-object v7, v4

    check-cast v7, [[B

    invoke-direct {v6, v7, v5}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v6, Lokio/ByteString;

    return-object v6
.end method

.method public static final commonWritableSegment(Lokio/Buffer;I)Lokio/Segment;
    .locals 4
    .param p0, "$this$commonWritableSegment"    # Lokio/Buffer;
    .param p1, "minimumCapacity"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 553
    .local v0, "$i$f$commonWritableSegment":I
    const/16 v1, 0x2000

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 555
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_1

    .line 556
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    .line 557
    .local v1, "result":Lokio/Segment;
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 558
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 559
    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 560
    return-object v1

    .line 563
    .end local v1    # "result":Lokio/Segment;
    :cond_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 564
    .local v2, "tail":Lokio/Segment;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, p1

    if-gt v3, v1, :cond_2

    iget-boolean v1, v2, Lokio/Segment;->owner:Z

    if-nez v1, :cond_3

    .line 565
    :cond_2
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v2

    .line 567
    :cond_3
    return-object v2

    .line 1733
    .end local v2    # "tail":Lokio/Segment;
    :cond_4
    const/4 v1, 0x0

    .line 553
    .local v1, "$i$a$-require-BufferKt$commonWritableSegment$1":I
    nop

    .end local v1    # "$i$a$-require-BufferKt$commonWritableSegment$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unexpected capacity"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/ByteString;II)Lokio/Buffer;
    .locals 1
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 439
    .local v0, "$i$f$commonWrite":I
    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->write$external__okio__android_common__okio_lib(Lokio/Buffer;II)V

    .line 440
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/Source;J)Lokio/Buffer;
    .locals 7
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1086
    .local v0, "$i$f$commonWrite":I
    move-wide v1, p2

    .line 1087
    .local v1, "byteCount":J
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1088
    invoke-interface {p1, p0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 1089
    .local v3, "read":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 1090
    sub-long/2addr v1, v3

    .end local v3    # "read":J
    goto :goto_0

    .line 1089
    .restart local v3    # "read":J
    :cond_0
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 1092
    .end local v3    # "read":J
    :cond_1
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;[B)Lokio/Buffer;
    .locals 3
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 570
    .local v0, "$i$f$commonWrite":I
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    return-object v1
.end method

.method public static final commonWrite(Lokio/Buffer;[BII)Lokio/Buffer;
    .locals 9
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 577
    .local v0, "$i$f$commonWrite":I
    move v1, p2

    .line 578
    .local v1, "offset":I
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, v1

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 580
    add-int v2, v1, p3

    .line 581
    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 582
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v3

    .line 584
    .local v3, "tail":Lokio/Segment;
    sub-int v4, v2, v1

    iget v5, v3, Lokio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 585
    .local v4, "toCopy":I
    nop

    .line 586
    iget-object v5, v3, Lokio/Segment;->data:[B

    .line 587
    iget v6, v3, Lokio/Segment;->limit:I

    .line 588
    nop

    .line 589
    add-int v7, v1, v4

    .line 585
    invoke-static {p1, v5, v6, v1, v7}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 592
    add-int/2addr v1, v4

    .line 593
    iget v5, v3, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->limit:I

    .end local v3    # "tail":Lokio/Segment;
    .end local v4    # "toCopy":I
    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 597
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/Buffer;J)V
    .locals 10
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1144
    .local v0, "$i$f$commonWrite":I
    move-wide v5, p2

    .line 1195
    .local v5, "byteCount":J
    const/4 v7, 0x0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    if-eqz v1, :cond_7

    .line 1196
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1198
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-lez v1, :cond_6

    .line 1200
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v5, v1

    if-gez v1, :cond_4

    .line 1201
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 1202
    .local v1, "tail":Lokio/Segment;
    :goto_2
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lokio/Segment;->owner:Z

    if-eqz v2, :cond_3

    .line 1203
    iget v2, v1, Lokio/Segment;->limit:I

    int-to-long v2, v2

    add-long/2addr v2, v5

    iget-boolean v4, v1, Lokio/Segment;->shared:Z

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_3

    :cond_2
    iget v4, v1, Lokio/Segment;->pos:I

    :goto_3
    int-to-long v8, v4

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x2000

    cmp-long v2, v2, v8

    if-gtz v2, :cond_3

    .line 1206
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v3, v5

    invoke-virtual {v2, v1, v3}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1207
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1208
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1209
    return-void

    .line 1213
    :cond_3
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v2

    iput-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1218
    .end local v1    # "tail":Lokio/Segment;
    :cond_4
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1219
    .local v1, "segmentToMove":Lokio/Segment;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 1220
    .local v2, "movedByteCount":J
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1221
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_5

    .line 1222
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1223
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1224
    iget-object v4, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_4

    .line 1226
    :cond_5
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1227
    .local v4, "tail":Lokio/Segment;
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v4

    .line 1228
    invoke-virtual {v4}, Lokio/Segment;->compact()V

    .line 1230
    .end local v4    # "tail":Lokio/Segment;
    :goto_4
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1231
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1232
    sub-long/2addr v5, v2

    .end local v1    # "segmentToMove":Lokio/Segment;
    .end local v2    # "movedByteCount":J
    goto/16 :goto_1

    .line 1234
    :cond_6
    return-void

    .line 1733
    :cond_7
    const/4 v1, 0x0

    .line 1195
    .local v1, "$i$a$-require-BufferKt$commonWrite$1":I
    nop

    .end local v1    # "$i$a$-require-BufferKt$commonWrite$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "source == this"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic commonWrite$default(Lokio/Buffer;Lokio/ByteString;IIILjava/lang/Object;)Lokio/Buffer;
    .locals 0
    .param p0, "$this$commonWrite_u24default"    # Lokio/Buffer;
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 434
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 436
    const/4 p2, 0x0

    .line 434
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 437
    nop

    .line 434
    nop

    .line 437
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p3

    .line 434
    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "byteString"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 439
    .local p4, "$i$f$commonWrite":I
    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->write$external__okio__android_common__okio_lib(Lokio/Buffer;II)V

    .line 440
    return-object p0
.end method

.method public static final commonWriteAll(Lokio/Buffer;Lokio/Source;)J
    .locals 7
    .param p0, "$this$commonWriteAll"    # Lokio/Buffer;
    .param p1, "source"    # Lokio/Source;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1076
    .local v0, "$i$f$commonWriteAll":I
    const-wide/16 v1, 0x0

    .line 1077
    .local v1, "totalBytesRead":J
    :goto_0
    nop

    .line 1078
    const-wide/16 v3, 0x2000

    invoke-interface {p1, p0, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 1079
    .local v3, "readCount":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 1082
    .end local v3    # "readCount":J
    return-wide v1

    .line 1080
    .restart local v3    # "readCount":J
    :cond_0
    add-long/2addr v1, v3

    .end local v3    # "readCount":J
    goto :goto_0
.end method

.method public static final commonWriteByte(Lokio/Buffer;I)Lokio/Buffer;
    .locals 6
    .param p0, "$this$commonWriteByte"    # Lokio/Buffer;
    .param p1, "b"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1096
    .local v0, "$i$f$commonWriteByte":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v1

    .line 1097
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lokio/Segment;->limit:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 1098
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1099
    return-object p0
.end method

.method public static final commonWriteDecimalLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 16
    .param p0, "$this$commonWriteDecimalLong"    # Lokio/Buffer;
    .param p1, "v"    # J

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 444
    .local v1, "$i$f$commonWriteDecimalLong":I
    move-wide/from16 v2, p1

    .line 445
    .local v2, "v":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 447
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    return-object v4

    .line 450
    :cond_0
    const/4 v6, 0x0

    .line 451
    .local v6, "negative":Z
    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    .line 452
    neg-long v2, v2

    .line 453
    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 454
    const-string v4, "-9223372036854775808"

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v4

    return-object v4

    .line 456
    :cond_1
    const/4 v6, 0x1

    .line 461
    :cond_2
    const-wide/32 v7, 0x5f5e100

    cmp-long v7, v2, v7

    const/16 v8, 0xa

    if-gez v7, :cond_a

    .line 462
    const-wide/16 v9, 0x2710

    cmp-long v7, v2, v9

    if-gez v7, :cond_6

    .line 463
    const-wide/16 v9, 0x64

    cmp-long v7, v2, v9

    if-gez v7, :cond_4

    .line 464
    const-wide/16 v9, 0xa

    cmp-long v7, v2, v9

    if-gez v7, :cond_3

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 465
    :cond_3
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 466
    :cond_4
    const-wide/16 v9, 0x3e8

    cmp-long v7, v2, v9

    if-gez v7, :cond_5

    const/4 v7, 0x3

    goto/16 :goto_0

    .line 467
    :cond_5
    const/4 v7, 0x4

    goto/16 :goto_0

    .line 468
    :cond_6
    const-wide/32 v9, 0xf4240

    cmp-long v7, v2, v9

    if-gez v7, :cond_8

    .line 469
    const-wide/32 v9, 0x186a0

    cmp-long v7, v2, v9

    if-gez v7, :cond_7

    const/4 v7, 0x5

    goto/16 :goto_0

    .line 470
    :cond_7
    const/4 v7, 0x6

    goto/16 :goto_0

    .line 471
    :cond_8
    const-wide/32 v9, 0x989680

    cmp-long v7, v2, v9

    if-gez v7, :cond_9

    const/4 v7, 0x7

    goto/16 :goto_0

    .line 472
    :cond_9
    const/16 v7, 0x8

    goto/16 :goto_0

    .line 473
    :cond_a
    const-wide v9, 0xe8d4a51000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_e

    .line 474
    const-wide v9, 0x2540be400L

    cmp-long v7, v2, v9

    if-gez v7, :cond_c

    .line 475
    const-wide/32 v9, 0x3b9aca00

    cmp-long v7, v2, v9

    if-gez v7, :cond_b

    const/16 v7, 0x9

    goto :goto_0

    .line 476
    :cond_b
    move v7, v8

    goto :goto_0

    .line 477
    :cond_c
    const-wide v9, 0x174876e800L

    cmp-long v7, v2, v9

    if-gez v7, :cond_d

    const/16 v7, 0xb

    goto :goto_0

    .line 478
    :cond_d
    const/16 v7, 0xc

    goto :goto_0

    .line 479
    :cond_e
    const-wide v9, 0x38d7ea4c68000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_11

    .line 480
    const-wide v9, 0x9184e72a000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_f

    const/16 v7, 0xd

    goto :goto_0

    .line 481
    :cond_f
    const-wide v9, 0x5af3107a4000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_10

    const/16 v7, 0xe

    goto :goto_0

    .line 482
    :cond_10
    const/16 v7, 0xf

    goto :goto_0

    .line 483
    :cond_11
    const-wide v9, 0x16345785d8a0000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_13

    .line 484
    const-wide v9, 0x2386f26fc10000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_12

    const/16 v7, 0x10

    goto :goto_0

    .line 485
    :cond_12
    const/16 v7, 0x11

    goto :goto_0

    .line 486
    :cond_13
    const-wide v9, 0xde0b6b3a7640000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_14

    const/16 v7, 0x12

    goto :goto_0

    .line 487
    :cond_14
    const/16 v7, 0x13

    .line 461
    :goto_0
    nop

    .line 460
    nop

    .line 488
    .local v7, "width":I
    if-eqz v6, :cond_15

    .line 489
    add-int/lit8 v7, v7, 0x1

    .line 492
    :cond_15
    invoke-virtual {v0, v7}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v9

    .line 493
    .local v9, "tail":Lokio/Segment;
    iget-object v10, v9, Lokio/Segment;->data:[B

    .line 494
    .local v10, "data":[B
    iget v11, v9, Lokio/Segment;->limit:I

    add-int/2addr v11, v7

    .line 495
    .local v11, "pos":I
    :goto_1
    cmp-long v12, v2, v4

    if-eqz v12, :cond_16

    .line 496
    int-to-long v12, v8

    rem-long v14, v2, v12

    long-to-int v14, v14

    .line 497
    .local v14, "digit":I
    add-int/lit8 v11, v11, -0x1

    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v15

    aget-byte v15, v15, v14

    aput-byte v15, v10, v11

    .line 498
    div-long/2addr v2, v12

    .end local v14    # "digit":I
    goto :goto_1

    .line 500
    :cond_16
    if-eqz v6, :cond_17

    .line 501
    add-int/lit8 v11, v11, -0x1

    const/16 v4, 0x2d

    aput-byte v4, v10, v11

    .line 504
    :cond_17
    iget v4, v9, Lokio/Segment;->limit:I

    add-int/2addr v4, v7

    iput v4, v9, Lokio/Segment;->limit:I

    .line 505
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v12, v7

    add-long/2addr v4, v12

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 506
    return-object v0
.end method

.method public static final commonWriteHexadecimalUnsignedLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 16
    .param p0, "$this$commonWriteHexadecimalUnsignedLong"    # Lokio/Buffer;
    .param p1, "v"    # J

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 510
    .local v1, "$i$f$commonWriteHexadecimalUnsignedLong":I
    move-wide/from16 v2, p1

    .line 511
    .local v2, "v":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 513
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    return-object v4

    .line 518
    :cond_0
    move-wide v4, v2

    .line 519
    .local v4, "x":J
    const/4 v6, 0x1

    ushr-long v7, v4, v6

    or-long/2addr v4, v7

    .line 520
    const/4 v7, 0x2

    ushr-long v8, v4, v7

    or-long/2addr v4, v8

    .line 521
    const/4 v8, 0x4

    ushr-long v9, v4, v8

    or-long/2addr v4, v9

    .line 522
    const/16 v9, 0x8

    ushr-long v10, v4, v9

    or-long/2addr v4, v10

    .line 523
    const/16 v10, 0x10

    ushr-long v11, v4, v10

    or-long/2addr v4, v11

    .line 524
    const/16 v11, 0x20

    ushr-long v12, v4, v11

    or-long/2addr v4, v12

    .line 528
    ushr-long v12, v4, v6

    const-wide v14, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v12, v14

    sub-long/2addr v4, v12

    .line 529
    ushr-long v12, v4, v7

    const-wide v14, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v12, v14

    and-long/2addr v14, v4

    add-long/2addr v12, v14

    .line 530
    .end local v4    # "x":J
    .local v12, "x":J
    ushr-long v4, v12, v8

    add-long/2addr v4, v12

    const-wide v14, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v4, v14

    .line 531
    .end local v12    # "x":J
    .restart local v4    # "x":J
    ushr-long v12, v4, v9

    add-long/2addr v4, v12

    .line 532
    ushr-long v9, v4, v10

    add-long/2addr v4, v9

    .line 533
    const-wide/16 v9, 0x3f

    and-long v12, v4, v9

    ushr-long v14, v4, v11

    and-long/2addr v9, v14

    add-long/2addr v12, v9

    .line 536
    .end local v4    # "x":J
    .restart local v12    # "x":J
    const/4 v4, 0x3

    int-to-long v4, v4

    add-long/2addr v4, v12

    int-to-long v9, v8

    div-long/2addr v4, v9

    long-to-int v4, v4

    .line 538
    .local v4, "width":I
    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v5

    .line 539
    .local v5, "tail":Lokio/Segment;
    iget-object v7, v5, Lokio/Segment;->data:[B

    .line 540
    .local v7, "data":[B
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v6

    .line 541
    .local v9, "pos":I
    iget v6, v5, Lokio/Segment;->limit:I

    .line 542
    .local v6, "start":I
    :goto_0
    if-lt v9, v6, :cond_1

    .line 543
    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v10

    const-wide/16 v14, 0xf

    and-long/2addr v14, v2

    long-to-int v11, v14

    aget-byte v10, v10, v11

    aput-byte v10, v7, v9

    .line 544
    ushr-long/2addr v2, v8

    .line 545
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 547
    :cond_1
    iget v8, v5, Lokio/Segment;->limit:I

    add-int/2addr v8, v4

    iput v8, v5, Lokio/Segment;->limit:I

    .line 548
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v10

    int-to-long v14, v4

    add-long/2addr v10, v14

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 549
    return-object v0
.end method

.method public static final commonWriteInt(Lokio/Buffer;I)Lokio/Buffer;
    .locals 8
    .param p0, "$this$commonWriteInt"    # Lokio/Buffer;
    .param p1, "i"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1114
    .local v0, "$i$f$commonWriteInt":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v1

    .line 1115
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1116
    .local v2, "data":[B
    iget v3, v1, Lokio/Segment;->limit:I

    .line 1117
    .local v3, "limit":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .local v4, "limit":I
    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1118
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    ushr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1119
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1120
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1121
    iput v3, v1, Lokio/Segment;->limit:I

    .line 1122
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1123
    return-object p0
.end method

.method public static final commonWriteLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 10
    .param p0, "$this$commonWriteLong"    # Lokio/Buffer;
    .param p1, "v"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1127
    .local v0, "$i$f$commonWriteLong":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v2

    .line 1128
    .local v2, "tail":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1129
    .local v3, "data":[B
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1130
    .local v4, "limit":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .local v5, "limit":I
    const/16 v6, 0x38

    ushr-long v6, p1, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1131
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit":I
    .restart local v4    # "limit":I
    const/16 v6, 0x30

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1132
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .restart local v5    # "limit":I
    const/16 v6, 0x28

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1133
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit":I
    .restart local v4    # "limit":I
    const/16 v6, 0x20

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1134
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .restart local v5    # "limit":I
    const/16 v6, 0x18

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1135
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit":I
    .restart local v4    # "limit":I
    const/16 v6, 0x10

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1136
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .restart local v5    # "limit":I
    ushr-long v6, p1, v1

    and-long/2addr v6, v8

    long-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    .line 1137
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "limit":I
    .local v1, "limit":I
    and-long v6, p1, v8

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 1138
    iput v1, v2, Lokio/Segment;->limit:I

    .line 1139
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1140
    return-object p0
.end method

.method public static final commonWriteShort(Lokio/Buffer;I)Lokio/Buffer;
    .locals 8
    .param p0, "$this$commonWriteShort"    # Lokio/Buffer;
    .param p1, "s"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1103
    .local v0, "$i$f$commonWriteShort":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v1

    .line 1104
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1105
    .local v2, "data":[B
    iget v3, v1, Lokio/Segment;->limit:I

    .line 1106
    .local v3, "limit":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .local v4, "limit":I
    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1107
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1108
    iput v3, v1, Lokio/Segment;->limit:I

    .line 1109
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1110
    return-object p0
.end method

.method public static final commonWriteUtf8(Lokio/Buffer;Ljava/lang/String;II)Lokio/Buffer;
    .locals 16
    .param p0, "$this$commonWriteUtf8"    # Lokio/Buffer;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "string"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 934
    .local v4, "$i$f$commonWriteUtf8":I
    const/4 v6, 0x1

    if-ltz v2, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_10

    .line 935
    if-lt v3, v2, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_f

    .line 936
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v3, v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_e

    .line 939
    move/from16 v7, p2

    .line 940
    .local v7, "i":I
    :goto_3
    if-ge v7, v3, :cond_d

    .line 941
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 943
    .local v8, "c":I
    nop

    .line 944
    const/16 v9, 0x80

    if-ge v8, v9, :cond_5

    .line 945
    invoke-virtual {v0, v6}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v10

    .line 946
    .local v10, "tail":Lokio/Segment;
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 947
    .local v11, "data":[B
    iget v12, v10, Lokio/Segment;->limit:I

    sub-int/2addr v12, v7

    .line 948
    .local v12, "segmentOffset":I
    rsub-int v13, v12, 0x2000

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 951
    .local v13, "runLimit":I
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i":I
    .local v14, "i":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    move v7, v14

    .line 955
    .end local v14    # "i":I
    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v13, :cond_4

    .line 956
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 957
    if-lt v8, v9, :cond_3

    goto :goto_5

    .line 958
    :cond_3
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i":I
    .restart local v14    # "i":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    move v7, v14

    goto :goto_4

    .line 961
    .end local v14    # "i":I
    .restart local v7    # "i":I
    :cond_4
    :goto_5
    add-int v9, v7, v12

    iget v14, v10, Lokio/Segment;->limit:I

    sub-int/2addr v9, v14

    .line 962
    .local v9, "runSize":I
    iget v14, v10, Lokio/Segment;->limit:I

    add-int/2addr v14, v9

    iput v14, v10, Lokio/Segment;->limit:I

    .line 963
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v14

    int-to-long v5, v9

    add-long/2addr v14, v5

    invoke-virtual {v0, v14, v15}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    const/4 v6, 0x1

    .end local v9    # "runSize":I
    .end local v10    # "tail":Lokio/Segment;
    .end local v11    # "data":[B
    .end local v12    # "segmentOffset":I
    .end local v13    # "runLimit":I
    goto :goto_3

    .line 966
    :cond_5
    const/16 v5, 0x800

    const/4 v6, 0x2

    if-ge v8, v5, :cond_6

    .line 968
    invoke-virtual {v0, v6}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v5

    .line 970
    .local v5, "tail":Lokio/Segment;
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v12, v8, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 971
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    and-int/lit8 v12, v8, 0x3f

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    .line 973
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v6

    iput v9, v5, Lokio/Segment;->limit:I

    .line 974
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    add-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 975
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    .end local v5    # "tail":Lokio/Segment;
    goto :goto_3

    .line 978
    :cond_6
    const v5, 0xd800

    const/16 v11, 0x3f

    if-lt v8, v5, :cond_c

    const v5, 0xdfff

    if-le v8, v5, :cond_7

    goto/16 :goto_9

    .line 995
    :cond_7
    add-int/lit8 v5, v7, 0x1

    if-ge v5, v3, :cond_8

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    .line 996
    .local v5, "low":I
    :goto_6
    const v12, 0xdbff

    if-gt v8, v12, :cond_b

    const v12, 0xdc00

    if-gt v12, v5, :cond_9

    const v12, 0xe000

    if-ge v5, v12, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    if-nez v12, :cond_a

    goto :goto_8

    .line 1003
    :cond_a
    const/high16 v12, 0x10000

    and-int/lit16 v13, v8, 0x3ff

    shl-int/lit8 v13, v13, 0xa

    and-int/lit16 v14, v5, 0x3ff

    or-int/2addr v13, v14

    add-int/2addr v13, v12

    .line 1006
    .local v13, "codePoint":I
    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v14

    .line 1008
    .local v14, "tail":Lokio/Segment;
    iget-object v15, v14, Lokio/Segment;->data:[B

    iget v12, v14, Lokio/Segment;->limit:I

    shr-int/lit8 v10, v13, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v15, v12

    .line 1009
    iget-object v10, v14, Lokio/Segment;->data:[B

    iget v12, v14, Lokio/Segment;->limit:I

    const/4 v15, 0x1

    add-int/2addr v12, v15

    shr-int/lit8 v15, v13, 0xc

    and-int/2addr v15, v11

    or-int/2addr v15, v9

    int-to-byte v15, v15

    aput-byte v15, v10, v12

    .line 1010
    iget-object v10, v14, Lokio/Segment;->data:[B

    iget v12, v14, Lokio/Segment;->limit:I

    add-int/2addr v12, v6

    shr-int/lit8 v6, v13, 0x6

    and-int/2addr v6, v11

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v10, v12

    .line 1011
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v10, v14, Lokio/Segment;->limit:I

    const/4 v11, 0x3

    add-int/2addr v10, v11

    and-int/lit8 v11, v13, 0x3f

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v6, v10

    .line 1013
    iget v6, v14, Lokio/Segment;->limit:I

    const/4 v9, 0x4

    add-int/2addr v6, v9

    iput v6, v14, Lokio/Segment;->limit:I

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x4

    add-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1015
    nop

    .end local v5    # "low":I
    .end local v8    # "c":I
    .end local v13    # "codePoint":I
    .end local v14    # "tail":Lokio/Segment;
    add-int/lit8 v7, v7, 0x2

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 997
    .restart local v5    # "low":I
    .restart local v8    # "c":I
    :cond_b
    :goto_8
    invoke-virtual {v0, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 998
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 980
    .end local v5    # "low":I
    :cond_c
    :goto_9
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v10

    .line 982
    .restart local v10    # "tail":Lokio/Segment;
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v12, v10, Lokio/Segment;->limit:I

    shr-int/lit8 v13, v8, 0xc

    or-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 983
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v12, v10, Lokio/Segment;->limit:I

    const/4 v13, 0x1

    add-int/2addr v12, v13

    shr-int/lit8 v14, v8, 0x6

    and-int/2addr v11, v14

    or-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v5, v12

    .line 984
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v11, v10, Lokio/Segment;->limit:I

    add-int/2addr v11, v6

    and-int/lit8 v6, v8, 0x3f

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    .line 986
    iget v5, v10, Lokio/Segment;->limit:I

    const/4 v6, 0x3

    add-int/2addr v5, v6

    iput v5, v10, Lokio/Segment;->limit:I

    .line 987
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v11, 0x3

    add-long/2addr v5, v11

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 988
    add-int/lit8 v7, v7, 0x1

    move v6, v13

    .end local v10    # "tail":Lokio/Segment;
    goto/16 :goto_3

    .line 1021
    .end local v8    # "c":I
    :cond_d
    return-object v0

    .line 1733
    .end local v7    # "i":I
    :cond_e
    const/4 v5, 0x0

    .line 936
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$3":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex > string.length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$3":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1733
    :cond_f
    const/4 v5, 0x0

    .line 935
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex < beginIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$2":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1733
    :cond_10
    const/4 v5, 0x0

    .line 934
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$1":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "beginIndex < 0: "

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$1":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static final commonWriteUtf8CodePoint(Lokio/Buffer;I)Lokio/Buffer;
    .locals 11
    .param p0, "$this$commonWriteUtf8CodePoint"    # Lokio/Buffer;
    .param p1, "codePoint"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1025
    .local v0, "$i$f$commonWriteUtf8CodePoint":I
    nop

    .line 1026
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 1028
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_0

    .line 1030
    :cond_0
    const/16 v2, 0x800

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge p1, v2, :cond_1

    .line 1032
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v2

    .line 1034
    .local v2, "tail":Lokio/Segment;
    iget-object v5, v2, Lokio/Segment;->data:[B

    iget v6, v2, Lokio/Segment;->limit:I

    shr-int/lit8 v7, p1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1035
    iget-object v5, v2, Lokio/Segment;->data:[B

    iget v6, v2, Lokio/Segment;->limit:I

    add-int/2addr v6, v3

    and-int/lit8 v3, p1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v5, v6

    .line 1037
    iget v1, v2, Lokio/Segment;->limit:I

    add-int/2addr v1, v4

    iput v1, v2, Lokio/Segment;->limit:I

    .line 1038
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .end local v2    # "tail":Lokio/Segment;
    goto/16 :goto_0

    .line 1040
    :cond_1
    const v2, 0xd800

    const/4 v5, 0x0

    if-gt v2, p1, :cond_2

    const v2, 0xe000

    if-ge p1, v2, :cond_2

    move v5, v3

    :cond_2
    const/16 v2, 0x3f

    if-eqz v5, :cond_3

    .line 1042
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_0

    .line 1044
    :cond_3
    const/high16 v5, 0x10000

    const/4 v6, 0x3

    if-ge p1, v5, :cond_4

    .line 1046
    invoke-virtual {p0, v6}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v5

    .line 1048
    .local v5, "tail":Lokio/Segment;
    iget-object v7, v5, Lokio/Segment;->data:[B

    iget v8, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v9, p1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1049
    iget-object v7, v5, Lokio/Segment;->data:[B

    iget v8, v5, Lokio/Segment;->limit:I

    add-int/2addr v8, v3

    shr-int/lit8 v3, p1, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, v7, v8

    .line 1050
    iget-object v2, v5, Lokio/Segment;->data:[B

    iget v3, v5, Lokio/Segment;->limit:I

    add-int/2addr v3, v4

    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 1052
    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v6

    iput v1, v5, Lokio/Segment;->limit:I

    .line 1053
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .end local v5    # "tail":Lokio/Segment;
    goto :goto_0

    .line 1055
    :cond_4
    const v5, 0x10ffff

    if-gt p1, v5, :cond_5

    .line 1057
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v7

    .line 1059
    .local v7, "tail":Lokio/Segment;
    iget-object v8, v7, Lokio/Segment;->data:[B

    iget v9, v7, Lokio/Segment;->limit:I

    shr-int/lit8 v10, p1, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1060
    iget-object v8, v7, Lokio/Segment;->data:[B

    iget v9, v7, Lokio/Segment;->limit:I

    add-int/2addr v9, v3

    shr-int/lit8 v3, p1, 0xc

    and-int/2addr v3, v2

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v8, v9

    .line 1061
    iget-object v3, v7, Lokio/Segment;->data:[B

    iget v8, v7, Lokio/Segment;->limit:I

    add-int/2addr v8, v4

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v2, v4

    or-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, v3, v8

    .line 1062
    iget-object v2, v7, Lokio/Segment;->data:[B

    iget v3, v7, Lokio/Segment;->limit:I

    add-int/2addr v3, v6

    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 1064
    iget v1, v7, Lokio/Segment;->limit:I

    add-int/2addr v1, v5

    iput v1, v7, Lokio/Segment;->limit:I

    .line 1065
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1072
    .end local v7    # "tail":Lokio/Segment;
    :goto_0
    return-object p0

    .line 1068
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lokio/-Util;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected code point: 0x"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final getHEX_DIGIT_BYTES()[B
    .locals 1

    .line 40
    sget-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-object v0
.end method

.method public static final rangeEquals(Lokio/Segment;I[BII)Z
    .locals 7
    .param p0, "segment"    # Lokio/Segment;
    .param p1, "segmentPos"    # I
    .param p2, "bytes"    # [B
    .param p3, "bytesOffset"    # I
    .param p4, "bytesLimit"    # I

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p0

    .line 58
    .local v0, "segment":Lokio/Segment;
    move v1, p1

    .line 59
    .local v1, "segmentPos":I
    iget v2, v0, Lokio/Segment;->limit:I

    .line 60
    .local v2, "segmentLimit":I
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 62
    .local v3, "data":[B
    move v4, p3

    .line 63
    .local v4, "i":I
    :goto_0
    if-ge v4, p4, :cond_2

    .line 64
    if-ne v1, v2, :cond_0

    .line 65
    iget-object v5, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v5

    .line 66
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 67
    iget v1, v0, Lokio/Segment;->pos:I

    .line 68
    iget v2, v0, Lokio/Segment;->limit:I

    .line 71
    :cond_0
    aget-byte v5, v3, v1

    aget-byte v6, p2, v4

    if-eq v5, v6, :cond_1

    .line 72
    const/4 v5, 0x0

    return v5

    .line 75
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .locals 5
    .param p0, "$this$readUtf8Line"    # Lokio/Buffer;
    .param p1, "newline"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    nop

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    .line 86
    sub-long v0, p1, v1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 88
    nop

    .end local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "result":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 94
    nop

    .line 83
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public static final seek(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$seek"    # Lokio/Buffer;
    .param p1, "fromIndex"    # J
    .param p3, "lambda"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Buffer;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lokio/Segment;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lambda"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    .local v0, "$i$f$seek":I
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 109
    .local v1, "s":Lokio/Segment;
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    .line 111
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 112
    .local v2, "offset":J
    :goto_0
    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    .line 113
    iget-object v4, v1, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v4

    .line 114
    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 119
    .end local v2    # "offset":J
    :cond_2
    const-wide/16 v2, 0x0

    .line 120
    .restart local v2    # "offset":J
    :goto_1
    nop

    .line 121
    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 122
    .local v4, "nextOffset":J
    cmp-long v6, v4, p1

    if-lez v6, :cond_3

    .line 126
    .end local v4    # "nextOffset":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 123
    .restart local v4    # "nextOffset":J
    :cond_3
    iget-object v6, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v6

    .line 124
    move-wide v2, v4

    .end local v4    # "nextOffset":J
    goto :goto_1
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 19
    .param p0, "$this$selectPrefix"    # Lokio/Buffer;
    .param p1, "options"    # Lokio/Options;
    .param p2, "selectTruncated"    # Z

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v4, -0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    const/4 v3, -0x2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 145
    .local v1, "head":Lokio/Segment;
    :cond_1
    move-object v5, v1

    .line 146
    .local v5, "s":Lokio/Segment;
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 147
    .local v6, "data":[B
    iget v7, v1, Lokio/Segment;->pos:I

    .line 148
    .local v7, "pos":I
    iget v8, v1, Lokio/Segment;->limit:I

    .line 150
    .local v8, "limit":I
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$external__okio__android_common__okio_lib()[I

    move-result-object v9

    .line 151
    .local v9, "trie":[I
    const/4 v10, 0x0

    .line 153
    .local v10, "triePos":I
    const/4 v11, -0x1

    .line 156
    .local v11, "prefixIndex":I
    :goto_1
    nop

    .line 157
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "triePos":I
    .local v12, "triePos":I
    aget v10, v9, v10

    .line 159
    .local v10, "scanOrSelect":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "triePos":I
    .local v13, "triePos":I
    aget v12, v9, v12

    .line 160
    .local v12, "possiblePrefixIndex":I
    if-eq v12, v4, :cond_2

    .line 161
    move v11, v12

    :cond_2
    const/4 v14, 0x0

    .line 166
    .local v14, "nextStep":I
    if-nez v5, :cond_3

    .line 167
    goto :goto_4

    .line 168
    :cond_3
    if-gez v10, :cond_b

    .line 170
    mul-int/lit8 v15, v10, -0x1

    .line 171
    .local v15, "scanByteCount":I
    add-int v4, v13, v15

    .line 172
    .local v4, "trieLimit":I
    :goto_2
    nop

    .line 173
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "pos":I
    .local v3, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v17, 0xff

    .local v17, "other$iv":I
    const/16 v18, 0x0

    .line 1690
    .local v18, "$i$f$and":I
    and-int v7, v7, v17

    .line 173
    .end local v7    # "$this$and$iv":B
    .end local v17    # "other$iv":I
    .end local v18    # "$i$f$and":I
    nop

    .line 174
    .local v7, "byte":I
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "triePos":I
    .local v0, "triePos":I
    aget v13, v9, v13

    if-eq v7, v13, :cond_4

    return v11

    .line 175
    :cond_4
    if-ne v0, v4, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 178
    .local v13, "scanComplete":Z
    :goto_3
    if-ne v3, v8, :cond_9

    .line 179
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v2

    .line 180
    iget v2, v5, Lokio/Segment;->pos:I

    .line 181
    .end local v3    # "pos":I
    .local v2, "pos":I
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 182
    iget v8, v5, Lokio/Segment;->limit:I

    .line 183
    if-ne v5, v1, :cond_8

    .line 184
    if-nez v13, :cond_7

    move v13, v0

    move v7, v2

    .line 227
    .end local v0    # "triePos":I
    .end local v2    # "pos":I
    .end local v4    # "trieLimit":I
    .end local v10    # "scanOrSelect":I
    .end local v12    # "possiblePrefixIndex":I
    .end local v14    # "nextStep":I
    .end local v15    # "scanByteCount":I
    .local v7, "pos":I
    .local v13, "triePos":I
    :goto_4
    if-eqz p2, :cond_6

    const/16 v16, -0x2

    return v16

    .line 228
    :cond_6
    return v11

    .line 185
    .restart local v0    # "triePos":I
    .restart local v2    # "pos":I
    .restart local v4    # "trieLimit":I
    .local v7, "byte":I
    .restart local v10    # "scanOrSelect":I
    .restart local v12    # "possiblePrefixIndex":I
    .local v13, "scanComplete":Z
    .restart local v14    # "nextStep":I
    .restart local v15    # "scanByteCount":I
    :cond_7
    const/16 v16, -0x2

    const/4 v3, 0x0

    move-object v5, v3

    .end local v5    # "s":Lokio/Segment;
    .local v3, "s":Lokio/Segment;
    goto :goto_5

    .line 183
    .end local v3    # "s":Lokio/Segment;
    .restart local v5    # "s":Lokio/Segment;
    :cond_8
    const/16 v16, -0x2

    goto :goto_5

    .line 178
    .end local v2    # "pos":I
    .local v3, "pos":I
    :cond_9
    const/16 v16, -0x2

    move v2, v3

    .line 189
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :goto_5
    if-eqz v13, :cond_a

    .line 190
    aget v3, v9, v0

    .line 191
    .end local v14    # "nextStep":I
    .local v3, "nextStep":I
    move v7, v2

    goto :goto_7

    .line 189
    .end local v3    # "nextStep":I
    .restart local v14    # "nextStep":I
    :cond_a
    move v13, v0

    move v7, v2

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    goto :goto_2

    .line 196
    .end local v0    # "triePos":I
    .end local v2    # "pos":I
    .end local v4    # "trieLimit":I
    .end local v15    # "scanByteCount":I
    .local v7, "pos":I
    .local v13, "triePos":I
    :cond_b
    const/16 v16, -0x2

    move v0, v10

    .line 197
    .local v0, "selectChoiceCount":I
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v3, v6, v7

    .local v3, "$this$and$iv":B
    const/16 v4, 0xff

    .local v4, "other$iv":I
    const/4 v7, 0x0

    .line 1691
    .local v7, "$i$f$and":I
    and-int/2addr v3, v4

    .line 197
    .end local v3    # "$this$and$iv":B
    .end local v4    # "other$iv":I
    .end local v7    # "$i$f$and":I
    nop

    .line 198
    .local v3, "byte":I
    add-int v4, v13, v0

    .line 199
    .local v4, "selectLimit":I
    :goto_6
    nop

    .line 200
    if-ne v13, v4, :cond_c

    return v11

    .line 202
    :cond_c
    aget v7, v9, v13

    if-ne v3, v7, :cond_10

    .line 203
    add-int v7, v13, v0

    aget v7, v9, v7

    .line 204
    .end local v14    # "nextStep":I
    .local v7, "nextStep":I
    nop

    .line 211
    if-ne v2, v8, :cond_e

    .line 212
    iget-object v14, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v14

    .line 213
    iget v2, v5, Lokio/Segment;->pos:I

    .line 214
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 215
    iget v8, v5, Lokio/Segment;->limit:I

    .line 216
    if-ne v5, v1, :cond_d

    .line 217
    const/4 v5, 0x0

    move v3, v7

    move v0, v13

    move v7, v2

    goto :goto_7

    .line 216
    :cond_d
    move v3, v7

    move v0, v13

    move v7, v2

    goto :goto_7

    .line 211
    :cond_e
    move v3, v7

    move v0, v13

    move v7, v2

    .line 222
    .end local v2    # "pos":I
    .end local v4    # "selectLimit":I
    .end local v13    # "triePos":I
    .local v0, "triePos":I
    .local v3, "nextStep":I
    .local v7, "pos":I
    :goto_7
    if-ltz v3, :cond_f

    return v3

    .line 223
    :cond_f
    neg-int v10, v3

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .end local v0    # "triePos":I
    .end local v3    # "nextStep":I
    .end local v12    # "possiblePrefixIndex":I
    .local v10, "triePos":I
    goto/16 :goto_1

    .line 207
    .end local v7    # "pos":I
    .local v0, "selectChoiceCount":I
    .restart local v2    # "pos":I
    .local v3, "byte":I
    .restart local v4    # "selectLimit":I
    .local v10, "scanOrSelect":I
    .restart local v12    # "possiblePrefixIndex":I
    .restart local v13    # "triePos":I
    .restart local v14    # "nextStep":I
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_6
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 0

    .line 142
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result p0

    return p0
.end method
