.class public final Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$GenresColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;
    }
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1353
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentUri()Landroid/net/Uri;
    .locals 2

    .line 1360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const-string v0, "external"

    .line 1361
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->getContentUriInternal(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1363
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1368
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->getContentUriInternal(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 1370
    :cond_0
    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2

    .line 1374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sonyericsson.music.musicinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/audio/media/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/genres"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 1378
    :cond_0
    invoke-static {p0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getContentUriInternal(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sonyericsson.music.musicinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/audio/genres"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
