.class public final Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$PlaylistsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Playlists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/playlist"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final NOTIFY_PLAYLIST_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1244
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1247
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1251
    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
