.class Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$2;
.super Ljava/lang/Object;
.source "EditMusicInfoTrackFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->setValues(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;Landroid/content/Context;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$2;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$2;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    iget-object v1, v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mHeaderArtImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$2;->val$context:Landroid/content/Context;

    iget-object v0, v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 344
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v2, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getDefaultArtistArt(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
