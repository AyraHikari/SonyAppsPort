.class Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$SaveArtistInfoTask;
.super Lcom/sonyericsson/music/metadata/SaveInfoTask;
.source "EditMusicInfoArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveArtistInfoTask"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V
    .locals 0

    .line 209
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/music/metadata/SaveInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V

    return-void
.end method


# virtual methods
.method public saveInfo(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;)Lcom/sonyericsson/music/metadata/EditMusicInfo;
    .locals 2

    .line 215
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveArtistData(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;)J

    move-result-wide p1

    long-to-int p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    return-object p4
.end method
