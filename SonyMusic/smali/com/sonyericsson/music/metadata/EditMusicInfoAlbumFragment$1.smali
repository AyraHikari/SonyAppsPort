.class Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$1;
.super Ljava/lang/Object;
.source "EditMusicInfoAlbumFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->setDefaultAlbumArt()V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1

    .line 51
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;

    iget-object p2, p2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;

    iget-object v0, p2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    iget-object p2, p2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mTempEmbeddedAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setHasRemovableAlbumArt(Z)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
