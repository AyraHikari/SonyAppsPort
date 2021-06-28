.class Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "ArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/artist/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtDecoderListener"
.end annotation


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtImageRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultArtImageRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .line 757
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    .line 758
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 759
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;->mArtImageRef:Ljava/lang/ref/WeakReference;

    .line 760
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;->mDefaultArtImageRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;->mArtImageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 767
    iget-object v2, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;->mDefaultArtImageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    .line 771
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, v7

    .line 772
    invoke-static/range {v1 .. v6}, Lcom/sonyericsson/music/common/AnimationHelper;->crossFadeInFadeOut(Landroid/content/Context;Landroid/view/View;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Animation$AnimationListener;)V

    .line 775
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 776
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 779
    :cond_0
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
