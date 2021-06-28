.class Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "MusicWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetOnDecodedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;->this$0:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$1;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;-><init>(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;)V

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;->this$0:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    invoke-static {v0}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->access$100(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->setAlbumArt(Landroid/graphics/Bitmap;)V

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;->this$0:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->access$202(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public preProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v1, :cond_0

    if-le v1, v2, :cond_0

    .line 216
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 217
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v4, p1, v5, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    .line 221
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1
    const/4 v1, 0x0

    .line 223
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method
