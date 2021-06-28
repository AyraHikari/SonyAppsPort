.class Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentArt"
.end annotation


# instance fields
.field private mCurrentAlbumArt:Landroid/graphics/Bitmap;

.field private mCurrentTrackUri:Landroid/net/Uri;

.field private mIsLowRamDevice:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2247
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->checkLowRamDevice(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mIsLowRamDevice:Z

    return-void
.end method

.method private static checkLowRamDevice(Landroid/content/Context;)Z
    .locals 2

    .line 2278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const-string v0, "activity"

    .line 2279
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2280
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 2273
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mCurrentTrackUri:Landroid/net/Uri;

    .line 2274
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mCurrentAlbumArt:Landroid/graphics/Bitmap;

    return-void
.end method

.method get(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    .line 2251
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mIsLowRamDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    .line 2253
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mCurrentTrackUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mCurrentAlbumArt:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 2255
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2257
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2259
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mCurrentAlbumArt:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method set(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2266
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mIsLowRamDevice:Z

    if-nez v0, :cond_0

    .line 2267
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mCurrentTrackUri:Landroid/net/Uri;

    .line 2268
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->mCurrentAlbumArt:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
