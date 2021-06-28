.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "LandingPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistImageDecodedListener"
.end annotation


# instance fields
.field private final mArtistImageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/landingpage/LandingPageArtistView;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

.field private final mDefaultImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/common/ArtistInfo;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1235
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    .line 1236
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    .line 1237
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;->mArtistImageViewRef:Ljava/lang/ref/WeakReference;

    .line 1238
    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;->mDefaultImage:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1243
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;->mArtistImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    if-eqz v0, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 1247
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;->mDefaultImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->onBitmapLoaded(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1249
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->onBitmapLoaded(Landroid/graphics/Bitmap;Z)V

    :cond_1
    :goto_0
    return-void
.end method
