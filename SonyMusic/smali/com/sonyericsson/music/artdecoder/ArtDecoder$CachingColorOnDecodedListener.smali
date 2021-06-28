.class public abstract Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "ArtDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/artdecoder/ArtDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CachingColorOnDecodedListener"
.end annotation


# instance fields
.field protected final mBitmapUri:Landroid/net/Uri;

.field protected volatile mCachedColor:Ljava/lang/Integer;

.field protected final mContext:Landroid/content/Context;

.field protected final mHashCode:I

.field protected final mIsColorCached:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    if-eqz p1, :cond_1

    .line 95
    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mBitmapUri:Landroid/net/Uri;

    .line 96
    iput p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mHashCode:I

    .line 97
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mContext:Landroid/content/Context;

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mBitmapUri:Landroid/net/Uri;

    iget p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mHashCode:I

    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/PaletteUtils;->getColorPick(Landroid/net/Uri;I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mCachedColor:Ljava/lang/Integer;

    .line 99
    iget-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mCachedColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mIsColorCached:Z

    return-void

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bitmapUri must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mCachedColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mBitmapUri:Landroid/net/Uri;

    iget v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mHashCode:I

    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mCachedColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/PaletteUtils;->addColorPick(Landroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method public preProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mIsColorCached:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/PaletteUtils;->getBackgroundColor(Landroid/graphics/Bitmap;Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mCachedColor:Ljava/lang/Integer;

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;->preProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public preProcessSynchronous(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;->preProcessSynchronous(Landroid/graphics/Bitmap;)Z

    .line 106
    iget-boolean p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mIsColorCached:Z

    return p1
.end method
