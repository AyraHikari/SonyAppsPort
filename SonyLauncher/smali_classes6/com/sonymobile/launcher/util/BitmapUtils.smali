.class public final Lcom/sonymobile/launcher/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeBitmapChecksum(Landroid/graphics/Bitmap;)J
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 22
    if-nez p0, :cond_0

    .line 23
    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "bitmapBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 27
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    .line 28
    .local v1, "adler32":Ljava/util/zip/Adler32;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 29
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method
