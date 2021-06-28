.class Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$1;
.super Ljava/lang/Object;
.source "EditMusicInfoTrackFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setDefaultAlbumArt()V

    .line 73
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->disposeEmbeddedArt()V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1

    .line 62
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    invoke-virtual {p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->getAlbumImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    iget-object v0, p2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    if-eqz v0, :cond_0

    .line 64
    iget-object p2, p2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mTempEmbeddedAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setHasRemovableAlbumArt(Z)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->disposeEmbeddedArt()V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
