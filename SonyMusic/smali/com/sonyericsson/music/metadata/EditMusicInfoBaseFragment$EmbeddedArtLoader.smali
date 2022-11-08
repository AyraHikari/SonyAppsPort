.class Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;
.super Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;
.source "EditMusicInfoBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmbeddedArtLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;)V
    .locals 0

    .line 832
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 833
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    return-void
.end method


# virtual methods
.method protected varargs doTaskInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    .line 838
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->hasEmbeddedAlbumArt()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 839
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 840
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;->getEmbeddedAlbumArt(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 842
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unknown album"

    goto :goto_0

    .line 843
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object p1

    .line 844
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/RetainedAsyncTask;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getDefaultAlbumArt(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doTaskInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 827
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$EmbeddedArtLoader;->doTaskInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
