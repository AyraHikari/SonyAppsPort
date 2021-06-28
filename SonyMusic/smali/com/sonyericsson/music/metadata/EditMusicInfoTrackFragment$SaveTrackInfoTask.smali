.class Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment$SaveTrackInfoTask;
.super Lcom/sonyericsson/music/metadata/SaveInfoTask;
.source "EditMusicInfoTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveTrackInfoTask"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V
    .locals 0

    .line 494
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/music/metadata/SaveInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V

    return-void
.end method


# virtual methods
.method public saveInfo(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;)Lcom/sonyericsson/music/metadata/EditMusicInfo;
    .locals 4

    .line 500
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    .line 501
    invoke-static {p1, p2, p3, p4, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveTrackData(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, v2

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    cmp-long p1, p2, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p4, v1

    :goto_1
    return-object p4
.end method
