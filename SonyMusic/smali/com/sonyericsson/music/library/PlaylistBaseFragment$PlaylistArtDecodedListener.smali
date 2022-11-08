.class public Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "PlaylistBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PlaylistBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PlaylistArtDecodedListener"
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

.field private final mArtImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecodeStartTime:J

.field private final mDefaultArtImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultImageResource:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 1

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    .line 264
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 265
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mArtImageView:Ljava/lang/ref/WeakReference;

    .line 266
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mDefaultArtImageView:Ljava/lang/ref/WeakReference;

    .line 267
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mDecodeStartTime:J

    .line 268
    iput p4, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mDefaultImageResource:I

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mArtImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mDefaultArtImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    .line 279
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mDefaultImageResource:I

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c3

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 282
    iget v4, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mDefaultImageResource:I

    sget-object v5, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->FIT:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    invoke-static {p1, v4, v0, v0, v5}, Lcom/sonyericsson/music/common/ScalingUtilities;->createScaledBitmap(Landroid/content/res/Resources;IIILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 287
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 288
    iget-wide v4, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$PlaylistArtDecodedListener;->mDecodeStartTime:J

    invoke-static {v4, v5}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->doCrossFade(J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 289
    invoke-static/range {v1 .. v6}, Lcom/sonyericsson/music/common/AnimationHelper;->crossFadeInFadeOut(Landroid/content/Context;Landroid/view/View;Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 292
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x4

    .line 293
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
