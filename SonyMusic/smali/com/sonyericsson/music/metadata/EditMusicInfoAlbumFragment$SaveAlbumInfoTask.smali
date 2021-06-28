.class Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$SaveAlbumInfoTask;
.super Lcom/sonyericsson/music/metadata/SaveInfoTask;
.source "EditMusicInfoAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAlbumInfoTask"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V
    .locals 0

    .line 287
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/music/metadata/SaveInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V

    return-void
.end method


# virtual methods
.method public saveInfo(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;)Lcom/sonyericsson/music/metadata/EditMusicInfo;
    .locals 3

    .line 293
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 294
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveAlbumData(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;)J

    move-result-wide p1

    .line 295
    invoke-virtual {p4, p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumId(J)V

    goto :goto_0

    :cond_0
    move-wide p1, v1

    :goto_0
    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    return-object p4
.end method
