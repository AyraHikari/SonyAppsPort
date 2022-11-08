.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighResMedia"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$CallMethods;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Columns;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "high_res_media"

.field private static final SYNC_COMPLETED:Ljava/lang/String; = "sync_completed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllColumns()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    .line 744
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "source"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "source_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "path"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "date_added"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getContentSyncCompletedUri()Landroid/net/Uri;
    .locals 2

    const-string v0, "content://com.sonyericsson.music.musicinfo/"

    .line 689
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 690
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sync_completed"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 2

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sonyericsson.music.musicinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "high_res_media"

    return-object v0
.end method
