.class Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/AlbumsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field contextMenuIcon:Landroid/widget/ImageView;

.field contextMenuTouchArea:Landroid/widget/FrameLayout;

.field highResAudioIndicator:Landroid/widget/ImageView;

.field highResAudioIndicatorSpacing:Landroid/view/View;

.field private image:Landroid/view/View;

.field private final mIsImageView:Z

.field text1:Landroid/widget/TextView;

.field text2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->mIsImageView:Z

    return-void
.end method


# virtual methods
.method getArtDecoderListener(ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;ILandroid/content/Context;)Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;
    .locals 9

    .line 311
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->mIsImageView:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->image:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    .line 313
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;-><init>(Landroid/widget/ImageView;ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;ILandroid/content/Context;)V

    return-object v0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->image:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/music/ui/SquareImageView;

    .line 317
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;-><init>(Lcom/sonyericsson/music/ui/SquareImageView;ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;ILandroid/content/Context;)V

    return-object v0
.end method

.method getImageTag()Ljava/lang/Object;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->image:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->mIsImageView:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->image:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 337
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->image:Landroid/view/View;

    check-cast v0, Lcom/sonyericsson/music/ui/SquareImageView;

    .line 340
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method setImageTag(Ljava/lang/Object;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->image:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method setImageView(Landroid/view/View;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->image:Landroid/view/View;

    return-void
.end method
