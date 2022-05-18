.class public final Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AlbumColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Albums"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/albums"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "album_key"

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/album"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1430
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentUri()Landroid/net/Uri;
    .locals 2

    .line 1437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const-string v0, "external"

    .line 1438
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->getContentUriInternal(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1440
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1445
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->getContentUriInternal(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 1447
    :cond_0
    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Albums;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getContentUriInternal(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sonyericsson.music.musicinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/audio/albums"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
